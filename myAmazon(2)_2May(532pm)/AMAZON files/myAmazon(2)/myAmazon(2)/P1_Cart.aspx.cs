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
    public partial class P1_Cart : System.Web.UI.Page
    {
        private static readonly string conn =
            System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon5"].ConnectionString;
        
        string sourcePageProdID;
        public bool clicked = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                // Load_Grid();
                load_prod();
            }
           

        }
        //public void Load_Grid()
        //{
        //    Cart_Label.Text = "Most welcome Mr./Mrs--" + Session["userid"].ToString();
        //    Cart_Label.Text = "Your BUCKET LIST is";
        //    myDAL objMyDal = new myDAL();
        //    DataSet ds = new DataSet();
        //    int ans = objMyDal.GetAllBucketListOfUser_DAL(ref ds);
        //    if (ans == 1)
        //    {

        //        cartgrid.DataSource = ds;
        //        cartgrid.DataBind();
        //    }
        //}

        public List<Products> prod_list = new List<Products>();
        
        protected void load_prod()
        {
             
           SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd;

            string id = Session["userid"].ToString();
            cmd = new SqlCommand("Show_BucketListOfPerson", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@uid", SqlDbType.VarChar, 30);
            cmd.Parameters["@uid"].Value = id;
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
               while( reader.Read())
                {
                    //Session["P_maker"] = reader["maker"].ToString();
                    //Session["P_quantity"] = reader["Quantity"].ToString();
                    //Session["P_item"] = reader["Item"].ToString();
                    //Session["P_size"] = reader["Size"].ToString();
                    //Session["P_details"] = reader["Details"].ToString();
                    //Session["P_category"] = reader["Category"].ToString();
                    // Products object has no product desciription property
                    prod_list.Add( new Products(reader["id"].ToString(), reader["name"].ToString(), reader["price"].ToString(), reader["pic"].ToString()));

                }
            }


            con.Close();
        }

        //protected void Remove_from_bucket_click(object sender, EventArgs e)
        //{

        //    Button button = sender as Button;
       
        //    SqlConnection con = new SqlConnection(conn);
        //    con.Open();
        //    SqlCommand cmd;
            

        //    cmd = new SqlCommand("RemoveFromBucketList", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.Add("@pid", SqlDbType.VarChar).Value =button.Text.ToString(); 
        //    string id = Session["userid"].ToString();
        //    cmd.Parameters.Add("@userid", SqlDbType.VarChar).Value = id;
        //    cmd.ExecuteNonQuery();
        //    load_prod();
        //    con.Close();
     

        //}
    }
}