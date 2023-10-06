using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BootstrapForm__CRUDOP
{
    public partial class Welcome : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
            {
                if (Session["Name"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    string username = Session["Name"].ToString();
                    // You can use 'username' in any way you want, like displaying a welcome message.
                }
            }

            protected void btnLogout_Click(object sender, EventArgs e)
            {
                Session.Clear(); // Clear session data
                Response.Redirect("Login.aspx"); // Redirect to login page
            }
        }
    
}