using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Web.UI.WebControls;

namespace BootstrapForm__CRUDOP
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData(); // Call the method to bind data
            }
        }

        private void BindData()
        {
            DataTable dt = GetUserDataFromStoredProcedure(); // Fetch data using stored procedure

            if (dt != null && dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        private DataTable GetUserDataFromStoredProcedure()
        {
            DataTable dt = new DataTable();

            using (MySqlConnection connection = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString))
            {
                using (MySqlCommand command = new MySqlCommand("GetUserData", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    connection.Open();
                    using (MySqlDataAdapter adapter = new MySqlDataAdapter(command))
                    {
                        adapter.Fill(dt);
                    }
                }
            }

            return dt;
        }

        protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "UpdateRow")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("Update.aspx?ID=" + id);
            }
            else if (e.CommandName == "DeleteRow")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                using (MySqlConnection connection = new MySqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString))
                {
                    using (MySqlCommand command = new MySqlCommand("DeleteUser", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@UserId", id);

                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();
                        connection.Close();

                        if (rowsAffected > 0)
                        {
                            lblMessage.Text = "Record deleted successfully.";
                        }
                        else
                        {
                            lblMessage.Text = "Failed to delete record.";
                        }
                    }
                }

                // Reload data after delete
                BindData();
            }
        }
    }
}
