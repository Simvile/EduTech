using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BizWiz.Content.Classes;
using System.Net;

namespace BizWiz.Content.User_Interface
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataBase db = new DataBase();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(!IsPostBack)
                {
                    txtCode.Text = Session["Course Code"].ToString();
                }

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

          
private void ValidateForm()
{
    ChangeBorderColorIfEmpty(txtDate);
    ChangeBorderColorIfEmpty(txtTime);
}

private void ChangeBorderColorIfEmpty(TextBox textBox)
{
    if (string.IsNullOrWhiteSpace(textBox.Text))
    {
        // Set the border color to red
        textBox.Attributes.Add("style", "border-color: red;");
    }
    else
    {
        // Reset the border color to the default
        textBox.Attributes.Remove("style");
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


                            DataList1.DataSource = dataTable;
                            DataList1.DataBind();

                            DataList2.DataSource = dataTable;
                            DataList2.DataBind();

                            DataList3.DataSource = dataTable;
                            DataList3.DataBind();

                            DataList4.DataSource = dataTable;
                            DataList4.DataBind();
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if(txtDate.Text == "" || txtTime.Text == "")
                {
                    ValidateForm();
                }
                else
                {
                    lblVerify.Text = "Confirm your booking. Enter the code sent to your email!!";
                    lblVerify.Visible = true;
                    lblVerify.ForeColor = System.Drawing.Color.Green;

                    emailedCode.Visible = true;
                    Button1.Visible = false;
                }
            }
            catch
            {

            }
        }

        protected void emailedCode_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if (emailedCode.Text == "25575")
                {

                    using (db.mySqlConn())
                    {
                        db.sqlQueries("INSERT INTO [dbo].[Booking] VALUES('"+getReference()+"', '" + Session["UserID"] + "', '"+ Session["Course Code"] + "', '"+DropVenue.SelectedItem+"', '"+txtDate.Text+"', '"+txtTime.Text+"', 'Pending')");
                        db.nonQuery();

                        lblMessage.Visible = true;
                        lblMessage.Text = "You have successfully booked for your Test! details have been sent to your email.";
                        lblMessage.ForeColor = System.Drawing.Color.Green;

                        lblVerify.Visible = false;
                        emailedCode.Visible= false;
                    }
                }
                else
                {
                    lblMessage.Visible = true;
                    lblMessage.Text = "Error! Please enter the correct Code";
                    lblMessage.ForeColor = System.Drawing.Color.Red;

                    lblVerify.Visible = false;
                }
            }
            catch(Exception ex) 
            {
                Response.Write(ex.Message);
            }
        }
    }
}