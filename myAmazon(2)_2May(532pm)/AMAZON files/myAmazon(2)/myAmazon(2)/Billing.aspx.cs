using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myAmazon_2_
{
    public partial class Billing : System.Web.UI.Page
    {
        string sourcePageProdID;
        protected void Page_Load(object sender, EventArgs e)
        {
            sourcePageProdID = Request.QueryString["prod_id"];
            TextBox1.Text = Session["userid"].ToString();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login.aspx");

        }
        protected void Insert_Purchased(object sender, EventArgs e)
        {
            string uid = Session["userid"].ToString();
            string pid = sourcePageProdID;

            




        }
    }
}