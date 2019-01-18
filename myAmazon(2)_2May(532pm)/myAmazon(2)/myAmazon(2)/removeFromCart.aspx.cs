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

    
    public partial class removeFromCart : System.Web.UI.Page
    {
        private static readonly string conn =
           System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon5"].ConnectionString;
        string sourcePageProdID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null)
            {
                Server.Transfer("myAmazon.aspx", true);
            }
            sourcePageProdID = Request.QueryString["prod_id"];
            remove_prod(sourcePageProdID);
        }
        protected void remove_prod(string pid)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd;


            cmd = new SqlCommand("RemoveFromBucketList", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@pid", SqlDbType.VarChar).Value = pid;
            string id = Session["userid"].ToString();
            cmd.Parameters.Add("@userid", SqlDbType.VarChar).Value = id;
            cmd.ExecuteNonQuery();
            
            con.Close();
            Server.Transfer("P1_Cart.aspx", true);
        }
    }
}