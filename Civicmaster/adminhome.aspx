﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="Civicmaster.adminhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <style type="text/css">
        .auto-style2 {
            left: 0px;
            top: -400px;
        }
        .auto-style3 {
            position: absolute;
            top: 331px;
            left: 235px;
            height: 183px;
            width: 212px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ***** Welcome Area Start ***** -->
  <section class="welcome_area clearfix" id="home" style="background-image: url(img/bg-img/welcome-bg.png)">
        <div class="hero-slides owl-carousel">
            <!-- Single Hero Slides -->
            <div class="single-hero-slide d-flex align-items- justify-content-center">
                <div class="hero-slide-content text-center"><br/><br/><br/><br/><br/>
                    <h3><font color="white">Make Your City Better</font></h3>
                   <h6><font color="white"> Start with your neighbourhood to bring the change. Improve your city and its quality of life.</font></h6>
                    
                 <img class="slide-img" src="img/Mascot_Boy.png" alt="" style="height: 634px; z-index: 1; position: absolute; top: 90px; left: 1000px; width: 380px">
    <img src="img/asd.png" alt="" style="height: 350px; z-index: 1; position: absolute; top: 300px; left: 500px; width: 350px" >           
    </div>
            </div>
            <!-- Single Hero Slides -->
<%--            <div class="auto-style2">--%>
                <div class="hero-slide-content text-center"><br/><br/><br/><br/><br/>
                   <h3><font color="white">Action for Change</font></h3>
                   <h6><font color="white"> Identify An Issue and Post a Complaint And Fix It.</font></h6>
                 <img class="slide-img" src="img/Mascot_Girl.png" alt="" style="height: 700px; z-index: 1; position: absolute; top:100px; left: 1px; width: 380px">
                <img src="img/zxc.png" alt="" style="height: 350px; z-index: 1; position: absolute; top: 300px; left: 550px; width: 350px" > <br /><br /> <h3><font color="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Stop throwing the garbage!!.</font></h3> 
                     
                </div>
           
<%--            </div>--%>
        </div>
    </section>
    <!-- ***** Welcome Area End ***** -->

    <!-- ***** Service Area Start ***** -->
    <%--<section class="mosh-service-area clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="mosh-service-slides owl-carousel">
                        <!-- Single Service Area -->
                        <div class="single-service-area text-center">
                            <h2>01.</h2>
                            <h4>No1 in Sales!</h4>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul.</p>
                        </div>
                        <!-- Single Service Area -->
                        <div class="single-service-area text-center">
                            <h2>02.</h2>
                            <h4>Online Marketing</h4>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul.</p>
                        </div>
                        <!-- Single Service Area -->
                        <div class="single-service-area text-center">
                            <h2>03.</h2>
                            <h4>Modern Design</h4>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul.</p>
                        </div>
                        <!-- Single Service Area -->
                        <div class="single-service-area text-center">
                            <h2>04.</h2>
                            <h4>No1 in Sales!</h4>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul.</p>
                        </div>
                        <!-- Single Service Area -->
                        <div class="single-service-area text-center">
                            <h2>05.</h2>
                            <h4>Online Marketing</h4>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul.</p>
                        </div>
                        <!-- Single Service Area -->
                        <div class="single-service-area text-center">
                            <h2>06.</h2>
                            <h4>Modern Design</h4>
                            <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul.</p>
                        </div>
                    </div>
                </div>
                <!-- Discover More btn -->
                <div class="col-12 text-center mt-100">
                    <a href="#" class="btn mosh-btn">Discover More</a>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Service Area End ***** -->--%>

   <%-- <!-- ***** Clients Area Start ***** -->
    <section class="mosh-clients-area section_padding_100 clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center">
                        <p>clients</p>
                        <h2>All our clients love our work</h2>
                    </div>
                </div>
                <div class="col-12">
                    <div class="clients-logo-area d-sm-flex align-items-center justify-content-between">
                        <a href="#"><img src="img/clients-img/1.png" alt=""></a>
                        <a href="#"><img src="img/clients-img/2.png" alt=""></a>
                        <a href="#"><img src="img/clients-img/3.png" alt=""></a>
                        <a href="#"><img src="img/clients-img/4.png" alt=""></a>
                        <a href="#"><img src="img/clients-img/5.png" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Clients Area End ***** -->

    <!-- ***** Features Area Start ***** -->
    <section class="mosh-features-area section_padding_100 clearfix">
        <div class="container">
            <div class="row justify-content-end">
                <div class="col-12 col-md-6">
                    <div class="section-heading">
                        <p>clients</p>
                        <h2>What you get if you start your business with us</h2>
                    </div>
                    <div class="features-content">
                        <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul. Etiam nec odio vestibulum est mat tis effic iturut magna. Pellentesque sit amet tellus blandit. Etiam nec odio ves tibul. Nec odio vestibulum est mattis effic iturut magna. Pellente sque sita met tellus blandit. Etiam nec odio.</p>
                        <!-- Progress Bar Content Area -->
                        <div class="features-progress-bar mt-50">
                            <!-- Single Progress Bar -->
                            <div class="single_progress_bar mb-15 wow fadeInUp" data-wow-delay="0.2s">
                                <p>Development</p>
                                <div id="bar1" class="barfiller">
                                    <div class="tipWrap">
                                        <span class="tip"></span>
                                    </div>
                                    <span class="fill" data-percentage="70"></span>
                                </div>
                            </div>
                            <!-- Single Progress Bar -->
                            <div class="single_progress_bar mb-15 wow fadeInUp" data-wow-delay="0.4s">
                                <p>Design</p>
                                <div id="bar2" class="barfiller">
                                    <div class="tipWrap">
                                        <span class="tip"></span>
                                    </div>
                                    <span class="fill" data-percentage="90"></span>
                                </div>
                            </div>
                            <!-- Single Progress Bar -->
                            <div class="single_progress_bar mb-15 wow fadeInUp" data-wow-delay="0.6s">
                                <p>SEO</p>
                                <div id="bar3" class="barfiller">
                                    <div class="tipWrap">
                                        <span class="tip"></span>
                                    </div>
                                    <span class="fill" data-percentage="55"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Feature Thumb -->
        <div class="features-img">
            <img src="img/bg-img/features.png" alt="">
        </div>
    </section>
    <!-- ***** Feature Area End ***** -->

    <!-- ***** Service Area Start ***** -->
    <section class="mosh-more-services-area d-sm-flex clearfix">
        <div class="single-more-service-area">
            <div class="more-service-content text-center wow fadeInUp" data-wow-delay=".1s">
                <img src="img/core-img/trophy.png" alt="">
                <h4>No1 in Sales!</h4>
                <p>Nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am.</p>
            </div>
        </div>
        <div class="single-more-service-area">
            <div class="more-service-content text-center wow fadeInUp" data-wow-delay=".4s">
                <img src="img/core-img/edit.png" alt="">
                <h4>Documentation inside</h4>
                <p>Tiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am.</p>
            </div>
        </div>
        <div class="single-more-service-area">
            <div class="more-service-content text-center wow fadeInUp" data-wow-delay=".7s">
                <img src="img/core-img/video-camera.png" alt="">
                <h4>Modern Design</h4>
                <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am.</p>
            </div>
        </div>
        <div class="single-more-service-area">
            <div class="more-service-content text-center wow fadeInUp" data-wow-delay="1s">
                <img src="img/core-img/presentation.png" alt="">
                <h4>Marketing Strategist</h4>
                <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am.</p>
            </div>
        </div>
    </section>
    <!-- ***** Service Area End ***** -->

    <!-- ***** Portfolio Area Start ***** -->
    <section class="mosh-portfolio-area section_padding_100_0 clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center">
                        <p>Our Work</p>
                        <h2>See our Online Portfolio</h2>
                    </div>
                </div>
            </div>
        </div>

        <div class="mosh-projects-menu">
            <div class="text-center portfolio-menu">
                <p class="active" data-filter="*">All</p>
                <p data-filter=".gd">Graphic Design</p>
                <p data-filter=".bi">Brand Identity</p>
                <p data-filter=".pho">Photography</p>
                <p data-filter=".wd">Web Design</p>
                <p data-filter=".pc">Printing Colaterall</p>
            </div>
        </div>

        <div class="mosh-portfolio">
            <!-- Single gallery Item Start -->
            <div class="single_gallery_item gd">
                <img src="img/portfolio-img/1.jpg" alt="">
                <div class="gallery-hover-overlay d-flex align-items-center justify-content-center">
                    <div class="port-hover-text text-center">
                        <h4>DFR Corp. Branding</h4>
                        <a href="#">Brand Identity</a>
                    </div>
                </div>
            </div>
            <!-- Single gallery Item Start -->
            <div class="single_gallery_item bi">
                <img src="img/portfolio-img/2.jpg" alt="">
                <div class="gallery-hover-overlay d-flex align-items-center justify-content-center">
                    <div class="port-hover-text text-center">
                        <h4>DFR Corp. Branding</h4>
                        <a href="#">Brand Identity</a>
                    </div>
                </div>
            </div>
            <!-- Single gallery Item Start -->
            <div class="single_gallery_item gd bi">
                <img src="img/portfolio-img/3.jpg" alt="">
                <div class="gallery-hover-overlay d-flex align-items-center justify-content-center">
                    <div class="port-hover-text text-center">
                        <h4>DFR Corp. Branding</h4>
                        <a href="#">Brand Identity</a>
                    </div>
                </div>
            </div>
            <!-- Single gallery Item Start -->
            <div class="single_gallery_item pho">
                <img src="img/portfolio-img/4.jpg" alt="">
                <div class="gallery-hover-overlay d-flex align-items-center justify-content-center">
                    <div class="port-hover-text text-center">
                        <h4>DFR Corp. Branding</h4>
                        <a href="#">Brand Identity</a>
                    </div>
                </div>
            </div>
            <!-- Single gallery Item Start -->
            <div class="single_gallery_item pho">
                <img src="img/portfolio-img/5.jpg" alt="">
                <div class="gallery-hover-overlay d-flex align-items-center justify-content-center">
                    <div class="port-hover-text text-center">
                        <h4>DFR Corp. Branding</h4>
                        <a href="#">Brand Identity</a>
                    </div>
                </div>
            </div>
            <!-- Single gallery Item Start -->
            <div class="single_gallery_item wd pc">
                <img src="img/portfolio-img/6.jpg" alt="">
                <div class="gallery-hover-overlay d-flex align-items-center justify-content-center">
                    <div class="port-hover-text text-center">
                        <h4>DFR Corp. Branding</h4>
                        <a href="#">Brand Identity</a>
                    </div>
                </div>
            </div>
            <!-- Single gallery Item Start -->
            <div class="single_gallery_item wd">
                <img src="img/portfolio-img/7.jpg" alt="">
                <div class="gallery-hover-overlay d-flex align-items-center justify-content-center">
                    <div class="port-hover-text text-center">
                        <h4>DFR Corp. Branding</h4>
                        <a href="#">Brand Identity</a>
                    </div>
                </div>
            </div>
            <!-- Single gallery Item Start -->
            <div class="single_gallery_item pc">
                <img src="img/portfolio-img/8.jpg" alt="">
                <div class="gallery-hover-overlay d-flex align-items-center justify-content-center">
                    <div class="port-hover-text text-center">
                        <h4>DFR Corp. Branding</h4>
                        <a href="#">Brand Identity</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Portfolio Area End ***** -->

    <!-- ***** Workflow Area Start ***** -->
    <section class="mosh-workflow-area section_padding_100_0 clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center mb-0">
                        <p>Our Work Flow</p>
                        <h2>This is how we work on Projects</h2>
                    </div>
                </div>
            </div>
        </div>

        <div class="workflow-img">
            <img src="img/core-img/work-progress.png" alt="">
        </div>

        <div class="workflow-slides-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="mosh-workflow-slides owl-carousel">
                            <!-- Single Service Area -->
                            <div class="single-workflow-area d-flex">
                                <h2>1.</h2>
                                <div class="workflow-content ml-15">
                                    <h4>This is the first step</h4>
                                    <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul.</p>
                                </div>
                            </div>
                            <!-- Single Service Area -->
                            <div class="single-workflow-area d-flex">
                                <h2>2.</h2>
                                <div class="workflow-content ml-15">
                                    <h4>This is the second step</h4>
                                    <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul.</p>
                                </div>
                            </div>
                            <!-- Single Service Area -->
                            <div class="single-workflow-area d-flex">
                                <h2>3.</h2>
                                <div class="workflow-content ml-15">
                                    <h4>This is the third step</h4>
                                    <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul.</p>
                                </div>
                            </div>
                            <!-- Single Service Area -->
                            <div class="single-workflow-area d-flex">
                                <h2>4.</h2>
                                <div class="workflow-content ml-15">
                                    <h4>This is the fourth step</h4>
                                    <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque sit am et tellus blandit. Etiam nec odio vestibul.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Service Area End ***** -->--%>
    <section class="mosh-team-area section_padding_100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-md-10">
                    <div class="section-heading text-center">
                        <p></p>
                        <h2>Meet Our Incredible Team</h2>
                        <h5 class="mt-30">Success is not Destination,Success is a Journey!!. </h5>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="mosh-team-slides owl-carousel">
                        <!-- Single Team Slide -->
                        <div class="single-team-slide text-center">
                            <!-- Thumbnail -->
                            <div class="team-thumbnail">
                                <img src="img/bg-img/c-1.jpg" alt="">
                            </div>
                            <!-- Meta Info -->
                            <div class="team-meta-info">
                                <h4>Aruna C.Revadi</h4>
                                <span>Guide</span>
<%--                                <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque.</p>--%>
                            </div>
                            <!-- Social Info -->
                            <%--<div class="team-social-info">
                                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                            </div>--%>
                        </div>
                        <!-- Single Team Slide -->
                        <div class="single-team-slide text-center">
                            <!-- Thumbnail -->
                            <div class="team-thumbnail">
                                <img src="img/bg-img/c-2.jpg" alt="">
                            </div>
                            <!-- Meta Info -->
                            <div class="team-meta-info">
                                <h4>Shravan B</h4>
                                <span>Project Leader</span>
<%--                                <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque.</p>--%>
                            </div>
                            <!-- Social Info -->
                           <%-- <div class="team-social-info">
                                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                            </div>--%>
                        </div>
                        <!-- Single Team Slide -->
                        <div class="single-team-slide text-center">
                            <!-- Thumbnail -->
                            <div class="team-thumbnail">
                                <img src="img/bg-img/c-3.jpg" alt="">
                            </div>
                            <!-- Meta Info -->
                            <div class="team-meta-info">
                                <h4>Varun H</h4>
                                <span>Associate</span>
<%--                                <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque.</p>--%>
                            </div>
                            <!-- Social Info -->
                            <%--<div class="team-social-info">
                                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                            </div>--%>
                        </div>
                        <!-- Single Team Slide -->
                        <div class="single-team-slide text-center">
                            <!-- Thumbnail -->
                            <div class="team-thumbnail">
                                <img src="img/bg-img/c-2.jpg" alt="">
                            </div>
                            <!-- Meta Info -->
                            <div class="team-meta-info">
                                <h4>Prabhu D</h4>
                                <span>Associate</span>
<%--                                <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque.</p>--%>
                            </div>
                            <!-- Social Info -->
                           <%-- <div class="team-social-info">
                                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                            </div>--%>
                        </div>
                        <!-- Single Team Slide -->
                        <div class="single-team-slide text-center">
                            <!-- Thumbnail -->
                            <div class="team-thumbnail">
                                <img src="img/bg-img/c-2.jpg" alt="">
                            </div>
                            <!-- Meta Info -->
                            <div class="team-meta-info">
                                <h4>Santosh K</h4>
                                <span>Associate</span>
<%--                                <p>Etiam nec odio vestibulum est mattis effic iturut magna. Pellentesque.</p>--%>
                            </div>
                            <!-- Social Info -->
                           <%-- <div class="team-social-info">
                                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- ***** CTA Area Start ***** -->
    <section class="mosh-call-to-action-area bg-img bg-overlay section_padding_100" style="background-image: url(img/bg-img/cta.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="cta-content text-center wow fadeIn" data-wow-delay="0.5s">
                        <div class="section-heading">
                            <p>give us a shout</p>
                            <h2>Are you Ready to have a Talk?</h2>
                            <a href="contact.aspx" class="btn mosh-btn">Contact Us</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** CTA Area End ***** -->
</asp:Content>
