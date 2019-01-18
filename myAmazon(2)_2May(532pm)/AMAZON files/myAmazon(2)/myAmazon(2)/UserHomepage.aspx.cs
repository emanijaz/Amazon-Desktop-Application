using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using myAmazon_2_.Model;
using myAmazon_2_.DAL;

namespace myAmazon_2_
{
    public partial class UserHomepage : System.Web.UI.Page
    {
        private static readonly string connString =
               System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon5"].ConnectionString;

        public List<Products> prod_list = new List<Products>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null)
            {
                Server.Transfer("myAmazon.aspx", true);
            }

            load_prod();


            //  Response.Write("Welcome to your Homepage, "+ Session["userid"].ToString());
            // Label1.Text = "Welcome to your Homepage " + Session["userid"].ToString() + "!"; 
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("userid");
            Server.Transfer("myAmazon.aspx", true);
            // Response.Redirect("~/Default.aspx");
        }

        protected void ButtonPurchase_Click(object sender, EventArgs e)
        {
            Server.Transfer("UserPurchased.aspx", true);
        }
        //protected void P_detail_Click1(object sender, EventArgs e)
        //{
        //    Server.Transfer("product_detail1.aspx", true);
        //}

    }
}