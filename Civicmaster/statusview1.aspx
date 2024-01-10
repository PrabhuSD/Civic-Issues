<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.Master" AutoEventWireup="true" CodeBehind="statusview1.aspx.cs" Inherits="Civicmaster.statusview1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            position: absolute;
            top: 305px;
            left: 460px;
            z-index: 1;
            width: 447px;
            height: 443px;
        }
        .auto-style8 {
            width: 1153px;
            height: 38px;
            position: absolute;
            top: 168px;
            left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="welcome_area clearfix" id="home" style="background-image: url(img/bg-img/welcome-bg.png)"><br /><br /><br /><br /><br /><br />
        <div>
             

            <br />
             

     <h1 class="auto-style8" style="z-index: 1"><font color="yellow"><style="text-align:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u>Complaint Details</u></style></font></h1>
            
    <asp:Table id="table1" border="1" style="border-collapse: collapse"  cellspacing="1" runat="server" CssClass="auto-style7" BorderColor="#003300">
 <asp:TableRow runat="server">
    

    <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="white">&nbsp;&nbsp;Phone</font></b></asp:TableCell>

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<asp:Label ID="lbl1" runat="server" Font-Bold="True"></asp:Label><br /></font></b></asp:TableCell>

</asp:TableRow>
    <asp:TableRow runat="server">
    

    <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="white">&nbsp;&nbsp;Email</font></b></asp:TableCell>

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<asp:Label ID="lbl2" runat="server" Font-Bold="True"></asp:Label><br /></font></b></asp:TableCell>

</asp:TableRow>
    <asp:TableRow runat="server">
    

    <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="white">&nbsp;&nbsp;Requister</font></b></asp:TableCell>

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<asp:Label ID="lbl3" runat="server" Font-Bold="True"></asp:Label><br /></font></b></asp:TableCell>

</asp:TableRow>
    <asp:TableRow runat="server">
    

    <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="white">&nbsp;&nbsp;Complaint&nbsp;&nbsp;Category</font></b></asp:TableCell>

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<asp:Label ID="lbl4" runat="server" Font-Bold="True"></asp:Label><br /></font></b></asp:TableCell>

</asp:TableRow>        <asp:TableRow runat="server">
    

    <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="white">&nbsp;&nbsp;Complaint Type</font></b></asp:TableCell>

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<asp:Label ID="lbl5" runat="server" Font-Bold="True"></asp:Label><br /></font></b></asp:TableCell>

</asp:TableRow>
        
         <asp:TableRow runat="server">
    

    <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="white">&nbsp;&nbsp;Area</font></b></asp:TableCell>

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label><br /></font></b></asp:TableCell>
</asp:TableRow>
         <asp:TableRow runat="server">

             <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="white">&nbsp;&nbsp;Town</font></b></asp:TableCell>

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<asp:Label ID="lbl6" runat="server" Font-Bold="True"></asp:Label><br /></font></b></asp:TableCell>
</asp:TableRow>
         <asp:TableRow runat="server">
             <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="white">&nbsp;&nbsp;Door No</font></b></asp:TableCell>

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<asp:Label ID="lbl7" runat="server" Font-Bold="True"></asp:Label><br /></font></b></asp:TableCell>

             </asp:TableRow>
         <asp:TableRow runat="server">
             <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="white">&nbsp;&nbsp;Status</font></b></asp:TableCell>

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<asp:Label ID="lbl8" runat="server" Font-Bold="True"></asp:Label><br /></font></b></asp:TableCell>



</asp:TableRow>
        <asp:TableRow runat="server">
             <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="white">&nbsp;&nbsp;Complaint Desc</font></b></asp:TableCell>

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<asp:Label ID="lbl9" runat="server" Text="Label" Font-Bold="True">></asp:Label><br /></font></b></asp:TableCell>



</asp:TableRow>
         <asp:TableRow runat="server">
             <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="white">&nbsp;&nbsp;Time</font></b></asp:TableCell>

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<asp:Label ID="lbl20" runat="server" Text="Label" Font-Bold="True">></asp:Label><br /></font></b></asp:TableCell>



</asp:TableRow>
     <asp:TableRow runat="server">
    

    <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="white">&nbsp;&nbsp;Image</font></b></asp:TableCell>

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2">&nbsp;<center><asp:Image ID="Image1" runat="server" height="100px" Width="100px"/></center><br /></font></b></asp:TableCell>

</asp:TableRow>   



       

    </asp:Table>

    </div>

        </section>
</asp:Content>
