using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Civicmaster
{
    public partial class statusview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strConnection = @"Data Source=DESKTOP-16PIGMO\SQLEXPRESS;Initial Catalog=civicissues;Integrated Security=True";
            string str;
            string Compnumber = TextBox1.Text.Trim();


            SqlConnection con = new SqlConnection(strConnection);

            con.Open();

            str = "Select * from [civicissues].[dbo].[compregister]";

            SqlCommand com = new SqlCommand(str);

            SqlDataAdapter sqlda = new SqlDataAdapter(com.CommandText, con);

            DataTable dt = new DataTable();

            sqlda.Fill(dt);

            int RowCount = dt.Rows.Count;

            for (int i = 0; i < RowCount; i++)

            {

                Compnumber = dt.Rows[i]["compno"].ToString();



                if (Compnumber == TextBox1.Text)

                {

                    Session["compno"] = Compnumber;

                    Response.Redirect("statusview1.aspx");

                }

                else

                {

                    Response.Write("Invalid Complaint number!! Please try again!");

                }
            }
        }

    }
}