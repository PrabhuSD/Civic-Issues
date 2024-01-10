<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="removeworkers.aspx.cs" Inherits="Civicmaster.removeworkers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 706px;
            height: 151px;
            position: absolute;
            top: 234px;
            left: 357px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 481px;
            left: 644px;
            z-index: 1;
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
         <h2 class="auto-style9"><asp:label runat="server" text="Delete Workers" Font-Underline="True" ForeColor="Yellow"></asp:label></h2>
         
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   
                        DataKeyNames="id" CssClass="auto-style7" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">  
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
                  
                <td>  
                    <asp:Button ID="Button1" runat="server" Text="Remove Worker" CssClass="auto-style8" OnClick="Button1_Click" BackColor="#3F4EAF" BorderColor="Black" BorderStyle="Groove" ForeColor="Black" />  
                </td>  
                
         </section>
</asp:Content>           