using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using myAmazon_2_.DAL;


namespace myAmazon_2_
{
    public partial class Signup1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            myDAL objmyDal = new myDAL();
            string uid = Uid.Text;
            string fn = fname.Text;
            string ln = lname.Text;
            string mail = email.Text;
            string ps = pass.Text;
            string gend = gender.SelectedValue.ToString();
            string cit = city.SelectedValue.ToString();
            string cn = country.SelectedValue.ToString();
            string adr = adrs.Text;
            string ph = phone.Text;

            int ans = 0;
            ans = objmyDal.checkUserId(uid);
            /*
                        if (ans == -1)
                        {
                            Label1.Visible = true;
                            Label1.Text = "Error!";
                        }*/

            if (ans == 0)
            {
                LabelUID.Visible = true;
                // Label1.Text = "This UserID already exists! Please use another one!";
            }
            else if (ans == 1)
            {
                int did = 0;
                did = objmyDal.Signup_DAL(uid, fn, ln, mail, ph, gend, cn, cit, adr, ps);
                if (did == 1)
                {

                    Server.Transfer("UserHomepage.aspx", true);
                }
            }

        }
    }
}