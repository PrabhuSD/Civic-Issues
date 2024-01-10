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
    public partial class changepassword : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
        string str = null;
        SqlCommand com;
        byte up;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
           
                SqlConnection con = new SqlConnection(strConnString);
                con.Open();
                str = "select * from [civicissues].[dbo].[userreg] ";
                com = new SqlCommand(str, con);
                SqlDataReader reader = com.ExecuteReader();
                while (reader.Read())
                {
                    if (txt_cpassword.Text == reader["password"].ToString())
                    {
                        up = 1;
                    }
                }
                reader.Close();
                con.Close();
                if (up == 1)
                {
                    con.Open();
                    str = "update [civicissues].[dbo].[userreg] set password=@password where password='" + txt_cpassword.Text + "'";
                    com = new SqlCommand(str, con);
                    com.Parameters.Add(new SqlParameter("@password", SqlDbType.VarChar, 50));
                    com.Parameters["@password"].Value = txt_npassword.Text;
                    com.ExecuteNonQuery();
                    con.Close();
                   
                Response.Write("<script>alert('Password changed Successfully')</script>");
            }
                else
                {
                    
                Response.Write("<script>alert('Please enter correct Current password')</script>");
            }
            }
        }

    }
    
