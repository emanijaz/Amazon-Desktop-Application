using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using myAmazon_2_.DAL;

namespace myAmazon_2_
{
    public partial class Admin_ShowUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Server.Transfer("myAmazon.aspx", true);
            }
        }
    }
}