<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Civicmaster.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UserLogin</title>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor2/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts2/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts2/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor2/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor2/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor2/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor2/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor2/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css2/util.css">
	<link rel="stylesheet" type="text/css" href="css2/main.css">
<!--===============================================================================================-->
    <script language="javascript" type="text/javascript">
        <!--
            function popitup(url)
            {
	            newwindow=window.open(url,'name','height=200,width=550,left=400,top=300');
	            if (window.focus) {newwindow.focus()}
	            return false;
            }

        // -->
    </script>
</head>
<body >
    <form id="form1" runat="server">
        <div>
            <div class="limiter">
		<div class="container-login100"  style="background-image:url(images/bg-01.jpg);  filter:alpha(opacity=1000); " >
			
            <div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55" style="background-color:whitesmoke">
           
				
					<span class="login100-form-title p-b-32">

						<center>Login</center>
					</span>

					<span class="txt1 p-b-11">
						Username
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
						<%--<input class="input100" type="text" name="username" >--%>
                        <asp:TextBox ID="TextBox1" runat="server" class="input100" type="text" name="username" required="required"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
					
					<span class="txt1 p-b-11">
						Password
					</span>
					<div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">
						<span class="btn-show-pass">
							<i class="fa fa-eye"></i>
						</span>
						<%--<input class="input100" type="password" name="pass" >--%>
                        <asp:TextBox ID="TextBox2" runat="server" class="input100" type="password" name="pass" required="required"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
					
					<div class="flex-sb-m w-full p-b-48">
						<div class="contact100-form-checkbox">
							<%--<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me" >--%>
							<label >
								<%--Remember me--%>
							</label>
						</div>

						<div>
							<a href="forgetpassword.aspx" onclick="return popitup('forgetpassword.aspx')" class="txt3">
								Forgot Password?
							</a><br />
                            <a href="UserRegister.aspx" class="txt3">
								Looking to create an Account?
							</a>
                            </div>
						
					</div>

					<div class="container-login100-form-btn">
						<%--<button class="login100-form-btn">--%>
                        <asp:Button ID="Button1" runat="server" Text="Login" class="login100-form-btn" OnClick="Button1_Click" />
							
						
					</div>

				
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor2/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor2/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor2/bootstrap/js/popper.js"></script>
	<script src="vendor2/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor2/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor2/daterangepicker/moment.min.js"></script>
	<script src="vendor2/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor2/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js2/main.js"></script>
        </div>
    </form>
</body>
</html>
