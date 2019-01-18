using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using myAmazon_2_.Model;
using System.Data.SqlClient;
using System.Data;

namespace myAmazon_2_
{
    public partial class myAmazon : System.Web.UI.Page
    {
        private static readonly string connString =
               System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon5"].ConnectionString;

        //  helper db = new helper();

        public List<Products> prod_list = new List<Products>();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Session["userid"] = null;
            load_prod();
        }

        void load_prod()
        {
            //db.Connection.Open();

            SqlConnection con = new SqlConnection(connString);
            //query
            con.Open();

            string query = "select ID, Name, Price, Pic from Products";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    prod_list.Add(new Products(reader["id"].ToString(), reader["name"].ToString(), reader["price"].ToString(), reader["pic"].ToString()));
                }
            }

            con.Close();
            // db.Connection.Close();
        }
    }
}