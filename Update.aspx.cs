using System;
using System.Data;
using System.Data.SqlClient;

namespace BootstrapForm__CRUDOP
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string newName = txtName.Text;
            string newUsername = txtUsername.Text;
            string newPassword = txtPassword.Text; // Add this line to get the new password
            string newEmail = txtEmail.Text;

            int recordID = int.Parse(Request.QueryString["ID"]);

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand("UpdateUser", connection)) // Assuming your update procedure is named UpdateUser
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@ID", recordID);
                    command.Parameters.AddWithValue("@Name", newName);
                    command.Parameters.AddWithValue("@Username", newUsername);
                    command.Parameters.AddWithValue("@Password", newPassword); // Add this line for password
                    command.Parameters.AddWithValue("@Email", newEmail);

                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    connection.Close();

                    if (rowsAffected > 0)
                    {
                        lblMessage.Text = "Record updated successfully.";
                    }
                    else
                    {
                        lblMessage.Text = "Failed to update record.";
                    }
                }
            }
        }
    }
}
