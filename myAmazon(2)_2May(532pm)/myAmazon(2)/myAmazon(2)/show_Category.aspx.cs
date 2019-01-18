using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using myAmazon_2_.Model;
using System.Data;
using System.Data.SqlClient;

namespace myAmazon_2_
{
    public partial class show_Category : System.Web.UI.Page
    {

        private static readonly string connString =
               System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon5"].ConnectionString;
        string sourcePageCatName;
        public List<Products> prod_list = new List<Products>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                sourcePageCatName = Request.QueryString["cat"];
                load_prod();
            }

        }
        void load_prod()
        {
            

            SqlConnection con = new SqlConnection(connString);
            //query
            con.Open();

            SqlCommand cmd;

            cmd = new SqlCommand("GetProductsByCategory", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@category", SqlDbType.VarChar).Value = sourcePageCatName;
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    prod_list.Add(new Products(reader["id"].ToString(), reader["name"].ToString(), reader["price"].ToString(), reader["pic"].ToString()));
                }
            }

            con.Close();
          
        }

    }
}