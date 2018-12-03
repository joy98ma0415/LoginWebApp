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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnregistration_Click(object sender, EventArgs e)
        {
            lblmsg.Text = "";
            SqlConnection SQLConn = new SqlConnection("");
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("insert into UserMst values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtcity.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "')", SQLConn);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);

            SqlDataAdapter SQLAAdapter = new SqlDataAdapter("select * from UserMst", SQLConn);
            DataTable DTT = new DataTable();
            SQLAAdapter.Fill(DTT);

            GridView1.DataSource = DTT;
            GridView1.DataBind();

            lblmsg.Text = "Registration Done!!";
            txtfname.Text = "";
            txtlname.Text = "";
            txtemail.Text = "";
            txtcity.Text = "";
            txtfname.Focus();
        }
    }
}