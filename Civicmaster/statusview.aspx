<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.Master" AutoEventWireup="true" CodeBehind="statusview.aspx.cs" Inherits="Civicmaster.statusview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            position: absolute;
            top: 302px;
            left: 643px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 306px;
            left: 457px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 342px;
            left: 617px;
            z-index: 1;
            width: 89px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="welcome_area clearfix" id="home" style="background-image: url(img/bg-img/welcome-bg.png)"><br /><br /><br />
<%--        <font color="white" CssClass="auto-style7">Enter the Complaint No:</font>--%>
        <strong>
        <asp:Label ID="Label1" runat="server" Text="Enter the Complaint No:" ForeColor="White" CssClass="auto-style7"></asp:Label>
        </strong>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5"></asp:TextBox>
        <strong>
            <asp:Button ID="Button1" runat="server" Text="View" OnClick="Button1_Click" CssClass="auto-style9"  />
        </strong>
        </section>
</asp:Content>
