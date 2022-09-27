<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Sign Up</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Style.css" rel="stylesheet" />

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
            <!--navbar-->
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="Default.aspx" class="navbar-brand" style="color:#fff;"><b>Income Tax Calculation</b></a>
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
                                                    <label class="sr-only" for="exampleInputEmail2">Username</label>
                                                    <asp:TextBox ID="TextBoxUserName" runat="server" placeholder="Username" CssClass="form-control"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label class="sr-only" for="exampleInputPassword2">Password</label>
                                                    <asp:TextBox ID="TextBoxPassWord" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                                    <div class="help-block text-right"><a href="ForgotPassword.aspx">Forget the password ?</a></div>
                                                </div>
                                                <div class="form-group">
                                                    <asp:Button ID="Sign_in" CssClass="btn btn-primary btn-block" runat="server" Text="Sign In" OnClick="Sign_in_Click" CausesValidation="false"/>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                    <asp:CheckBox ID="CheckBox1" runat="server" />keep me logged-in
                                                     </label>
                                                </div>
                                            </div>
                                            <div class="bottom text-center">
                                                New here ? <a href="#"><b>Join Us</b></a>
                                            </div>
                                        </div>
                                    </li>

                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--end of navbar-->
            <div class="container">
                <h2 style="color:#257BD2;">Sign Up</h2>
                <hr />
            </div>

            <!--Signup page-->
            <div class="container">
                <div class="form-horizontal">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" CssClass="col-sm-4 control-label" Text="Name"></asp:Label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="tbName" CssClass="form-control" runat="server" placeholder="Name"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tbName" runat="server" ErrorMessage="Please enter your name." ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                     <div class="form-group">
                        <asp:Label ID="Label2" runat="server" CssClass="col-sm-4 control-label" Text="Gender"></asp:Label>
                         <div class="col-sm-4">
                             <asp:DropDownList ID="DropDownListGender" runat="server" CssClass="form-control">
                                 <asp:ListItem>Select</asp:ListItem>
                                 <asp:ListItem>Male</asp:ListItem>
                                 <asp:ListItem>Female</asp:ListItem>
                             </asp:DropDownList>
                         </div>
                         <div class="col-sm-4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="DropDownListGender" runat="server" ErrorMessage="Please select your Gender." ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" CssClass="col-sm-4 control-label" Text="Marital Status"></asp:Label>
                         <div class="col-sm-4">
                             <asp:DropDownList ID="DropDownListMStatus" runat="server" CssClass="form-control">
                                 <asp:ListItem>Select</asp:ListItem>
                                 <asp:ListItem>Single</asp:ListItem>
                                 <asp:ListItem>Married</asp:ListItem>
                                 <asp:ListItem>Divorced</asp:ListItem>
                                 <asp:ListItem>Disabled Single</asp:ListItem>
                             </asp:DropDownList>
                         </div>
                        <div class="col-sm-4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="DropDownListMStatus" runat="server" ErrorMessage="Please select your Marital Status." ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" CssClass="col-sm-4 control-label" Text="Username"></asp:Label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="tbUname" CssClass="form-control" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <asp:Label ID="Label7" runat="server" Text="Label" Visible="False" ForeColor="Red"></asp:Label>    
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="tbUname" runat="server" ErrorMessage="Please enter your Username." ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label8" runat="server" CssClass="col-sm-4 control-label" Text="Email"></asp:Label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="tbEmail" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="tbEmail" ForeColor="Red" runat="server" ErrorMessage="Enter Email Address."></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="tbEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="Please enter valid Email." ForeColor="Red"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" CssClass="col-sm-4 control-label" Text="Password"></asp:Label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="tbPassword" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="tbPassword" runat="server" ErrorMessage="Please enter your Password." ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" CssClass="col-sm-4 control-label" Text="Confirm Password"></asp:Label>
                        <div class="col-sm-4">
                            <asp:TextBox ID="tbCPassword" CssClass="form-control" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="col-sm-4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="tbCPassword" runat="server" ErrorMessage="Please confirm your Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-4"></div>
                        <div class="col-sm-4">
                            <asp:Button ID="BtSignUp" runat="server" class="btn btn-primary btn-block" Text="Sign Up" OnClick="BtSignUp_Click" />
                        </div>
                    </div>
                </div>
            </div>

            <!--end of signup page-->

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
