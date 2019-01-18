using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using myAmazon_2_.DAL;
using System.IO;

namespace myAmazon_2_
{
    public partial class Admin_Products : System.Web.UI.Page
    {
        private static readonly string connString =
               System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon5"].ConnectionString;
        //helper db = new helper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Server.Transfer("myAmazon.aspx", true);
            }
        }

        //bool add_product()
        //{
        //    db.values.Add("Name",p_name.Text);
        //    db.values.Add("Category", p_categ.Text);
        //    db.values.Add("Item",p_item.Text);
        //    db.values.Add("Pic",img.Text);
        //    db.values.Add("maker",p_maker.Text);
        //    db.values.Add("Quantity",p_qnt.Text);
        //    db.values.Add("Size",p_size.Text);
        //    db.values.Add("Details",p_text.Text);

        //    if (db.insert("Products", db.values))
        //    {
        //        return true;
        //    }
        //    else
        //    {
        //        return false;
        //    }
        //}

        //void reset()
        //{
        //    p_name.Text = "";
        //    p_categ.Text = "";
        //    p_item.Text = "";
        //    img.Text = "";
        //    p_maker.Text = "";
        //    p_qnt.Text="";
        //    p_size.Text = "";
        //    p_text.Text = "";
        //    db.values.Clear();

        //}


   /*     protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile != null)
            {
                string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

                //Save files to disk
                FileUpload1.SaveAs(Server.MapPath("images/" + FileName));
            }
        }*/

        protected void Button1_Click(object sender, EventArgs e)
        {
            // string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

          //  if (FileUpload1.PostedFile != null)
            
                string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

                //Save files to disk
                FileUpload1.SaveAs(Server.MapPath("images/" + FileName));
            

            int returnValue = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;

            cmd = new SqlCommand("AddProduct", con); //name of your SQL procedure
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@id", SqlDbType.VarChar, 10);
            cmd.Parameters.Add("@name", SqlDbType.VarChar, 50);
            cmd.Parameters.Add("@category", SqlDbType.VarChar, 40);
            cmd.Parameters.Add("@item", SqlDbType.VarChar, 40);
            //cmd.Parameters.Add("@pic", SqlDbType.VarChar, 150);
            cmd.Parameters.Add("@maker", SqlDbType.VarChar, 30);
            cmd.Parameters.Add("@quantity", SqlDbType.Int);
            cmd.Parameters.Add("@size", SqlDbType.VarChar, 20);
            cmd.Parameters.Add("@detail", SqlDbType.VarChar, 50);
            cmd.Parameters.Add("@price", SqlDbType.Int);
            cmd.Parameters.Add("@ret", SqlDbType.Int).Direction = ParameterDirection.Output; ;

            cmd.Parameters["@id"].Value = p_id.Text; ;
            cmd.Parameters["@name"].Value = p_name.Text;
            cmd.Parameters["@category"].Value = p_categ.Text;
            cmd.Parameters["@item"].Value = p_item.Text;
            cmd.Parameters.AddWithValue("@pic", "images/" + FileName);
            //cmd.Parameters["@pic"].Value = "";
            cmd.Parameters["@maker"].Value = p_maker.Text;
            cmd.Parameters["@quantity"].Value = p_qnt.Text;
            cmd.Parameters["@size"].Value = p_size.Text ;
            cmd.Parameters["@detail"].Value = p_text.Text;
            cmd.Parameters["@price"].Value = priceBox.Text;
            cmd.ExecuteNonQuery(); //executre the cmd query


            returnValue = Convert.ToInt32(cmd.Parameters["@ret"].Value);


            //int found;
            //found = objMyDal.AddnewProduct(pid,name, category, item, pic, maker, quantity, size, detail);
            if (returnValue == 1)
            {
                Label1.Visible = true;
                Server.Transfer("AdminHome.aspx", true);

            }
            else
            {
                Label1.Text = "Could Not add product";
                Label1.Visible = true;
            }

            //if (add_product())
            //{
            //    Label1.Visible = true;
            //    reset();
            //}
            //else
            //{
            //    Label1.Text = "Could Not add product";
            //    Label1.Visible = true;
            //}
        }
    }
}