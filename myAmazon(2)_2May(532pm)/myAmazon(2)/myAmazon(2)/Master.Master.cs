using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace myAmazon_2_
{
    public partial class Master : System.Web.UI.MasterPage
    {
        private static readonly string conn =
            System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon5"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void Select_category(object sender, EventArgs e)
        {

             var CatPageURL = "show_Category.aspx?cat=" + Categories.SelectedValue.ToString();

            Response.Redirect(CatPageURL);

           
        }
    }
}