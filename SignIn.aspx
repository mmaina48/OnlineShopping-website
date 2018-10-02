﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="MicksDesignOnlineShop.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>SignIn</title>

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
                            <li><a href="SignUp.aspx">Sign Up</a></li>
                            <li class="active"><a href="SignIn.aspx">Sign In</a></li>
                        </ul>
                    </div>
                </div>
            </div>
             </div>
        <!---Sign IN--> 
        <br/>
        <div class="container">
            <div class="form-horizontal">
                <h2>LOGIN PLEASE</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="UserName"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" CssClass="text-danger" runat="server" ErrorMessage="The Username is required" ControlToValidate="UserName"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorpass" runat="server" CssClass="text-danger" ErrorMessage="The Password is required"  ControlToValidate="Password"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember"></asp:Label>
                        </div>
                    </div>
                 <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="Button1" runat="server" Text="LOGIN" CssClass="btn btn-default" OnClick="Button1_Click" />
                        <asp:LinkButton ID="LinkButton1" runat="server"  PostBackUrl="~/SignUp.aspx" >Sign Up</asp:LinkButton>
                        </div>
                    </div>
                <div class="form-group"> 
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                     <asp:LinkButton ID="lbForgetpass" runat="server" PostBackUrl="~/Forgetpass.aspx" >Forgot Password !</asp:LinkButton>
                    </div>

                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Label ID="lblError" CssClass="text-danger" runat="server" ></asp:Label>
                        </div>
                    </div>

            </div>
            
        </div>

        <!---Sign IN-->
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
