using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using myAmazon_2_.DAL;
using System.Configuration;
using myAmazon_2_.Model;

namespace myAmazon_2_
{
    public partial class AddToCart : System.Web.UI.Page
    {
        private static readonly string conn =
           System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon5"].ConnectionString;
        string sourcePageProdID;
        protected void Page_Load(object sender, EventArgs e)
        {
            sourcePageProdID = Request.QueryString["prod_id"];
            add_prod(sourcePageProdID);
        }
        protected void add_prod(string pid)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd;


            cmd = new SqlCommand("ADD_To_Bucket", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@PID", SqlDbType.VarChar).Value = pid;
            string id = Session["userid"].ToString();
            cmd.Parameters.Add("@UID", SqlDbType.VarChar).Value = id;
            cmd.ExecuteNonQuery();
            
            con.Close();
            Server.Transfer("P1_Cart.aspx", true);
        }
    }
}