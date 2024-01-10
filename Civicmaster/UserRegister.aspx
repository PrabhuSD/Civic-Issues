<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="Civicmaster.UserRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    

    <!-- Icons font CSS-->
    <link href="vendor1/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor1/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor1/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor1/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css1/main.css" rel="stylesheet" media="all">
    <style type="text/css">
        .auto-style1 {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
           <div class="wrapper wrapper--w680">
            <%--<div style="background-color:black">
        <div style="background-color:burlywood">--%>
            <div class="card card-4">
              <div style="background-color: lightblue">
                <div class="card-body ">
                    <h2 class="title">CIVIC ISSUES<center>Registration Form</center></h2>
                    
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">first name</label>
                                   <%-- <input class="input--style-4" type="text" name="first_name">--%>
                <asp:TextBox ID="TextBox1" runat="server" required="required" class="input--style-4"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">last name</label>
                                    <%--<input class="input--style-4" type="text" name="last_name">--%>
                    <asp:TextBox ID="TextBox2" runat="server" required="required" class="input--style-4"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">DOB</label>
                                    <div class="input-group-icon">
 <%--   <input class="input--style-4 js-datepicker" type="text" name="birthday">--%>
                        <asp:TextBox ID="TextBox3" runat="server" required="required" class="input--style-4 js-datepicker"></asp:TextBox>
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Gender</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">Male
                                           <%-- <input type="radio" checked="checked" name="gender">--%>
                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender"    />
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Female
                                           <%-- <input type="radio" name="gender">--%>
                                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" />
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <%--<input class="input--style-4" type="email" name="email">--%>
                            <asp:TextBox ID="TextBox4" runat="server" required="required" class="input--style-4" ></asp:TextBox>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4"
    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
    Display = "Dynamic" ErrorMessage = "Invalid email address"/>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4"
    ForeColor="Red" Display = "Dynamic"  />
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Phone Number</label>
                                    <%--<input class="input--style-4" type="text" name="phone">--%>
                                <asp:TextBox ID="TextBox5" runat="server" required="required"  class="input--style-4"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5"
    ForeColor="Red" ValidationExpression="[0-9]{10}"
    Display = "Dynamic" ErrorMessage = "Enter valid mobile number"/>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5"
    ForeColor="Red" Display = "Dynamic"  /> 
                                </div>

                            </div>

                        </div>
                    

                      <%--  </div>--%>

                                          <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Address</label>
                                    <%--<input class="input--style-4" type="text" name="phone">--%>
                                    <asp:TextBox ID="TextBox6" runat="server" required="required" class="input--style-4" type="text" Width="548px"></asp:TextBox>
                                </div>
                            </div>
                      <%--  </div>--%>
                <div class="col-2">
                                <div class="input-group">
                                    <label class="label">UserName</label>
                                    <%--<input class="input--style-4" type="text" name="phone">--%>
                                <asp:TextBox ID="TextBox7" runat="server" required="required" class="input--style-4" ></asp:TextBox>
                                    
                                </div>

                            </div>

                        <%--<div class="input-group">
                            
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="subject">
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option>Subject 1</option>
                                    <option>Subject 2</option>
                                    <option>Subject 3</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>--%>
                        <div class="p-t-0">
                            <center class="auto-style1">
                            <%--<button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>--%>
                                <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn--radius-1 btn--blue" Height="38px" Width="540px" OnClick="Button1_Click"></asp:Button>
                                </center>
                        </div>
                    
                </div>
            </div>
        </div>
    </div>
<asp:Literal ID="LitPass" runat="server"></asp:Literal>
<asp:Literal ID="LitSucess" runat="server"></asp:Literal>
    <!-- Jquery JS-->
    <script src="vendor1/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor1/select2/select2.min.js"></script>
    <script src="vendor1/datepicker/moment.min.js"></script>
    <script src="vendor1/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js1/global.js"></script>

        </div>
    </form>
</body>
</html>
