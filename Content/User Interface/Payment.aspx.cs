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
    public partial class Payment : System.Web.UI.Page
    {
        DataBase db = new DataBase();
        protected void Page_Load(object sender, EventArgs e)
        {
                //address.Text = Session["UserID"].ToString();

            if (IsPostBack)
            {
                ValidateForm();
            }
        }

        private void ValidateForm()
        {
            ChangeBorderColorIfEmpty(address);
            ChangeBorderColorIfEmpty(address2);
            ChangeBorderColorIfEmpty(country);
            ChangeBorderColorIfEmpty(City);
            ChangeBorderColorIfEmpty(zip);
            ChangeBorderColorIfEmpty(cc_name);
            ChangeBorderColorIfEmpty(cc_expiration);
            ChangeBorderColorIfEmpty(cc_number);
            ChangeBorderColorIfEmpty(cc_cvv);
            
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (address.Text == "" || address2.Text == "" || zip.Text == "" || cc_name.Text == "" || cc_number.Text == "" || cc_expiration.Text == "" || cc_cvv.Text == "")
                {
                    ValidateForm();
                }
                else
                {
                    using (db.mySqlConn())
                    {
                        db.sqlQueries("INSERT INTO [dbo].[Enrollment] VALUES('" + getReference() + "','" + Session["UserID"] + "','" + Session["Course Code"] + "','" + DateTime.Now + "')");

                        db.sqlQueries("INSERT INTO [dbo].[Payment] VALUES('"+getReference()+"','"+ Session["UserID"] + "','"+ Session["Course Code"] + "','"+ Session["Course Price"] + "','"+ DateTime.Now +"')");
                        db.nonQuery();

                        Response.Redirect("Course_Layout.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                Session["error"] = ex.Message;
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

        protected void btnConfirmPayment_Click(object sender, EventArgs e)
        {

        }
    }
}