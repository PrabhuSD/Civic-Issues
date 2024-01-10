using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Civicmaster
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["abc"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from [civicissues].[dbo].[adminlogin] where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    Response.Write("<script>alert('Successful Login ')</script>");
                    Response.Redirect("adminhome.aspx?" + "&TextBox1.Text=" + TextBox1.Text);
                    //Response.Redirect("adminhome.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Please Enter the valid username and password! ')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}