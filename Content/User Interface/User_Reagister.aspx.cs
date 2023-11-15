using BizWiz.Content.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizWiz.Content.User_Interface
{
    public partial class User_Reagister : System.Web.UI.Page
    {
        DataBase db = new DataBase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            using (db.mySqlConn())
            {

                db.sqlQueries("INSERT INTO [dbo].[Students]VALUES('"+floatingInput.Text+"','"+floatinglast.Text+"','"+floatingUser.Text+"','"+floatingEmail.Text+"','"+floatingPassword.Text+"')");
                db.nonQuery();

                Response.Redirect("User_LogIn.aspx");

            }
        }
    }
}