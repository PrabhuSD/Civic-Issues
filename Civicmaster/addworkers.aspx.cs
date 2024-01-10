using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Civicmaster
{
    public partial class addworkers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);

            string s1 = "insert into[civicissues].[dbo].[addworker] (firstname,lname,phone,email,dob,expert) values (@firstname,@lname,@phone,@email,@dob,@expert)";

            SqlCommand sqlcomm = new SqlCommand(s1);
            sqlcomm.Connection = sqlconn;
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@firstname", SqlDbType.VarChar).Value = TextBox1.Text;
            sqlcomm.Parameters.AddWithValue("@lname", SqlDbType.VarChar).Value = TextBox2.Text;
            sqlcomm.Parameters.AddWithValue("@phone", SqlDbType.VarChar).Value = TextBox3.Text;
            sqlcomm.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = TextBox4.Text;
            sqlcomm.Parameters.AddWithValue("@dob", SqlDbType.VarChar).Value = TextBox5.Text;
            sqlcomm.Parameters.AddWithValue("@expert", SqlDbType.VarChar).Value = DropDownList1.SelectedItem.Text;

            sqlcomm.ExecuteNonQuery();
            sqlconn.Close();
            Response.Write("<script>alert('Registration successful!!  ')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            DropDownList1.SelectedItem.Text = "";
        }
    }
}