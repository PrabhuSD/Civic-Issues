<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="assignworker.aspx.cs" Inherits="Civicmaster.assignworker" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .auto-style8 {
            position: absolute;
            top: 113px;
            left: 43px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 273px;
            left: 223px;
            z-index: 1;
            width: 348px;
        }
        .auto-style11 {
            position: absolute;
            top: 224px;
            left: 344px;
            z-index: 1;
            font-weight: bold;
            width: 105px;
        }
        .auto-style12 {
            position: absolute;
            top: 186px;
            left: 85px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 185px;
            left: 424px;
            z-index: 1;
            width: 171px;
        }
        .auto-style17 {
            width: 688px;
            height: 151px;
            position: absolute;
            top: 274px;
            left: 625px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 495px;
            left: 883px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 458px;
            left: 909px;
            z-index: 1;
            font-weight: bold;
            width: 158px;
        }
        .auto-style21 {
            position: absolute;
            top: 185px;
            left: 762px;
            z-index: 1;
            width: 279px;
        }
        .auto-style22 {
            position: absolute;
            top: 185px;
            left: 1017px;
            z-index: 1;
            width: 215px;
        }
        .auto-style23 {
            position: absolute;
            top: 222px;
            left: 944px;
            z-index: 1;
            width: 171px;
            font-weight: bold;
        }
        .auto-style24 {
            font-weight: bold;
            position: absolute;
            top: 624px;
            left: 908px;
            z-index: 1;
            width: 126px;
        }
        .auto-style25 {
            position: absolute;
            top: 587px;
            left: 880px;
            z-index: 1;
            width: 211px;
            font-weight: bold;
        }
        .auto-style26 {
            position: absolute;
            top: 828px;
            left: 307px;
            z-index: 1;
            font-weight: bold;
            width: 163px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <section class="welcome_area clearfix" id="home" style="background-image: url(img/bg-img/welcome-bg.png)"><strong>
         <asp:Button ID="Button5" runat="server" CssClass="auto-style26" OnClick="Button5_Click" Text="Generate pdf" />
         </strong><br /><br /><br />
         <strong>
         <asp:label runat="server" text="Enter the Complaint number to assign work:" CssClass="auto-style12"></asp:label>
         </strong>
         <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style13" ></asp:textbox> <strong> <asp:Button ID="button1" runat="server" text="Search" CssClass="auto-style11" OnClick="button1_Click" />
         </strong>
         <br />
         <h1 class="auto-style8"><font color="yellow"><style="text-align:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u>Assign Work</u></style></font></h1>
            
    <asp:Table id="table1" border="1" style="border-collapse: collapse"  cellspacing="1" runat="server" CssClass="auto-style10" BorderColor="#003300">
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

      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<asp:Label ID="lbl9" runat="server"  Font-Bold="True"></asp:Label><br /></font></b></asp:TableCell>



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
              <%--  --%>
      <asp:TableCell runat="server" width="77" height="16" align="left"> <b><font size="2" color="yellow">&nbsp;<center><a href="https://www.google.com/maps/@+document.getElementById('TextBox2.Text').value" target="_blank"><asp:Image ID="Image1" runat="server" height="100px" Width="100px"/></a></center><br /></font></b></asp:TableCell>

</asp:TableRow>   



       

    </asp:Table><br />
         <asp:Label ID="Label2" runat="server" Text="Please Select Complaint Category:" CssClass="auto-style21" Font-Bold="True"></asp:Label>
         <strong>
         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style22" >
             <asp:ListItem>Road Maintainance</asp:ListItem>
                <asp:ListItem>Potholes</asp:ListItem>
                <asp:ListItem>Garbage Dump</asp:ListItem>
            <asp:ListItem>Street light</asp:ListItem>
        </asp:DropDownList>

         <asp:Button ID="button2" runat="server" text="Find Workers" CssClass="auto-style23" OnClick="button2_Click" />

         </strong>
         <asp:GridView ID="GridView1" runat="server" CssClass="auto-style17" AutoGenerateColumns="False"
              DataKeyNames="id"  BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">  
                        <Columns>  
                            
                            <asp:TemplateField HeaderText="Worker_ID">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>  
                            <asp:TemplateField HeaderText="First Name">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("firstname") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("firstname") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>  
                            <asp:TemplateField HeaderText="Last Name">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("lname") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("lname") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>  
                             <asp:TemplateField HeaderText="Phone">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("phone") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField>  
                             <asp:TemplateField HeaderText="Email" HeaderStyle-HorizontalAlign="Right">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("email") %>'></asp:Label>  
                                </ItemTemplate>  

<HeaderStyle HorizontalAlign="Right"></HeaderStyle>

                            </asp:TemplateField> 
                             <asp:TemplateField HeaderText="DOB">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("dob") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("dob") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField> 
                             <asp:TemplateField HeaderText="Expert">  
                                <EditItemTemplate>  
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("expert") %>'></asp:TextBox>  
                                </EditItemTemplate>  
                                <ItemTemplate>  
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("expert") %>'></asp:Label>  
                                </ItemTemplate>  
                            </asp:TemplateField> 
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                           
                           
                           
                        </Columns>  
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
         </asp:GridView>
         &nbsp;&nbsp;&nbsp;
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <strong>
         <asp:Button ID="Button4" runat="server" CssClass="auto-style24" OnClick="Button4_Click" Text="Send Mail" />
         </strong>
         <br />
         <br />
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <strong>
         <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style25" />
         </strong>
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:ListBox ID="ListBox1" runat="server" Width="204px" CssClass="auto-style18"></asp:ListBox>
         <strong>
         <asp:Button ID="Button3" runat="server" Text="Extract Email" OnClick="Button3_Click" CssClass="auto-style20" />
         </strong>
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
        
        
   </section>
</asp:Content>
