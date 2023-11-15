using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BizWiz.Content.Classes;

namespace BizWiz.Content.User_Interface
{
    public partial class WebForm1 : System.Web.UI.Page
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
                Response.Write(ex.Message);
            }
        }

        private void getDate()
        {
            try
            {
                using (db.mySqlConn())
                {
                    db.sqlQueries("SELECT * FROM [dbo].[Course_Material] WHERE [Course Code] = '"+ Session["Course Code"] + "' ");
                    using (SqlDataReader reader = db.cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            DataTable dataTable = new DataTable();
                            dataTable.Load(reader);

                            //Session["Course Code"] = dataTable.Rows[0]["Course Code"];
                            //Session["Course Price"] = dataTable.Rows[0]["Pricing"];

                            DataList1.DataSource = dataTable;
                            DataList1.DataBind();

                            DataList2.DataSource = dataTable;
                            DataList2.DataBind();

                            DataList3.DataSource = dataTable;
                            DataList3.DataBind();
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }



    }
}