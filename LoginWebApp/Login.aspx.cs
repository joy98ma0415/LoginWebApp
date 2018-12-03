using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LoginWebApp
{
    public partial class Login : System.Web.UI.Page
    {
        private SqlConnection SQLConn = new SqlConnection("");

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            lblmsg.Text = "";
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("Select * from LoginMst where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'", SQLConn);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);

            if (DT.Rows.Count > 0)
            {
                lblmsg.Text = "Welcome to System";
                lblmsg.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblmsg.Text = "Invalid username or password";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}