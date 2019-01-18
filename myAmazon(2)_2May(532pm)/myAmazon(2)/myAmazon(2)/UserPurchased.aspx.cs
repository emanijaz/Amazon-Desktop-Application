using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using myAmazon_2_.DAL;
using myAmazon_2_.Model;

namespace myAmazon_2_
{
    public partial class UserPurchased : System.Web.UI.Page
    {

        private static readonly string conn =
            System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon5"].ConnectionString;
        public Products myProd;
        protected void Page_Load(object sender, EventArgs e)
        {
            //     //P_Label.Text = "Most welcome Mr./Mrs--" + Session["userid"].ToString();
            //     P_Label.Text = "Your Purchased Items are";
            //     myDAL objMyDal = new myDAL();
            //     DataSet ds = new DataSet();
            //     int ans=  objMyDal.GetAllPurchasedItemOfUSer_DAL(ref ds);
            //     if(ans == 1)
            //     {
            ////         PurGrid.DataSource = ds;
            ////         PurGrid.DataBind();
            //     }
            if (!IsPostBack)
            {
                // Load_Grid();
                load_prod();
            }

        }
        public List<Products> prod_list = new List<Products>();
        protected void load_prod()
        {

            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd;

            string id = Session["userid"].ToString();
            cmd = new SqlCommand("ShowPurchasedOfPerson", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@userId ", SqlDbType.VarChar, 30);
            cmd.Parameters["@userId "].Value = id;
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    //Session["P_maker"] = reader["maker"].ToString();
                    //Session["P_quantity"] = reader["Quantity"].ToString();
                    //Session["P_item"] = reader["Item"].ToString();
                    //Session["P_size"] = reader["Size"].ToString();
                    //Session["P_details"] = reader["Details"].ToString();
                    //Session["P_category"] = reader["Category"].ToString();
                    // Products object has no product desciription property
                    prod_list.Add(new Products(reader["id"].ToString(), reader["name"].ToString(), reader["price"].ToString(), reader["pic"].ToString()));

                }
            }


            con.Close();
        }


    }
}