using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Text;
using System.IO;
using System.Net;
using System.Collections.Specialized;

namespace Civicmaster
{

    public partial class complaintreg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.DataSource = GetData("spGetcompcategory", null);
                DropDownList1.DataBind();

                ListItem licategory = new ListItem("select category", "-1");
                DropDownList1.Items.Insert(0, licategory);

                ListItem licategorytype = new ListItem("select Complainttype", "-1");
                DropDownList2.Items.Insert(0, licategorytype);
                DropDownList2.Enabled = false;


                DropDownList3.DataSource = GetData("spGetdist", null);
                DropDownList3.DataBind();

                ListItem lizone = new ListItem("select zone", "-1");
                DropDownList3.Items.Insert(0, lizone);

                ListItem liplace = new ListItem("select place", "-1");
                DropDownList4.Items.Insert(0, liplace);
                DropDownList4.Enabled = false;

                LitPass.Visible = false;
                lblmessage1.Visible = false;
                //hyperlink.Visible = false;

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
        private DataSet GetData(string spname, SqlParameter sppparameter)
        {
            string cs = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter da = new SqlDataAdapter(spname, con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            if (sppparameter != null)
            {
                da.SelectCommand.Parameters.Add(sppparameter);
            }
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 0)
            {

            }
            else
            {
                DropDownList2.Enabled = true;
                SqlParameter parameter = new SqlParameter("@ccategoryid", DropDownList1.SelectedValue);
                DataSet ds = GetData("spGetcomplainttypeByccategoryid", parameter);
                DropDownList2.DataSource = ds;
                DropDownList2.DataBind();
                ListItem licategorytype = new ListItem("select Complainttype", "-1");
                DropDownList2.Items.Insert(0, licategorytype);
            }
        }
        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedIndex == 0)
            {

            }
            else
            {
                DropDownList4.Enabled = true;
                SqlParameter parameter = new SqlParameter("@zoneid", DropDownList3.SelectedValue);
                DataSet ds = GetData("spGettownByzoneid", parameter);
                DropDownList4.DataSource = ds;
                DropDownList4.DataBind();
                ListItem liplace = new ListItem("select place", "-1");
                DropDownList4.Items.Insert(0, liplace);
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);




            StringBuilder sb = new StringBuilder();
            sb.Append(RandomNumber(10, 199));
            sb.Append(Randomstring(7));
            LitPass.Text = sb.ToString();


            bool isCaptchaValid = false;
            if (Session["CaptchaText"] != null && Session["CaptchaText"].ToString() == txtCaptchaText.Text)
            {
                isCaptchaValid = true;
            }

            if (isCaptchaValid)
            {
                lblMessage.Text = "Captcha Validation Success";
                lblMessage.ForeColor = Color.Green;
            }
            else
            {
                lblMessage.Text = "Captcha Validation Failed";
                lblMessage.ForeColor = Color.Red;
            }



            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".bmp" ||
                fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".jpeg")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader BinaryReader = new BinaryReader(stream);
                byte[] bytes = BinaryReader.ReadBytes((int)stream.Length);


                string pname = "spcompregister2";
                DateTime a = DateTime.Now;
                sqlconn.Open();
                SqlCommand com = new SqlCommand(pname, sqlconn);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@phone", TextBox1.Text);
                com.Parameters.AddWithValue("@email", TextBox2.Text);
                com.Parameters.AddWithValue("@requister", TextBox3.Text);
                com.Parameters.AddWithValue("@compcategory", DropDownList1.SelectedItem.Text);
                com.Parameters.AddWithValue("@comptype", DropDownList2.SelectedItem.Text);
                com.Parameters.AddWithValue("@compdesc", TextBox4.Text);
                com.Parameters.AddWithValue("@area", TextBox5.Text);
                com.Parameters.AddWithValue("@zone", DropDownList3.SelectedItem.Text);
                com.Parameters.AddWithValue("@town", DropDownList4.SelectedItem.Text);
                com.Parameters.AddWithValue("@doorno", TextBox6.Text);
                com.Parameters.AddWithValue("@address1", TextBox7.Text);
                com.Parameters.AddWithValue("@address2", TextBox8.Text);
                com.Parameters.AddWithValue("@pincode", TextBox9.Text);
                com.Parameters.AddWithValue("@date1", a);
                SqlParameter paramimagedata = new SqlParameter()
                {
                    ParameterName = "@imagedata",
                    Value = bytes
                };
                com.Parameters.Add(paramimagedata);
                SqlParameter paramnewid = new SqlParameter()
                {
                    ParameterName = "@newid",
                    Value = -1,
                    Direction = ParameterDirection.Output
                };
                com.Parameters.Add(paramnewid);

                com.Parameters.AddWithValue("@compno", LitPass.Text);

                com.Parameters.AddWithValue("@compstatus", DropDownList5.SelectedItem.Text);
                com.Parameters.AddWithValue("@latitude", LatitudeTextBox.Text);
                com.Parameters.AddWithValue("@longitude", LongitudeTextBox.Text);


                com.ExecuteNonQuery();
                sqlconn.Close();
                //Api 1YBhEa9jxo8-HeYvrKIedcmtNdQ7QazguxfNFvPhZq
                //hyperlink.Visible = false;1J2s4zAlEqo-NC2ZoVNCLN0cDmc36DOspgwuNxIAIp
                //hyperlink.NavigateUrl = "~/statusview1.aspx?id=" + com.Parameters["@newid"].Value.ToString();
            }
            else
            {
                lblmessage1.Visible = true;
                lblmessage1.Text = "only images(.jgp,.png,.gif and .bmp) can be uploaded";
                lblmessage1.ForeColor = System.Drawing.Color.Red;
                //hyperlink.Visible = false;
            }
            Response.Write("<script>alert('Complaint Registered Successfully And complaint number will be sent to your registered Phone number!!')</script>");
            string destaddr = TextBox1.Text;
            string message = "Hi " + TextBox3.Text + " You have registered your Complaint successfully ,And Your Complaint no is: " + LitPass.Text + " ";

            String message1 = HttpUtility.UrlEncode(message);
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                //{"apikey" , "2PPQbFsNggw-QsHH0A1W87tD6qVBXceTz3vdFiTiwz"},1YBhEa9jxo8-HeYvrKIedcmtNdQ7QazguxfNFvPhZq,mPrZY/Bjvf8-S0PUAxYpRGEph1Gw48XnRqtdTAlQAB
                {"apikey" , "1J2s4zAlEqo-NC2ZoVNCLN0cDmc36DOspgwuNxIAIp"},
                {"numbers" , destaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                DropDownList1.SelectedItem.Text = "";
                DropDownList2.SelectedItem.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                DropDownList3.SelectedItem.Text = "";
                DropDownList4.SelectedItem.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                LatitudeTextBox.Text = "";
                LongitudeTextBox.Text = "";
                txtCaptchaText.Text = "";
                lblmessage1.Visible = false;


            }

        }
    }
}

