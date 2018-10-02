using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Net.Mail;
using System.Net;




namespace MicksDesignOnlineShop
{
    public partial class Forgetpass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btpassRec_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from users where Email='" + tbEmailId.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    lblpassRec.Text = "Check your Email to reset password!";
                    lblpassRec.ForeColor = Color.Green;

                }
                else
                {
                    lblpassRec.Text = "The Email does not Exist!";
                    lblpassRec.ForeColor = Color.Red;
                }
            }
        }
    }
}