﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="MicksDesignOnlineShop.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>SignUp</title>

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
                            <li><a href="Default.aspx">Home</a></li>
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
                            <li class="active"><a href="SignUp.aspx">Sign up</a></li>
                             <li><a href="#">Sign In</a></li>
                        </ul>
                    </div>
                   </div>
               </div>
            </div>
        <!----SignUp-->
        <div class="center-page">
            <label class="col-xs-11">UserName</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbUname" runat="server" Class="form-control" placeholder="UserName"></asp:TextBox>
                </div>
             <label class="col-xs-11">PassWord</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbPass" runat="server" Class="form-control" placeholder="PassWord" TextMode="Password"></asp:TextBox>
                </div>
            <label class="col-xs-11">ConfirmPassWord</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="ConfirmPassWord" TextMode="Password"></asp:TextBox>
                </div>
            <label class="col-xs-11">Name</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbName" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
                </div>
             <label class="col-xs-11">Email</label>
            <div class="col-xs-11">
            <asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                </div>
            <div class="col-xs-11 space-vert">
            <asp:Button ID="btSignup" runat="server" Class="btn btn-success" Text="Add User" OnClick="btSignup_Click" />
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </div>
        </div>

        <!----SignUp-->
        <!---footer-->
        <hr />
        <footer class="footer-pos">
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
