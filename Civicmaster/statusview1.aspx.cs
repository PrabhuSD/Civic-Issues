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
    public partial class statusview1 : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;

        string str;

        SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strConnString);

            con.Open();

            str = "select * from [civicissues].[dbo].[compregister] where compno='" + Session["compno"] + "'";

            com = new SqlCommand(str, con);

            SqlDataAdapter da = new SqlDataAdapter(com);

            DataSet ds = new DataSet();

            da.Fill(ds);

            lbl1.Text = ds.Tables[0].Rows[0]["phone"].ToString();

            lbl2.Text = ds.Tables[0].Rows[0]["email"].ToString();

            lbl3.Text = ds.Tables[0].Rows[0]["requister"].ToString();

            lbl4.Text = ds.Tables[0].Rows[0]["compcategory"].ToString();
            lbl5.Text = ds.Tables[0].Rows[0]["comptype"].ToString();
            
            Label1.Text = ds.Tables[0].Rows[0]["area"].ToString();
            lbl6.Text = ds.Tables[0].Rows[0]["town"].ToString();
            lbl7.Text = ds.Tables[0].Rows[0]["doorno"].ToString();
            lbl8.Text = ds.Tables[0].Rows[0]["compstatus"].ToString();
            lbl9.Text= ds.Tables[0].Rows[0]["compdesc"].ToString();
            lbl20.Text = ds.Tables[0].Rows[0]["date1"].ToString();

            string imageurl = "data:image/png;base64," + Convert.ToBase64String((byte[])ds.Tables[0].Rows[0]["imagedata"]);
            Image1.ImageUrl= imageurl;

          

        }
    }
}