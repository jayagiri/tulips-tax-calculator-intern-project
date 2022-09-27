<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Reset Your Password</title>

    <!-- Bootstrap -->
    
    
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collaspe" data-targert="#navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="Default.aspx" class="navbar-brand" style="color:#fff;">Income Tax Calculation</a>
                    </div>
                    <div class="navbar-collapse collapse" id="navbar-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="navbar-text" style="color:#fff;">Already have an account?</li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color:#fff;"><b>Login</b><b class="caret"></b></a>
                                <ul id="login-dp" class="dropdown-menu">
                                    <li>
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <asp:Label ID="Label1" runat="server" CssClass="sr-only" Text="Username"></asp:Label>
                                                    <asp:TextBox ID="TextBoxUserName" runat="server" placeholder="Username" CssClass="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Label ID="Label2" runat="server" CssClass="sr-only" Text="Password"></asp:Label>
                                                    <asp:TextBox ID="TextBoxPassWord" TextMode="Password" runat="server" placeholder="Password" CssClass="form-control"></asp:TextBox>
                                                    <div class="help-block text-right"><a href="#">Forget the password ?</a></div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Button ID="Sign_in" runat="server" CssClass="btn btn-primary btn-block" Text="Sign In" />
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                    <asp:CheckBox ID="CheckBox1" runat="server" />keep me logged-in
                                                     </label>
                                                </div>
                                            </div>
                                            <div class="bottom text-center">
                                                New here? <a href="SignUp.aspx"><b>Join us</b></a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        <div class="container">
            <div class="form-horizontal">
                <h3>Reset Password</h3>
                <hr/>
                <div class="form-group">
                    <asp:Label ID="lblmsg" runat="server" CssClass="col-sm-4 control-label" Font-Size="XX-Large" Font-Bold="true"></asp:Label>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblPassword" runat="server" Text="New Password" CssClass="col-sm-4 control-label" Visible="False"></asp:Label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="tbNewPass" runat="server" CssClass="form-control" placeholder="New Password" TextMode="Password" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ErrorMessage="Please enter your new password." ControlToValidate="tbNewPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblRetypePass" runat="server" Text="Confirm Password" CssClass="col-sm-4 control-label" Visible="False"></asp:Label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="tbConfirmPass" runat="server" CssClass="form-control" placeholder="Confirm Password" TextMode="Password" Visible="False"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidatorPass" runat="server" ErrorMessage="Both password must be same !" ControlToCompare="tbConfirmPass" ControlToValidate="tbNewPass" ForeColor="Red"></asp:CompareValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4">
                        <asp:Button ID="Button_RePass" runat="server" Text="Reset" CssClass="btn btn-primary btn-default" Visible="False" OnClick="Button_RePass_Click" />
                        
                    </div>
                </div>
            </div>
        </div>
            <!--footer-->
            <footer>
                <p>&copy; 2016 shresthaamol.com </p>
            </footer>
            <!--end of footer-->
    </div>
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>