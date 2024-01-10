using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Civicmaster
{
    public partial class Workupdates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           


        }
        private void updaterow(int id, String compstatus)
        {
            String mycon = @"Data Source=DESKTOP-16PIGMO\SQLEXPRESS;Initial Catalog=civicissues;Integrated Security=True";
            String updatedata = "Update [civicissues].[dbo].[compregister] set compstatus='" + compstatus + "' where Id=" + id;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label1.Text = "Data Has Been Updated Successfully";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                DropDownList compstatus = (row.Cells[8].FindControl("DropDownList1") as DropDownList);
                int id = Convert.ToInt32(row.Cells[0].Text);

                updaterow(id, compstatus.SelectedItem.Text);



            }

        }
    }
}