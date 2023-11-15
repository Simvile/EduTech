using BizWiz.Content.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;
using Label = System.Web.UI.WebControls.Label;

namespace BizWiz.Content.User_Interface
{
    public partial class Course_Listing : System.Web.UI.Page
    {
        private readonly DataBase db = new DataBase();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getAllData();
            }
        }

        protected void BtnEnroll_Click(object sender, EventArgs e)
        {
            try
            {
                Button btnEnroll = (Button)sender;
                DataListItem item = (DataListItem)btnEnroll.NamingContainer;


                Label label1 = (Label)item.FindControl("Label1");

                if (label1 != null)
                {
                    Session["Name"] = label1.Text;
                    getDate(Session["Name"].ToString());
                    using (db.mySqlConn())
                    {
                        db.ReadData("SELECT * FROM [dbo].[Enrollment] WHERE Student = '" + Session["UserID"] + "' AND [Course Code] = '" + Session["Course Code"] + "'");
                        if (db.rd.HasRows)
                        {
                            Response.Redirect("Course_Layout.aspx");
                        }
                        else
                        {
                            Response.Redirect("Payment.aspx");
                        }

                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        private void getDate(string name)
        {
            try
            {
                using (db.mySqlConn())
                {
                    db.ReadData("SELECT * FROM [dbo].[Courses] WHERE [Course Name] = '"+name+"'");
                    if (db.rd.HasRows)
                    {
                        while (db.rd.Read())
                        {
                            Session["Course Code"] = db.rd.GetValue(0);
                            Session["Course Price"] = db.rd.GetValue(3);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("Error 404.aspx");
            }
        }

        private void getAllData()
        {
            try
            {
                using (db.mySqlConn())
                {
                    db.ReadData("SELECT * FROM [dbo].[Courses] ");
                    DataList1.DataSource = db.rd;
                    DataList1.DataBind();
                }
            }
            catch
            {
                Response.Redirect("Error 404.aspx");
            }
        }
    }
}