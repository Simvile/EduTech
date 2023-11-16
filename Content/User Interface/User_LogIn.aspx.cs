using BizWiz.Content.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
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
            if (!IsPostBack)
            {
                ValidateForm();
            }
        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            try
            {
                if (floatingInput.Text == "" || floatingPassword.Text == "")
                {
                    Validate();
                }
                else
                {
                    switch (DropUser.SelectedItem.Text)
                    {
                        case "Select User":
                            DropUser.BorderColor = System.Drawing.Color.Red;
                            break;
                        case "Administrator":
                            GetUser("SELECT * FROM [dbo].[Administrator] WHERE Email = '" + floatingInput.Text + "' AND Password = '" + floatingPassword.Text + "'", "Admin", "../Admin/Dashboard.aspx");
                            break;
                        case "Student":
                            GetUser("SELECT * FROM [dbo].[Students] WHERE Email = '" + floatingInput.Text + "' AND Password = '" + floatingPassword.Text + "'", "Student", "Course Listing.aspx");
                            break;
                    }
                }
            }
            catch(Exception ex) 
            {
                Response.Write(ex.Message);
            }
        }

        private void GetUser(string query, string user, string next)
        {
            using (db.mySqlConn())
            {
                db.sqlQueries(query);
                db.mySqlConn();
                using (SqlDataReader reader = db.cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        if (reader.HasRows)
                        {
                            //Session["Username"] = reader["Username"].ToString();
                            Session["UserID"] = reader["ID"].ToString();
                            Session["User"] = user;
                            Response.Redirect(next);
                        }
                    }
                }

            }
        }

        private void ValidateForm()
        {
            ChangeBorderColorIfEmpty(floatingPassword);
            ChangeBorderColorIfEmpty(floatingInput);

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
    }
}