<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admincomview.aspx.cs" Inherits="Civicmaster.admincomview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
    <style type="text/css">
        .auto-style7 {
            width: 1350px;
            height: 151px;
            position: absolute;
            top: 254px;
            left: 0px;
            z-index: 1;
        }
        .auto-style8 {
            font-weight: bold;
            position: absolute;
            top: 177px;
            left: 226px;
            z-index: 1;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section class="welcome_area clearfix" id="home" style="background-image: url(img/bg-img/welcome-bg.png)"><br /><br /><br />
<br /><br /><br />
    <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Enter Complaint No to view complaint Details:</strong><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    <strong>
    <asp:Button ID="Button1" runat="server" Text="View Complaint Details" CssClass="auto-style8" OnClick="Button1_Click" />
    </strong>
    <asp:GridView ID="GridView1" runat="server" OnRowDataBound="OnRowDataBound"  AutoGenerateColumns="False"  CssClass="auto-style7" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" />
        <asp:BoundField DataField="phone" HeaderText="Phone" />
            <asp:BoundField DataField="requister" HeaderText="Requister" />
            <asp:BoundField DataField="compcategory" HeaderText="Compcategory" />
            <asp:BoundField DataField="comptype" HeaderText="Comptype" />
            <asp:BoundField DataField="compdesc" HeaderText="Compdesc" />
            <asp:BoundField DataField="town" HeaderText="Town" />
            <asp:BoundField DataField="doorno" HeaderText="Doorno" />
            <asp:BoundField DataField="address1" HeaderText="Address1" />
            <%--<asp:BoundField DataField="imagedata" HeaderText="Imagedata" />--%>
            <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
              <a href="https://www.google.com/maps/@+document.getElementById('TextBox2.Text').value" target="_blank">  <asp:Image ID="Image1" runat="server" Height="150px" Width="200px" /> </a>
<%--          <a href = "https://www.google.com/maps/@' + document.getElementById('txtName').value'"><asp:Image ID="Image1" runat="server" Height="150px" Width="200px" /></a>--%>
               
            </ItemTemplate>
        </asp:TemplateField>
            <asp:BoundField DataField="compno" HeaderText="Compno"  />
            <asp:BoundField DataField="compstatus" HeaderText="Compstatus" />
            <asp:BoundField DataField="latitude" HeaderText="Latitude" />
            <asp:BoundField DataField="longitude" HeaderText="Longitude" />
        
    </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
   
</section>
</asp:Content>
