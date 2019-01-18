using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using myAmazon_2_.DAL;

namespace myAmazon_2_
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            myDAL objMyDal = new myDAL();
            string InputId = TextBox1.Text;
            string InputPass = TextBox2.Text;

            int found;
            found = objMyDal.Log_In_DAL(InputId, InputPass);
            if (found == 0)
            {
                Label2.Visible = true;
            }
            else if (found == 1)
            {

                Label2.Visible = true;
                Label1.Visible = false;
                Session["userid"] = TextBox1.Text;
                Server.Transfer("UserHomepage.aspx", true);
            }
            else if (found == 2)
            {
                //Label1.Text = "";
                Label1.Visible = true;
                //Server.Transfer("AdminHome.aspx", true);
            }
        }
    }
}