<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgetpass.aspx.cs" Inherits="MicksDesignOnlineShop.Forgetpass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Password</title>
      <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Custom-cs.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-header" href="Default.aspx"><span><img alt="logo" src="Images/tc only 512.png" height="40" /></span>MicksTecs</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li ><a href="Default.aspx">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li class="dropdown-header">MEN</li>
                                            <li role="separator" class="divider"></li>
                                        <li><a href="#">Shirts</a></li>
                                         <li><a href="#">Pants</a></li>
                                         <li><a href="#">Denims</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li class="dropdown-header">WOMEN</li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="#">Tops</a></li>
                                         <li><a href="#">Leggings</a></li>
                                         <li><a href="#">Denims</a></li>
                                    </ul>
                            </li>
                            
                            <li ><a href="SignIn.aspx">Sign In</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
     <div class="container">
         <div class="form-horizontal">
              <h2>Recover Password</h2>
             <hr />
             <h4>Please enter your Email address, we will send you  instruction to reset  your Password.</h4>
             <div class="form-group">
                 <asp:Label ID="lblEmail" CssClass="col-md-2 control-label" runat="server" Text="Your Email"></asp:Label>
                 <div class="col-md-3">
                     <asp:TextBox ID="tbEmailId" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="text-danger" runat="server" ErrorMessage="Please enter your Email ID" ControlToValidate="tbEmailId"></asp:RequiredFieldValidator>
                 </div>
             </div>
             <div class="form-group">
                 <div class="col-md-2"></div>
                 <div class="col-md-6">
                     <asp:Button ID="btpassRec" runat="server"  CssClass="btn btn-default" Text="Send" OnClick="btpassRec_Click" />
                     <asp:Label ID="lblpassRec" runat="server"></asp:Label>
                 </div>
             </div>
         </div>
     </div>
      <!---footer-->
        <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back on Top</a></p>
                <p>&copy; 2018 BIGMICKSOFTWARE.com &middot; <a href="Default.aspx">HOME</a> &middot</p>
            </div>
        </footer>
        <!---End footer-->
        
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
