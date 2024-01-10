<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="Civicmaster.changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            position: absolute;
            top: 145px;
            left: 0px;
        }
        .auto-style6 {
            position: absolute;
            top: 145px;
            left: 1px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 318px;
            left: 623px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 320px;
            left: 478px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 316px;
            left: 805px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 373px;
            left: 622px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 375px;
            left: 494px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 371px;
            left: 805px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 422px;
            left: 623px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 422px;
            left: 473px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 421px;
            left: 805px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 456px;
            left: 628px;
            z-index: 1;
        }
        .auto-style24 {
        position: absolute;
        top: 490px;
        left: 645px;
        z-index: 1;
        width: 106px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <section class="welcome_area clearfix" id="home" style="background-image: url(img/bg-img/welcome-bg.png)"><br /><br /><br /><br /><br /><br />
             <div>
                  <asp:Label ID="Label1" runat="server" Text="Current password:" Width="178px"
            Font-Bold="True" ForeColor="Black" CssClass="auto-style12"></asp:Label>
        <asp:TextBox ID="txt_cpassword" runat="server" TextMode="Password"  CssClass="auto-style11"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ControlToValidate="txt_cpassword"
            ErrorMessage="Please enter Current password" CssClass="auto-style14"></asp:RequiredFieldValidator>
        <br />
         <asp:Label ID="Label2" runat="server" Text="New password:" Width="120px"
            Font-Bold="True" ForeColor="Black" CssClass="auto-style16"></asp:Label>
        <asp:TextBox ID="txt_npassword" runat="server" TextMode="Password"  CssClass="auto-style15"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
            ControlToValidate="txt_npassword" ErrorMessage="Please enter New password" CssClass="auto-style18"></asp:RequiredFieldValidator>
        <br />
       
         <asp:Label ID="Label3" runat="server" Text="Confirm password:" Width="210px"
            Font-Bold="True" ForeColor="Black"  CssClass="auto-style20"></asp:Label>

        <asp:TextBox ID="txt_ccpassword" runat="server" TextMode="Password" CssClass="auto-style19" ></asp:TextBox>   

        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
            ControlToValidate="txt_ccpassword"
            ErrorMessage="Please enter Confirm  password" CssClass="auto-style21"></asp:RequiredFieldValidator>

        <asp:CompareValidator ID="CompareValidator1" runat="server"
            ControlToCompare="txt_npassword" ControlToValidate="txt_ccpassword"
            ErrorMessage="Password Mismatch" CssClass="auto-style22"></asp:CompareValidator>   
    </div>
    <asp:Button ID="btn_update" runat="server" Font-Bold="True" BackColor="#CCFF99"  Text="Update" CssClass="auto-style24" OnClick="btn_update_Click" />
             </div>
</section>
</asp:Content>
