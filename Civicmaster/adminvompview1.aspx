<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminvompview1.aspx.cs" Inherits="Civicmaster.adminvompview1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
         .auto-style9 {
             position: absolute;
             top: 880px;
             left: 659px;
             z-index: 1;
             width: 74px;
             font-weight: bold;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="welcome_area clearfix" id="home" style="background-image: url(img/bg-img/welcome-bg.png)"><br /><br /><br /><br /><br /><br />
        <div>
             

            <br />
             

     <h1 class="auto-style8" style="z-index: 1"><font color="yellow"><style="text-align:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u>Complaint Details</u></style></font></h1>
            
            <strong>
            <asp:Button ID="Button1" runat="server" Text="Print" CssClass="auto-style9" OnClick="Button1_Click" />

            </strong>
            
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

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<asp:Label ID="lbl9" runat="server" Text="Label" Font-Bold="True"></asp:Label><br /></font></b></asp:TableCell>



</asp:TableRow>
        <asp:TableRow runat="server">
             <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="white">&nbsp;&nbsp;Latitude</font></b></asp:TableCell>

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<asp:Label ID="lbl10" runat="server" Text="Label" Font-Bold="True"></asp:Label><br /></font></b></asp:TableCell>



</asp:TableRow>
        <asp:TableRow runat="server">
             <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="white">&nbsp;&nbsp;Longitude</font></b></asp:TableCell>

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<asp:Label ID="lbl11" runat="server" Text="Label" Font-Bold="True"></asp:Label><br /></font></b></asp:TableCell>



</asp:TableRow>
         <asp:TableRow runat="server">
    

    <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="white">&nbsp;&nbsp;Time/Date</font></b></asp:TableCell>

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<asp:Label ID="lbl12" runat="server" Font-Bold="True"></asp:Label><br /></font></b></asp:TableCell>

</asp:TableRow>

     <asp:TableRow runat="server">
    

    <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="white">&nbsp;&nbsp;Image</font></b></asp:TableCell>

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<center><a href="https://www.google.com/maps/@+document.getElementById('TextBox2.Text').value" target="_blank"><asp:Image ID="Image1" runat="server" height="100px" Width="100px"/></a></center><br /></font></b></asp:TableCell>

</asp:TableRow>   



       

    </asp:Table>

    </div>

        </section>
</asp:Content>
