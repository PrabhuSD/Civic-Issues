using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Collections.Specialized;

namespace Civicmaster
{
    public partial class forgetpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String mobile;

            String password;
            String mycon = @"Data Source=DESKTOP-16PIGMO\SQLEXPRESS;Initial Catalog=civicissues;Integrated Security=True";
            String myquery = "Select * from [civicissues].[dbo].[userreg] where username='" + TextBox1.Text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Label3.Text = "Data Found";
                mobile = ds.Tables[0].Rows[0]["number"].ToString();
                password = ds.Tables[0].Rows[0]["password"].ToString();
                sendpassword(mobile, password, TextBox1.Text);

            }
            else
            {
                Label1.Text = "Your Username is Not Valid";

            }
            con.Close();



        }
        private void sendpassword(String mobileno, String password1, String username)
        {

            string message = "Hi " + username + " , Your Password is " + password1 + " ";

            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "1J2s4zAlEqo-NC2ZoVNCLN0cDmc36DOspgwuNxIAIp"},
                {"numbers" , mobileno},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                Response.Write("<script>alert('Password has been sent to your registered mobile number!!')</script>");

            }
        }


    }
}