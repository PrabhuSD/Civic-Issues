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
    public partial class removeworkers : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-16PIGMO\SQLEXPRESS;Initial Catalog=civicissues;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                refreshdata();
            }
        }
        public void refreshdata()
        {


            SqlCommand cmd = new SqlCommand("select * from [civicissues].[dbo].[addworker]", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow gvrow in GridView1.Rows)
            {

                CheckBox chck = gvrow.FindControl("CheckBox1") as CheckBox;
                if (chck.Checked)
                {
                    var Label = gvrow.FindControl("Label1") as Label;

                    SqlCommand cmd = new SqlCommand("delete from [civicissues].[dbo].[addworker] where Id=@Id", con);
                    cmd.Parameters.AddWithValue("Id", int.Parse(Label.Text));
                    con.Open();
                    int id = cmd.ExecuteNonQuery();
                    con.Close();
                    refreshdata();
                    Response.Write("<script>alert('Workers has been removed successfully')</script>");
                    


                }
            }
        }
    }
}