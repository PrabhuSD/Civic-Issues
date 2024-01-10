using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;
using System.Collections.Specialized;

namespace Civicmaster
{
    public partial class UserRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                LitPass.Visible = false;
            }
        }
        private int RandomNumber(int min, int max)
        {
            Random rn = new Random();
            return rn.Next(min, max);
        }
        private string Randomstring(int length)
        {
            StringBuilder sb = new StringBuilder();
            Random rd = new Random();
            char value;
            for (int i = 0; i < length; i++)
            {
                value = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * rd.NextDouble() + 65)));
                sb.Append(value);
            }
            return sb.ToString();

        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            string gender = string.Empty;
            if (RadioButton1.Checked)
            {
                gender = "male";
            }
            else
            {
                gender = "female";
            }
            StringBuilder sb = new StringBuilder();
            sb.Append(RandomNumber(10, 199));
            sb.Append(Randomstring(7));
            LitPass.Text = sb.ToString();
            string mainconn = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);

            string s1 = "insert into [civicissues].[dbo].[userreg] (firstname,lastname,dob,gender,email,number,address,username,password) values (@firstname,@lastname,@dob,@gender,@email,@number,@address,@username,@password)";

            SqlCommand sqlcomm = new SqlCommand(s1);
            sqlcomm.Connection = sqlconn;
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@firstname", SqlDbType.VarChar).Value = TextBox1.Text;
            sqlcomm.Parameters.AddWithValue("@lastname", SqlDbType.VarChar).Value = TextBox2.Text;
            sqlcomm.Parameters.AddWithValue("@dob", SqlDbType.VarChar).Value = TextBox3.Text;
            sqlcomm.Parameters.AddWithValue("@gender", gender);
            sqlcomm.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = TextBox4.Text;
            sqlcomm.Parameters.AddWithValue("@number", SqlDbType.VarChar).Value = TextBox5.Text;
            sqlcomm.Parameters.AddWithValue("@address", SqlDbType.VarChar).Value = TextBox6.Text;
            sqlcomm.Parameters.AddWithValue("@username", SqlDbType.VarChar).Value = TextBox7.Text;
            sqlcomm.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = LitPass.Text;
            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
            Response.Write("<script>alert('Registration successful!! and Password will be sent to your registered Phone Number ')</script>");

           

            String mobile;

            String password;
            String mycon = @"Data Source=DESKTOP-16PIGMO\SQLEXPRESS;Initial Catalog=civicissues;Integrated Security=True";
            String myquery = "Select * from [civicissues].[dbo].[userreg] where username='" + TextBox7.Text + "'";
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
                sendpassword(mobile, password, TextBox7.Text);

            }
        }
        private void sendpassword(String mobileno, String password1, String username)
        {
            string destaddr = TextBox5.Text;
            string message = "Hi " + TextBox1.Text + " you have registered successfully ,Your User name is :" + TextBox7.Text + ",And Your Password is: " + password1 + " ";

            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "1J2s4zAlEqo-NC2ZoVNCLN0cDmc36DOspgwuNxIAIp"},
                {"numbers" , destaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                // Response.Write("<script>alert('Password has been sent to your registered mobile number!!')</script>");varun:1J2s4zAlEqo-NC2ZoVNCLN0cDmc36DOspgwuNxIAIp
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";

            }
        }
    }
}