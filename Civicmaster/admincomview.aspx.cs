using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Civicmaster
{
    public partial class admincomview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter("SELECT Id,phone,requister,compcategory,comptype,compdesc,town,doorno,address1,imagedata,compno,compstatus,latitude,longitude FROM [civicissues].[dbo].[compregister]", conn))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["imagedata"]);
                (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
            }
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

                    Response.Redirect("adminvompview1.aspx");

                }
            } 

                

                {

                    //Response.Write("Invalid Complaint number!! Please try again!");
                    Response.Write("<script>alert('Invalid Complaint number!! Please try again!')</script>");

                }
            }
        }
    }
