﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SRVTextToImage;
using System.Drawing;
using System.Drawing.Imaging;


namespace Civicmaster
{
    public partial class captchaimage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CaptchaRandomImage CI = new CaptchaRandomImage();
            // GetRandomString Function return random text of your provided characters size
            string captchaText = CI.GetRandomString(5);

            //GenearteImage  function return image of the provided text of provided size
            //CI.GenerateImage(captchaText, 200, 50);
            //there is a overload function available for set color of the image
            Session["CaptchaText"] = captchaText;
            CI.GenerateImage(captchaText, 200, 50, Color.DarkGray, Color.White);

            this.Response.Clear();
            this.Response.ContentType = "image/jpeg";
            CI.Image.Save(this.Response.OutputStream, ImageFormat.Jpeg);
            CI.Dispose();
        }
    }
}