using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Threading.Tasks;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;
using iTextSharp.text.pdf.draw;
using System.Web.UI.HtmlControls;
using iTextSharp.text.html.simpleparser;
using System.Drawing;

namespace Civicmaster
{
    public partial class adminvompview1 : System.Web.UI.Page
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
            lbl9.Text = ds.Tables[0].Rows[0]["compdesc"].ToString();
            lbl10.Text = ds.Tables[0].Rows[0]["latitude"].ToString();
            lbl11.Text = ds.Tables[0].Rows[0]["longitude"].ToString();
            lbl12.Text = ds.Tables[0].Rows[0]["date1"].ToString();

            string imageurl = "data:image/png;base64," + Convert.ToBase64String((byte[])ds.Tables[0].Rows[0]["imagedata"]);
            Image1.ImageUrl = imageurl;



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();

            string str = "select imagedata from [civicissues].[dbo].[compregister] where compno='" + Session["compno"] + "'";
            com = new SqlCommand(str, con);

            SqlDataAdapter da = new SqlDataAdapter(com);

            DataSet ds = new DataSet();

            da.Fill(ds);

            string imageurl = Convert.ToBase64String((byte[])ds.Tables[0].Rows[0]["imagedata"]);
            Image1.ImageUrl = imageurl;
            byte[] imageBytes = Convert.FromBase64String(imageurl);
            iTextSharp.text.Image image = iTextSharp.text.Image.GetInstance(imageBytes);
            image.ScaleAbsolute(230f, 130f);
            image.Alignment = iTextSharp.text.Image.ALIGN_CENTER;

            using (System.IO.MemoryStream memoryStream = new System.IO.MemoryStream())
            {
                Document document = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
                PdfWriter writer = PdfWriter.GetInstance(document, memoryStream);
               
                  
                document.Open();
                PdfContentByte content = writer.DirectContent;
                iTextSharp.text.Rectangle rectangle = new iTextSharp.text.Rectangle(document.PageSize);
                rectangle.Left += document.LeftMargin;
                rectangle.Right -= document.RightMargin;
                rectangle.Top -= document.TopMargin;
                rectangle.Bottom += document.BottomMargin;
      
                content.SetColorStroke(iTextSharp.text.BaseColor.BLACK);
                content.Rectangle(rectangle.Left, rectangle.Bottom, rectangle.Width, rectangle.Height);
                content.Stroke();
                Paragraph para = new Paragraph();
                 Chunk glue = new Chunk(new VerticalPositionMark());
                   Phrase ph1 = new Phrase();
                 Paragraph mm = new Paragraph();


                
               // document.Add(new Paragraph(Environment.NewLine));
                
                string imageURL = Server.MapPath(".") + "/images/Ciname.png";

                iTextSharp.text.Image jpg = iTextSharp.text.Image.GetInstance(imageURL);
                jpg.ScaleToFit(80f, 70f);
                //jpg.SpacingBefore = 40f;

                //Give some space after the image
                //jpg.SpacingAfter = 1f;
                jpg.SpacingAfter = 1f;
                
                
                BaseFont bf1 = BaseFont.CreateFont(BaseFont.TIMES_ROMAN, BaseFont.CP1250, BaseFont.EMBEDDED);
                iTextSharp.text.Font text1 = new iTextSharp.text.Font(bf1, 30, iTextSharp.text.Font.NORMAL);
                Paragraph p = new Paragraph(new Chunk("CIVIC ISSUES", text1));
                p.Alignment = Element.ALIGN_CENTER;
                document.Add(p);
                iTextSharp.text.Font text4 = new iTextSharp.text.Font(bf1, 24, iTextSharp.text.Font.NORMAL);
                Paragraph p4 = new Paragraph(new Chunk("One Step Towards Cleanliness ", text4));
                p4.Alignment = Element.ALIGN_CENTER;
               
                document.Add(p4);
                Paragraph p5 = new Paragraph(new Chunk(new iTextSharp.text.pdf.draw.LineSeparator(0.0F, 97.0F, BaseColor.BLACK, Element.ALIGN_LEFT, 1)));
                document.Add(p5);
                Chunk glue1 = new Chunk(new VerticalPositionMark());
                Paragraph p3= new Paragraph();
                p3.Add(new Chunk(jpg, 0, 0));
                
                document.Add(p3);
                
                BaseFont bf2 = BaseFont.CreateFont(BaseFont.TIMES_ROMAN, BaseFont.CP1250, BaseFont.EMBEDDED);
                iTextSharp.text.Font text2 = new iTextSharp.text.Font(bf2, 20, iTextSharp.text.Font.UNDERLINE);
                Paragraph p2 = new Paragraph(new Chunk(" COMPLAINT DETAILS ", text2));
                p2.Alignment = Element.ALIGN_CENTER;
                document.Add(p2);
               // document.Add(new Paragraph(Environment.NewLine));
                document.Add(new Chunk("    Phone                             : " + lbl1.Text, FontFactory.GetFont("Arial", 10, 1)));
                document.Add(glue);
                document.Add(new Paragraph(Environment.NewLine));
                document.Add(new Chunk("    Email                              : " + lbl2.Text, FontFactory.GetFont("Arial", 10, 1)));

                document.Add(new Paragraph(Environment.NewLine));
               
                document.Add(new Chunk("    Requister                       : " + lbl3.Text, FontFactory.GetFont("Arial", 10, 1)));
                document.Add(glue);
                document.Add(new Paragraph(Environment.NewLine));
                document.Add(new Chunk("    Complaint                      : " + lbl4.Text, FontFactory.GetFont("Arial", 10, 1)));

                document.Add(new Paragraph(Environment.NewLine));
                document.Add(new Chunk("    Complaint Type            : " + lbl5.Text, FontFactory.GetFont("Arial", 10, 1)));
                document.Add(glue);
                document.Add(new Paragraph(Environment.NewLine));
                document.Add(new Chunk("    Area                               : " + Label1.Text, FontFactory.GetFont("Arial", 10, 1)));

                document.Add(new Paragraph(Environment.NewLine));
                document.Add(new Chunk("    Town                              : " + lbl6.Text, FontFactory.GetFont("Arial", 10, 1)));
                document.Add(glue);
                document.Add(new Paragraph(Environment.NewLine));
                document.Add(new Chunk("    Door No                         : " + lbl7.Text, FontFactory.GetFont("Arial", 10, 1)));

                document.Add(new Paragraph(Environment.NewLine));
                document.Add(new Chunk("    Status                            : " + lbl8.Text, FontFactory.GetFont("Arial", 10, 1)));
                document.Add(glue);
                document.Add(new Paragraph(Environment.NewLine));
                document.Add(new Chunk("    Complaint Description : " + lbl9.Text, FontFactory.GetFont("Arial", 10, 1)));

                document.Add(new Paragraph(Environment.NewLine));
                document.Add(new Chunk("    Latitude                         : " + lbl10.Text, FontFactory.GetFont("Arial", 10, 1)));
                document.Add(glue);
                document.Add(new Paragraph(Environment.NewLine));
                document.Add(new Chunk("    Longitude                      : " + lbl11.Text, FontFactory.GetFont("Arial", 10, 1)));

                document.Add(new Paragraph(Environment.NewLine));
                document.Add(new Chunk("    Time/Date                      : " + lbl12.Text, FontFactory.GetFont("Arial", 10, 1)));


                document.Add(new Paragraph(Environment.NewLine));
                document.Add(new Chunk("    Image:", FontFactory.GetFont("Arial", 10, 1)));
                document.Add(image);



                para.Add(mm);
                document.Add(para);
                //Chunk glue2 = new Chunk(new VerticalPositionMark());
                //Paragraph p6 = new Paragraph();
                //p6.Add(new Chunk("Contact Us @ civic2020contact@gmail.com"));
                iTextSharp.text.Font text3 = new iTextSharp.text.Font(bf2, 9, iTextSharp.text.Font.NORMAL);
                Paragraph p6 = new Paragraph(new Chunk(" Contact Us @:civic2020contact@gmail.com ", text3));
                p6.Alignment = Element.ALIGN_RIGHT;
                document.Add(p6);
                document.Close();
                byte[] bytes = memoryStream.ToArray();
               
               
                
                memoryStream.Close();

                Response.Clear();
                Response.ContentType = "application/pdf";
                Response.AddHeader("Content-Disposition", "attachment; filename=" + Session["compno"] + ".pdf");
                Response.ContentType = "application/pdf";
                Response.Buffer = true;
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.BinaryWrite(bytes);
                
                Response.End();
            }



        }
       
    }

 
}
