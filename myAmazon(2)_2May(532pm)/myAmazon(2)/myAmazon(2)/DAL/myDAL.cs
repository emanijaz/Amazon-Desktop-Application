using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace myAmazon_2_.DAL
{
    public class myDAL:Page
    {

        private static readonly string connString =
               System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon5"].ConnectionString;

        //Login function

        //Input: Name: StudentName which is to be searched
        //Input DataTable passed by refence and result will be return in this table.
        //Return int: 1 if successful 0 if error.

        public int Log_In_DAL(string uid, string pass)
        {

           int Found = 1;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
      
            
                cmd = new SqlCommand("LogInAmazon ", con); //name of your SQL procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@userid", SqlDbType.VarChar, 30); //input of SQL stored procedure
                cmd.Parameters.Add("@pass", SqlDbType.VarChar, 40); //input of SQL stored procedure
                cmd.Parameters.Add("@out", SqlDbType.Int).Direction = ParameterDirection.Output; //input of SQL stored procedure
                                                                // set SQL procedure parameter values
            cmd.Parameters["@userid"].Value = uid;
            cmd.Parameters["@pass"].Value = pass;

            cmd.ExecuteNonQuery(); //executre the cmd query

                Found = Convert.ToInt32(cmd.Parameters["@out"].Value);

                con.Close(); //close SQL connection

            return Found; 
        }

        public int checkUserId(string u)
        {
            int returnValue = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;

            cmd = new SqlCommand("userSignUpCheck", con); //name of your SQL procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@UId", SqlDbType.VarChar, 30);

            SqlParameter outPutParameter = new SqlParameter();
            outPutParameter.ParameterName = "@flag";
            outPutParameter.SqlDbType = System.Data.SqlDbType.Int;
            outPutParameter.Direction = System.Data.ParameterDirection.Output;
            cmd.Parameters.Add(outPutParameter);


            // asigning value to sql parameters
            cmd.Parameters["@UId"].Value = u;

            cmd.ExecuteNonQuery(); //executre the cmd query

            returnValue = (int)outPutParameter.Value;

            con.Close();
            return returnValue;
        }

        public int Signup_DAL(string uid, string fn, string ln, string mail, string ph, string gen, string cont, string cit, string adr, string ps )
        {

            int Found;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;

            cmd = new SqlCommand("SignUp", con); //name of your SQL procedure
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@UID", SqlDbType.VarChar, 30); //input of SQL stored procedure
                                                               //   cmd.Parameters.Add("@snum", SqlDbType.Int,1); //input of SQL stored procedure
            cmd.Parameters.Add("@Fname", SqlDbType.VarChar, 15);
            cmd.Parameters.Add("@Lname", SqlDbType.VarChar, 20);
            cmd.Parameters.Add("@Email", SqlDbType.VarChar, 64);
            cmd.Parameters.Add("@Password", SqlDbType.VarChar, 40);
            cmd.Parameters.Add("@Homepage", SqlDbType.VarChar, 150);
            cmd.Parameters.Add("@Gender", SqlDbType.Char);
         //   cmd.Parameters.Add("@Bdate", SqlDbType.Date);
            cmd.Parameters.Add("@Phone", SqlDbType.VarChar, 15);
            cmd.Parameters.Add("@City", SqlDbType.VarChar, 30);
            cmd.Parameters.Add("@Country", SqlDbType.VarChar, 40);
            cmd.Parameters.Add("@Adrs", SqlDbType.VarChar, 60);
            cmd.Parameters.Add("@DP", SqlDbType.VarChar, 150);
            cmd.Parameters.Add("@succes", SqlDbType.Int).Direction = ParameterDirection.Output; ;
            
            // set SQL procedure parameter values
            // to do::: add values
            cmd.Parameters["@UID"].Value = uid;
            cmd.Parameters["@Fname"].Value = fn;
            cmd.Parameters["@Lname"].Value = ln;
            cmd.Parameters["@Email"].Value = mail;
            cmd.Parameters["@Password"].Value = ps;
            cmd.Parameters["@Homepage"].Value = "Home.aspx";
            cmd.Parameters["@Gender"].Value = gen[0];
           // cmd.Parameters["@Bdate"].Value = "1997-09-10";
            cmd.Parameters["@Phone"].Value = ph;
            cmd.Parameters["@City"].Value = cit;
            cmd.Parameters["@Country"].Value = cont;
            cmd.Parameters["@Adrs"].Value = adr;
            cmd.Parameters["@DP"].Value = "Some_link_over_here";


            cmd.ExecuteNonQuery(); //executre the cmd query


            Found = Convert.ToInt32(cmd.Parameters["@succes"].Value);

            con.Close(); //close SQL connection

            return Found; // if 1 then sign up successful

        }

        //public int AddnewProduct(string pid, string name, string categ, string item, string pic,string maker, string qnt, string size, string text)
        //{
        //    int returnValue = 0;
        //    DataSet ds = new DataSet();
        //    SqlConnection con = new SqlConnection(connString);
        //    con.Open();
        //    SqlCommand cmd;

        //    cmd = new SqlCommand("AddProduct", con); //name of your SQL procedure
        //    cmd.CommandType = CommandType.StoredProcedure;

        //    cmd.Parameters.Add("@id", SqlDbType.VarChar, 10);
        //    cmd.Parameters.Add("@name", SqlDbType.VarChar, 50);
        //    cmd.Parameters.Add("@category", SqlDbType.VarChar, 40);
        //    cmd.Parameters.Add("@item", SqlDbType.VarChar, 40);
        //    cmd.Parameters.Add("@pic", SqlDbType.VarChar, 150);
        //    cmd.Parameters.Add("@maker", SqlDbType.VarChar, 30);
        //    cmd.Parameters.Add("@quantity", SqlDbType.Int);
        //    cmd.Parameters.Add("@size", SqlDbType.VarChar, 20);
        //    cmd.Parameters.Add("@detail", SqlDbType.VarChar, 50);
        //    cmd.Parameters.Add("@ret", SqlDbType.Int).Direction = ParameterDirection.Output; ;

        //    cmd.Parameters["@id"].Value = pid;
        //    cmd.Parameters["@name"].Value = name;
        //    cmd.Parameters["@category"].Value = categ;
        //    cmd.Parameters["@item"].Value = item;
        //    cmd.Parameters["@pic"].Value = pic;
        //    cmd.Parameters["@maker"].Value = maker;
        //    cmd.Parameters["@quantity"].Value = qnt;
        //    cmd.Parameters["@size"].Value = size;
        //    cmd.Parameters["@detail"].Value = text;

        //    cmd.ExecuteNonQuery(); //executre the cmd query


        //    returnValue = Convert.ToInt32(cmd.Parameters["@ret"].Value);

        //    con.Close();
        //    return returnValue;
        //}

        public int ShowUsers(string Name, ref DataTable result)
        {
            //not completed yet
            int Found=0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            
                cmd = new SqlCommand("SearchStudentByName ", con); //name of your SQL procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Name", SqlDbType.VarChar, 15); //input of SQL stored procedure

                SqlParameter outParam = new SqlParameter();
                outParam.SqlDbType = System.Data.SqlDbType.Int;
                outParam.ParameterName = "@output";
                outParam.Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add(outParam);


                // set SQL procedure parameter values
                cmd.Parameters["@Name"].Value = Name;
                //cmd.Parameters["@output"].Value = 0;


                cmd.ExecuteNonQuery(); //executre the cmd query

                int val=(int)outParam.Value;
                Found = val;

                //val = (int)cmd.Parameters["@result"].Value;

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    da.Fill(ds); //get results

                result = ds.Tables[0]; //fill the results in ref input table 

                con.Close(); //close SQL connection
            return Found ; //if no error return 1;

    }

        public int Purchase(string pid, string uid, int qnt)
        {
            int returnValue = 0;
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            cmd = new SqlCommand("purchase", con); //name of your SQL procedure
            cmd.CommandType = CommandType.StoredProcedure;


            cmd.Parameters.Add("@PID", SqlDbType.VarChar, 10);
            cmd.Parameters.Add("@UID", SqlDbType.VarChar, 30);
            cmd.Parameters.Add("@Qty", SqlDbType.Int);
            cmd.Parameters.Add("@flag", SqlDbType.Int).Direction = ParameterDirection.Output;

            cmd.Parameters["@PID"].Value = pid;
            cmd.Parameters["@UID"].Value = uid;
            cmd.Parameters["@Qty"].Value = qnt;

            cmd.ExecuteNonQuery(); //executre the cmd query

            returnValue = Convert.ToInt32(cmd.Parameters["@flag"].Value);

            con.Close();
            return returnValue;
        }

        public int bucketlist(string u, ref DataTable result)
        {
            int returnValue = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;

            cmd = new SqlCommand("My_Bucketlist", con); //name of your SQL procedure
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@userid", SqlDbType.VarChar, 30);
            cmd.Parameters.Add("@out", SqlDbType.Int).Direction = ParameterDirection.Output; //input of SQL stored


            // asigning value to sql parameters
            cmd.Parameters["@userid"].Value = u;



            cmd.ExecuteNonQuery(); //executre the cmd query


            returnValue = Convert.ToInt32(cmd.Parameters["@out"].Value);

            using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                da.Fill(ds); //get results

            result = ds.Tables[0]; //fill the results in ref input table 

            con.Close();

            return returnValue;
        }

        public int GetAllPurchasedItemOfUSer_DAL(ref DataSet ds) //to get the values of all the items from table Items and return the Dataset
        {


            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;

            string id = Session["userid"].ToString();
            cmd = new SqlCommand("ShowPurchasedOfPerson", con);  //instantiate SQL command 

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@userId", SqlDbType.VarChar, 30);
            cmd.Parameters["@userId"].Value = id;
            using (SqlDataAdapter da = new SqlDataAdapter(cmd))
            {
                da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
            }

            return 1;
        }

        public int GetAllBucketListOfUser_DAL(ref DataSet ds)
        {


            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;

            string id = Session["userid"].ToString();
            cmd = new SqlCommand("Show_BucketListOfPerson", con);  //instantiate SQL command 

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@uid", SqlDbType.VarChar, 30);
            cmd.Parameters["@uid"].Value = id;
            using (SqlDataAdapter da = new SqlDataAdapter(cmd))
            {
                da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
            }

            return 1;
        }          // not required

        public int DeleteItemFromBucket_DAL(string ProductId )           // notrequired
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;


            cmd = new SqlCommand("RemoveFromBucketList", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@pid", SqlDbType.VarChar).Value = ProductId;
            string id = Session["userid"].ToString();
            cmd.Parameters.Add("@userid", SqlDbType.VarChar).Value = id;
            cmd.ExecuteNonQuery();

            con.Close();
            return 1;


        }

        public SqlDataReader GetProductByProductId(string prod_id)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;


            cmd = new SqlCommand("Get_Product_By_id", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@pid", SqlDbType.VarChar).Value = prod_id;
            SqlDataReader reader = cmd.ExecuteReader();
            reader = cmd.ExecuteReader();

            con.Close();
            return reader;
        }
    }
}