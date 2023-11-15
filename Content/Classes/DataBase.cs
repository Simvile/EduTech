using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BizWiz.Content.Classes
{

    internal class DataBase
    {
        private SqlConnection con;
        public SqlCommand cmd;
        public SqlDataReader rd;
        public DataTable dt;
        public DataSet ds;
        public DataBase()
        {

        }

        private string connectionstr = "Data Source = SQL5101.site4now.net; Initial Catalog = db_aa15d9_edutechdb; User Id = db_aa15d9_edutechdb_admin; Password = 0987@_Six%54";
        public SqlConnection mySqlConn()
        {

            con = new SqlConnection(connectionstr);
            con.Open();
            return con;
        }

        public SqlCommand sqlQueries(string query)
        {
            mySqlConn();
            cmd = new SqlCommand(query, con);
            return cmd;
        }

        public void nonQuery()
        {
            cmd.ExecuteNonQuery();
            con.Close();
        }


        // A method to retrieve data 
        public DataTable GetData(string query)
        {
            mySqlConn();
            cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }
    }
}