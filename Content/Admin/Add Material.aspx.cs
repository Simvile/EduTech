using BizWiz.Content.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizWiz.Content.Admin
{
    public partial class Add_Material : System.Web.UI.Page
    {
        DataBase db = new DataBase();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CourseCode();
            }
           
        }


        public static string getReference()
        {
            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

            var stringChars = new char[8];
            var random = new Random();

            for (int i = 0; i < stringChars.Length; i++)
            {
                stringChars[i] = chars[random.Next(chars.Length)];
            }

            var finalString = new String(stringChars);

            return finalString;
        }


        private DataTable dosageData;
        private string query = "SELECT * FROM [dbo].[Courses]";


        private DataTable GetDropdownData(string query)
        {
            using (db.mySqlConn())
            {
                db.mySqlConn();
                return db.GetData(query);
            }
        }

        private void CourseCode()
        {
            using (db.mySqlConn())
            {
                db.ReadData("SELECT * FROM [dbo].[Courses] WHERE [Course Name] = '" + DropDownList2.Text.Trim() + "'");

                if (db.rd.HasRows)
                {
                    while (db.rd.Read())
                    {
                        Session["Code"] = db.rd.GetValue(0).ToString();
                        Session["Name"] = db.rd.GetValue(1).ToString();
                    }
                }
            }
        }

        protected void BtnAddPaper_Click(object sender, EventArgs e)
        {
            try
            {
               
                if (FileDocuments.HasFiles)
                {

                    HttpFileCollection files = Request.Files;
                    for (int i = 0; i < files.Count; i++)
                    {
                        HttpPostedFile file = files[i];

                        string fileName = Path.GetFileName(file.FileName);
                        string filePath = Server.MapPath("../Resources/Uploads/Files/Documents/" + fileName);

                        // Save the file
                        file.SaveAs(filePath);


                        string videoUrls = Videos.Text;
                        string Qpapers = questions.Text;

                        using (db.mySqlConn())
                        {


                            // Add support for multiple video URLs (assuming they are separated by a comma)
                            string[] videoUrlArray = videoUrls.Split(',');
                            string videoUrlToAdd = (i < videoUrlArray.Length) ? videoUrlArray[i] : "";

                            // Add support for multiple video URLs (assuming they are separated by a comma)
                            string[] paperUrlArray = Qpapers.Split(',');
                            string QpaperUrlToAdd = (i < paperUrlArray.Length) ? paperUrlArray[i] : "";

                            CourseCode();
                            string query = "INSERT INTO [dbo].[Course_Material]([Ref],[Course Code],[Course Name],[Introduction],[videos],[documents], [QuestionPapers])VALUES('" + getReference() + "','" + Session["Code"] + "','" + Session["Name"] + "','" + txtAreaDescr.Text + "','" + videoUrlToAdd + "', '" + filePath + "', '" + QpaperUrlToAdd + "')";
                            db.sqlQueries(query);
                            db.nonQuery();

                            MessageIntro.Text = "Succefully uploaded file " + FileDocuments.FileName + Session["Code"];
                            MessageIntro.ForeColor = System.Drawing.Color.Green;
                            FileDocuments.BorderColor = System.Drawing.Color.LightGray;
                            MessageIntro.Visible = true;

                        }
                    }


                }
                else
                {
                    FileDocuments.BorderColor = System.Drawing.Color.Red;
                    MessageIntro.Text = "Error no document selected!!";
                    MessageIntro.ForeColor = System.Drawing.Color.Red;
                    MessageIntro.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message + " " + "The data was not saved!!" + Session["Code"]);
            }
        }
    }
}