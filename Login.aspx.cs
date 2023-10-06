using MySql.Data.MySqlClient;
using System;

namespace BootstrapForm__CRUDOP
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT COUNT(*) FROM Users WHERE Username=@Username AND Password=@Password";
                using (MySqlCommand cmd = new MySqlCommand(query, connection))
                {
                    cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
                    int count = Convert.ToInt32(cmd.ExecuteScalar());
                    if (count > 0)
                    {
                        Session["Name"] = TextBox1.Text;
                        Response.Redirect("Welcome.aspx");
                    }
                    else
                    {
                        Label2.Text = "Invalid login credentials. Please try again.";
                    }
                }
            }
        }
    }
}
