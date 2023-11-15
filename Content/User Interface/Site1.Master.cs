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
                    _Profile.Text = "Hello " + Session["Username"].ToString();
                    link_logIn.Visible = false;
                    courses.Visible = false;
                    Pricing.Visible = false;
                    About.Visible = false;

                }
                else
                if (Session["User"] == "Admin")
                {
                    Response.Redirect("Error 404.aspx");
                }
            }
            catch (Exception ex)
            {
                Session["error"] = ex.Message;
                Response.Redirect("Error 404.aspx");
            }
        }
    }
}