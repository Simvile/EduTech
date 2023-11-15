using BizWiz.Content.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizWiz.Content.User_Interface
{
    public partial class Course_Listing : System.Web.UI.Page
    {
        DataBase db = new DataBase();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["User"] == "Student")
                {
                    getDate();
                }
                else
                {
                    Response.Redirect("Error 404.aspx");
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void BtnEnroll_Click(object sender, EventArgs e)
        {
            try
            {
                using (db.mySqlConn())
                {
                    db.sqlQueries("SELECT * FROM [dbo].[Enrollment] WHERE Student = '" + Session["UserID"] + "' AND [Course Code] = '" + Session["Course Code"] + "'");
                    using (SqlDataReader reader = db.cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
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
                Session["error"] = ex.Message;
                Response.Write(ex.Message);
                //Response.Redirect("Error 404.aspx");
            }
        }

        private void getDate()
        {
            try
            {
                using (db.mySqlConn())
                {
                    db.sqlQueries("SELECT * FROM [dbo].[Courses]");
                    using (SqlDataReader reader = db.cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            DataTable dataTable = new DataTable();
                            dataTable.Load(reader);

                            Session["Course Code"] = dataTable.Rows[1]["Course Code"].ToString();
                            Session["Course Price"] = dataTable.Rows[1]["Pricing"].ToString();

                            DataList1.DataSource = dataTable;
                            DataList1.DataBind();
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        //protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        //{
        //    if (e.CommandName == "Select")
        //    {
        //        // Get the index of the selected item
        //        int selectedIndex = e.Item.ItemIndex;

        //        // Retrieve the data from the DataTable based on the selected index
        //        DataTable dataTable = ((DataTable)DataList1.DataSource);
        //        DataRow selectedRow = dataTable.Rows[selectedIndex];

        //        // Set sessions based on the data in the selected row
        //        Session["Course Code"] = selectedRow["Course Code"].ToString();
        //        Session["Course Price"] = selectedRow["Pricing"].ToString();
        //    }
        //}
    }
}