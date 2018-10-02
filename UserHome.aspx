<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="MicksDesignOnlineShop.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>UserHOME</title>
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Custom-cs.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "/Cart.aspx";
            });
        });
    </script>
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
                                        <li><a href="Products.aspx">All Products</a></li>
                                        <li role="separator" class="divider"></li>
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
                            <li>
                                <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                    Cart <span class="badge" id="pCount" runat="server"></span>
                                </button>
                            </li>
                            <li>
                                <asp:Button ID="btnSignin" runat="server" Class="btn btn-default  navbar-btn" Text="Signin" OnClick="btnSignin_Click" />
                            <asp:Button ID="btnSignOut" runat="server" Class="btn btn-default  navbar-btn" Text="SignOut" OnClick="btnSignOut_Onclick" />
                                </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <asp:Label ID="lblsuccess" runat="server" CssClass="text-success"></asp:Label>
     <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back on Top</a></p>
                <p>&copy; 2018 BIGMICKSOFTWARE.com &middot; <a href="Default.aspx">HOME</a> &middot</p>
            </div>
        </footer>
        <!---End footer-->
        
    </form>
   
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
