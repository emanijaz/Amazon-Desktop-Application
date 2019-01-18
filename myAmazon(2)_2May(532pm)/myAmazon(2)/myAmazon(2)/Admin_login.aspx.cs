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
    public partial class Admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            myDAL objMyDal = new myDAL();
            string InputId = a_name.Text;
            string InputPass = a_pass.Text;

            int found;
            found = objMyDal.Log_In_DAL(InputId, InputPass);
            if (found == 0)
            {
                Label1.Visible = true;
            }
            else if (found == 1)
            {
                Label1.Visible = false;
                Label1.Text = "You are not an Admin! Cannot login.";
                Label1.Visible = true;

            }
            else if (found == 2)
            {
                Session["admin"] = true;
                Server.Transfer("AdminHome.aspx", true);
            }
        }
    }
}