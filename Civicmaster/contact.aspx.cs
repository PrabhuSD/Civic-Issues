using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Civicmaster
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                
                MailMessage Msg = new MailMessage();
                // Sender e-mail address.
                Msg.From = new MailAddress(TextBox2.Text);
                // Recipient e-mail address.
                Msg.To.Add("civic2020contact@gmail.com");
                Msg.Subject = TextBox3.Text;
                Msg.Body ="Name:"  + TextBox1.Text + Environment.NewLine + Environment.NewLine +"Email:" +TextBox2.Text + Environment.NewLine + Environment.NewLine
                    + "Subject:" + TextBox3.Text + Environment.NewLine + Environment.NewLine  +"Message:" +TextBox4.Text + Environment.NewLine + Environment.NewLine;
                // your remote SMTP server IP.
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("civic2020contact@gmail.com", "civic2020");
                smtp.EnableSsl = true;
                smtp.Send(Msg);
                //Msg = null;
                Response.Write("<script>alert('Thank you for contacting us')</script>");
                // Clear the textbox valuess
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
            }


        }
    }
}