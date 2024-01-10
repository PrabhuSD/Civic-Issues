<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.Master" AutoEventWireup="true" CodeBehind="complaintreg.aspx.cs" Inherits="Civicmaster.complaintreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            display: inline-block;
            padding-top: .3125rem;
            padding-bottom: .3125rem;
            margin-right: 1rem;
            font-size: 1.25rem;
            line-height: inherit;
            white-space: nowrap;
            width: 401px;
            position: absolute;
            top: 189px;
            left: 840px;
            z-index: 1;
            height: 298px;
        }
        .auto-style8 {
            width: 137px;
            height: 23px;
            position: absolute;
            top: 530px;
            left: 840px;
            z-index: 1;
        }
        .auto-style9 {
            width: 137px;
            height: 22px;
            position: absolute;
            top: 529px;
            left: 1002px;
            z-index: 1;
        }
        .auto-style10 {
            width: 137px;
            height: 15px;
            position: absolute;
            top: 504px;
            left: 840px;
            z-index: 1;
        }
        .auto-style11 {
            width: 137px;
            height: 15px;
            position: absolute;
            top: 504px;
            left: 1000px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 907px;
            left: 411px;
            z-index: 1;
            width: 128px;
        }
        .auto-style13 {
            position: absolute;
            top: 908px;
            left: 547px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 875px;
            left: 409px;
            z-index: 1;
        }
    .auto-style15 {
        width: 1189px;
        height: 28px;
        position: absolute;
        top: 101px;
        left: 0px;
        z-index: 1;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="welcome_area clearfix" id="home" style="background-image: url(img/bg-img/welcome-bg.png)"><br /><br /><br />
   

             <br />
        &nbsp;&nbsp;
        <br />
        <br /><center><h2 class="auto-style15"><font color="white"><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <u> Complaint Registration</u></font></h2> </center>
        <br />
        <br />
            
           &nbsp;&nbsp;&nbsp;&nbsp;<strong>Phone:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Email:</strong><br />
       &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" required="required"></asp:TextBox> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" required="required"></asp:TextBox> 
        <br />
          &nbsp;&nbsp;&nbsp;  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1"
    ForeColor="Red" ValidationExpression="[0-9]{10}"
    Display = "Dynamic" ErrorMessage = "Enter valid mobile number"/>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
    ForeColor="Red" Display = "Dynamic"  /> 

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2"
    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
    Display = "Dynamic" ErrorMessage = "Invalid email address"/>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
    ForeColor="Red" Display = "Dynamic"  />
        <br />
        <br />
       &nbsp;&nbsp;&nbsp; <strong>Name of the Requister:</strong><br />
       &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" required="required"></asp:TextBox>
        <br />
        <br />
        <br />
       &nbsp;&nbsp;&nbsp; <strong>Complaint Category:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Complaint Type:</strong><br />
       &nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" required="required" Height="24px" Width="173px" DataTextField="category" DataValueField="ccategoryid" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" required="required" Height="24px" Width="173px" DataTextField="complainttype" DataValueField="comptypeid">
        </asp:DropDownList>
        <br />
        <br />
        <br />
       &nbsp;&nbsp;&nbsp; <strong>Complaint Description:</strong><br />
       &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Height="53px" MaxLength="300" TextMode="MultiLine" Width="336px" required="required"></asp:TextBox>
        <br />
        <br />
       &nbsp;&nbsp;&nbsp; <strong>Location of the Complaint</strong><br />
        &nbsp;&nbsp;&nbsp;<strong>Area:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Zone:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Town:</strong><br />
&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server" required="required"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" required="required"  Height="24px" Width="173px" DataTextField="zone" DataValueField="zoneid" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList4" runat="server" required="required" Height="24px" Width="173px" DataTextField="place" DataValueField="placeid" ></asp:DropDownList>
        <br />
        <br />
       &nbsp;&nbsp;&nbsp; <strong>Door no:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong> Address1:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Address2:</strong><br />
       &nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox6" runat="server" OnSelectedIndexChanged = ""></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" required="required"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox8" runat="server" required="required"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;<strong>Pincode:</strong><br />
&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox9" runat="server" required="required"></asp:TextBox>
        <br />
        <br />
       &nbsp;&nbsp;&nbsp; Upload Photo:<br />
       &nbsp;&nbsp;&nbsp; <asp:FileUpload ID="FileUpload1" runat="server" />
            &nbsp;
            <asp:Label ID="lblmessage1" runat="server" Text="Label"></asp:Label><br />
             <br />
            &nbsp;&nbsp;&nbsp; <strong>Security Code :</strong>
            <asp:Image ID="imgCaptcha" runat="server" ImageUrl="~/captchaimage.aspx" /><br /><br />
             &nbsp;&nbsp;&nbsp;   <strong>   <asp:Label ID="Label3" runat="server" Text="Type the Security Code here:" CssClass="auto-style14"></asp:Label></strong><asp:TextBox ID="txtCaptchaText" runat="server" CssClass="auto-style12"></asp:TextBox> <br />
             &nbsp;&nbsp;&nbsp; <asp:Label ID="lblMessage" runat="server" CssClass="auto-style13" /><br />
            <asp:DropDownList ID="DropDownList5" runat="server" Visible="False">
                <asp:ListItem>Complaint Submitted</asp:ListItem>
                <asp:ListItem>Work Under Process</asp:ListItem>
                <asp:ListItem>Work Completed</asp:ListItem>
             </asp:DropDownList>
           <center> <asp:Button ID="Button2" runat="server" Text="Post a complaint" class="btn btn-primary" OnClick="btnSubmit_Click" /> </center><br />
             <asp:Literal ID="LitPass" runat="server"></asp:Literal>
                   <asp:Literal ID="LitSucess" runat="server"></asp:Literal>
             <div>
           
        
   
            <asp:TextBox runat="server" ID="LatitudeTextBox" Text="16.1852430630102" CssClass="auto-style8" />
        
            <asp:TextBox runat="server" ID="LongitudeTextBox" Text="75.70771180434417" CssClass="auto-style9" />
        
            <asp:TextBox runat="server" ID="Address" type="text"  style="width:600px;" Visible="False"/>
    
<div id="map_canvas" class="auto-style5">
</div>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script>
<script type="text/javascript">

    var map;
    var marker;
    var geocoder = new google.maps.Geocoder();
    var latitudeTextBox = $("#<%= LatitudeTextBox.ClientID %>");
    var longitudeTextBox = $("#<%= LongitudeTextBox.ClientID %>");
     var address = $("#<%= Address.ClientID %>");

    function initialize() {

        var centerLatlng = new google.maps.LatLng(latitudeTextBox.val(), longitudeTextBox.val(),address.val());

        var mapOptions = {
            zoom: 10,
            center: centerLatlng,
            scrollwheel: false,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            mapTypeControl: true,
            mapTypeControlOptions: { style: google.maps.MapTypeControlStyle.DEFAULT },
            navigationControl: true,
            navigationControlOptions: { style: google.maps.NavigationControlStyle.DEFAULT }
        };

        map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);

        marker = new google.maps.Marker({
            draggable: true,
            map: map,
            position: centerLatlng
        });
         geocoder.geocode({ 'latLng': centerLatlng }, function (results, status)
            {
            if (status == google.maps.GeocoderStatus.OK) {
                        if (results[0]) {
                            $('#address').val(results[0].formatted_address);
                            infowindow.setContent(results[0].formatted_address);
                            infowindow.open(map, marker);
                                 infowindow.open(map, marker);
                        }
                    }
                });

        google.maps.event.addListener(marker, 'dragend', function() {
            var curLatLng = marker.getPosition();
            latitudeTextBox.val(curLatLng.lat());
            longitudeTextBox.val(curLatLng.lng());
            address.val(curLatLng.geocode());
        });

        google.maps.event.trigger(marker, "click");

    }

    google.maps.event.addDomListener(window, 'load', initialize);
    geocoder.geocode({'latLng': marker.getPosition()}, function(results, status) {
                    if (status == google.maps.GeocoderStatus.OK) {
                        if (results[0]) {
                $('#address').val(results[0].formatted_address);
                             infowindow.setContent(results[0].formatted_address);
                            infowindow.open(map, marker);
                        }
                    }
                });
         
    

</script>
                
        </div>
        <strong>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text="Latitude:"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Longitude:" CssClass="auto-style11" ></asp:Label>
            
        </strong>
            
       
   
</section>
</asp:Content>
