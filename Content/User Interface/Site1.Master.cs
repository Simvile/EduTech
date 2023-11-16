using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizWiz.Content.User_Interface
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                if (Session["User"] == "Student")
                {
                    _Profile.Visible = true;
                    _Profile.Text = "Welcome Back";
                    link_logIn.Visible = false;
                    courses.Visible = false;
                    btnLogout.Visible = true;
                    About.Visible = false;

                }
                else
                if (Session["User"] == "Administrator")
                {
                    Response.Redirect("../Admin/Dashboard.aspx");
                }
            }
            catch (Exception ex)
            {
                Session["error"] = ex.Message;
                Response.Redirect("Error 404.aspx");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            try
            {
                Session.Clear();
                Response.Redirect("Landing.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}