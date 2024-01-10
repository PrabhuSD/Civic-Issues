<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Civicmaster.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 1340px;
        }
        .auto-style5 {
            width: 1182px;
            height: 444px;
            position: absolute;
            top: 681px;
            left: 83px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--        <section class="welcome_area clearfix" id="home" style="background-image: url(img/bg-img/welcome-bg.png)"><br /><br /><br /><br /><br /><br />--%>

    <section class="contact-area section_padding_100">
        <div class="container">
            <div class="row">
                <!-- Contact Form Area -->
                <div class="col-12 col-md-8">
                    <div class="contact-form-area">
                        <h2>Get in touch</h2>
                        
                            <div class="row">
                                <div class="col-12 col-md-6">
                                    <%--<input type="text" class="form-control" id="name" placeholder="Name">--%>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                </div>
                                <div class="col-12 col-md-6">
                                   <%-- <input type="email" class="form-control" id="email" placeholder="E-mail">--%>
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="E-mail"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                   <%-- <input type="text" class="form-control" id="subject" placeholder="Subject">--%>
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Subject"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <%--<textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="Message"></textarea>--%>
                                    <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="333px" placeholder="Message" class="form-control"></asp:TextBox>
                                </div>
                                <%--<button class="btn mosh-btn mt-50" type="submit">Send Message</button>--%>
                                <asp:Button ID="Button1" runat="server" Text="Send" class="btn mosh-btn mt-50" OnClick="Button1_Click" />
                            </div>
                       
                    </div>
                </div>
                <!-- Contact Information -->
                <div class="col-12 col-md-4">
                    <div class="contact-information">
                        <h2>Contact</h2>
                        <div class="single-contact-info d-flex">
                            <div class="contact-icon mr-15">
                                <img src="img/core-img/map.png" alt="">
                            </div>
                            <p>BVVS Polytechnic<br> Bagalkot, Karnataka</p>
                        </div>
                        <div class="single-contact-info d-flex">
                            <div class="contact-icon mr-15">
                                <img src="img/core-img/call.png" alt="">
                            </div>
                            <p>Main: 7019157769 </p>
                        </div>
                        <div class="single-contact-info d-flex">
                            <div class="contact-icon mr-15">
                                <img src="img/core-img/message.png" alt="">
                            </div>
                            <p>civici2020contact@gmail.com</p>
                        </div>
                        <%--<div class="contact-social-info mt-50">
                            <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Contact Area End ***** -->

    <!-- Google Maps -->
    <div class="map-area">
        <div id="googleMap"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3831.675084192067!2d75.70578601433809!3d16.185697540606583!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc779a201305dad%3A0x3fa19851145d2d53!2sComputer%20Science%20Branch!5e0!3m2!1sen!2sin!4v1577163404676!5m2!1sen!2sin" frameborder="0" style="border:0;" allowfullscreen="" class="auto-style5"></iframe></div>

    </div>


</asp:Content>
