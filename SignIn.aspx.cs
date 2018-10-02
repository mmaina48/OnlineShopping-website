using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace MicksDesignOnlineShop
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Request.Cookies["UNAME"]!=null && Request.Cookies["PWD"] != null)
                {
                    UserName.Text = Request.Cookies["UNAME"].Value;
                    Password.Attributes["value"] = Request.Cookies["PWD"].Value;
                    CheckBox1.Checked = true;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from Users where Username='" + UserName.Text + "' and Password='" + Password.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count!=0)
                {
                    Session["USERID"] = dt.Rows[0]["Uid"].ToString();
                    Session["USEREMAIL"] = dt.Rows[0]["Email"].ToString();

                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = UserName.Text;
                        Response.Cookies["PWD"].Value = Password.Text;

                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(1);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(1);

                       
                    }
                    else
                    {
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                    }
                    string Utype;
                    Utype = dt.Rows[0][5].ToString().Trim();
                      
                    if(Utype=="U")
                    {
                        Session["USERNAME"] = UserName.Text;
                        if (Request.QueryString["rurl"] != null)
                        {
                            if (Request.QueryString["rurl"] == "cart")
                            {
                                Response.Redirect("~/Cart.aspx");
                            }
                        }
                        else
                        {
                            Response.Redirect("~/UserHome.aspx");
                        }
                    }
                    if (Utype == "A")
                    {

                        Session["USERNAME"] = UserName.Text;
                        Response.Redirect("~/AdminHome.aspx");
                    }

                }
                else
                {
                    lblError.Text = "Password or Username is not Correct";
                }
            }
        }

        protected void lbForgetpass_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forgetpass.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignUp.aspx");
        }
    }
}