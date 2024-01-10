<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="addworkers.aspx.cs" Inherits="Civicmaster.addworkers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   

    <style type="text/css">

        .auto-style8 {
            position: absolute;
            top: 301px;
            left: 339px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 277px;
            left: 339px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 277px;
            left: 643px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 301px;
            left: 643px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 357px;
            left: 339px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 380px;
            left: 339px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 431px;
            left: 339px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 454px;
            left: 339px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 501px;
            left: 339px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 533px;
            left: 339px;
            z-index: 1;
        }
        
        .auto-style20 {
            position: absolute;
            top: 579px;
            left: 339px;
            z-index: 1;
        }
        
        .auto-style21 {
            position: absolute;
            top: 620px;
            left: 339px;
            z-index: 1;
            width: 180px;
        }
        
        .auto-style22 {
            position: absolute;
            top: 686px;
            left: 446px;
            z-index: 1;
            width: 180px;
            font-weight: bold;
        }
         .auto-style9 {
        width: 441px;
        height: 28px;
        position: absolute;
        top: 138px;
        left: 603px;
        z-index: 1;
    }
        
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="welcome_area clearfix" id="home" style="background-image: url(img/bg-img/welcome-bg.png)"><br /><br /><br />

             <br />
        <h2 class="auto-style9"><asp:label runat="server" text="Register Worker" Font-Underline="True" ForeColor="Yellow"></asp:label></h2>
        <strong>
        <asp:Label ID="Label1" runat="server" Text="Firstname" CssClass="auto-style11"></asp:Label></strong><br />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style8"></asp:TextBox>
        <strong>
        <asp:Label ID="Label2" runat="server" Text="Lastname" CssClass="auto-style12"></asp:Label></strong><br />
         <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style13"></asp:TextBox>
        <strong>
        <asp:Label ID="Label3" runat="server" Text="Phone" CssClass="auto-style14"></asp:Label></strong><br />
         <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style15"></asp:TextBox>
        <strong>
        <asp:Label ID="Label4" runat="server" Text="Email" CssClass="auto-style16"></asp:Label></strong><br />
         <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style17"></asp:TextBox>
        <strong>
        <asp:Label ID="Label5" runat="server" Text="DOB" CssClass="auto-style18"></asp:Label></strong><br />
 <asp:TextBox  ID="TextBox5"  runat="server"    CssClass="auto-style19"></asp:TextBox>
        <strong>
        <asp:Label ID="Label6" runat="server" Text="Expert In" CssClass="auto-style20"></asp:Label></strong><br />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style21">
             <asp:ListItem>Road Maintainance</asp:ListItem>
                <asp:ListItem>Potholes</asp:ListItem>
                <asp:ListItem>Garbage Dump</asp:ListItem>
            <asp:ListItem>Street light</asp:ListItem>
        </asp:DropDownList>
        <strong>
        <asp:Button ID="Button1" runat="server" Text="Add Worker" CssClass="auto-style22" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3"
    ForeColor="Red" ValidationExpression="[0-9]{10}"
    Display = "Dynamic" ErrorMessage = "Enter valid mobile number"/>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3"
    ForeColor="Red" Display = "Dynamic"  /> 
<br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4"
    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
    Display = "Dynamic" ErrorMessage = "Invalid email address"/>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4"
    ForeColor="Red" Display = "Dynamic"  /></strong>
    </section>
</asp:Content>
