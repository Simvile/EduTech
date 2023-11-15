using BizWiz.Content.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BizWiz.Content.Admin
{
    public partial class Add_Courses : System.Web.UI.Page
    {
        DataBase db = new DataBase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            try
            {
                using (db.mySqlConn())
                {

                    if (pastPaper.HasFiles)
                    {
                        pastPaper.SaveAs(Server.MapPath("../Resources/Uploads/Course_Images/" + pastPaper.FileName));
                        string fileLocation_Image = "../Resources/Uploads/Course_Images/" + pastPaper.FileName;


                        db.sqlQueries("INSERT INTO [dbo].[Courses] VALUES('"+courseName.Text+"','"+descript.Text+"','"+txtPrice.Text.Trim()+"','"+courseCode.SelectedValue.Trim()+"','"+fileLocation_Image.Trim()+"')");
                        db.nonQuery();

                        MessageImage.Text = "Succefully added course " + courseName.Text;
                        MessageImage.ForeColor = System.Drawing.Color.Green;
                        pastPaper.BorderColor = System.Drawing.Color.LightGray;
                        MessageImage.Visible = true;
                    }
                    else
                    {
                        pastPaper.BorderColor = System.Drawing.Color.Red;
                        MessageImage.Text = "Error no document selected!!";
                        MessageImage.ForeColor = System.Drawing.Color.Red;
                        MessageImage.Visible = true;
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }


    }
}