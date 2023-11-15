using BizWiz.Content.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizWiz.Content.User_Interface
{
    public partial class User_LogIn : System.Web.UI.Page
    {
        DataBase db = new DataBase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            using (db.mySqlConn())
            {
                db.sqlQueries("SELECT * FROM [dbo].[Students] WHERE Email = '"+floatingInput.Text+"' AND Password = '"+floatingPassword.Text+"'");
                db.mySqlConn();
                using (SqlDataReader reader = db.cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        if (reader.HasRows)
                        {
                            Session["Username"] = reader["Username"].ToString();
                            Session["UserID"] = reader["ID"].ToString();
                            Session["User"] = "Student";
                            Response.Redirect("Course Listing.aspx");
                        }
                    }
                }

            }
        }
    }
}