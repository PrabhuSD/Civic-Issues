<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="Civicmaster.forgetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(images/1.jpg)">
    <form id="form1" runat="server">
        <div>
            <center>
                Enter your Username:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                <asp:Button ID="Button1" runat="server" Text="Get your Password" OnClick="Button1_Click"></asp:Button>
                <asp:Label ID="Label1" runat="server" ></asp:Label>
            </center>
        </div>
    </form>
</body>
</html>
