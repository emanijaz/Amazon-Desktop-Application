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
    public partial class product_detail1 : System.Web.UI.Page
    {
        private static readonly string conn =
              System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon5"].ConnectionString;
        public Products myProd;
        string sourcePageProdID;
        protected void Page_Load(object sender, EventArgs e)
        {
            sourcePageProdID = Request.QueryString["prod_id"];
            load_prod();

        }

        protected void load_prod()
        {

            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd;


            cmd = new SqlCommand("GetProductByID", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@pid", SqlDbType.VarChar).Value = sourcePageProdID;
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                reader.Read();
                Session["P_maker"] = reader["maker"].ToString();
                Session["P_quantity"] = reader["Quantity"].ToString();
                Session["P_item"] = reader["Item"].ToString();
                Session["P_details"] = reader["Details"].ToString();
                Session["P_category"] = reader["Category"].ToString();
                // Products object has no product desciription property
                myProd = new Products(reader["id"].ToString(), reader["name"].ToString(), reader["price"].ToString(), reader["pic"].ToString());
    }
               
 
            con.Close();
        }
        protected void P1_Cart_Click(object sender, EventArgs e)
        {
            Server.Transfer("P1_Cart.aspx", true);
        }
        
    }
}