<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserPage.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Income Tax Calculator</title>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
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
            <!--navbar-->
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="UserPage.aspx" class="navbar-brand" style="color:#fff;">Income Tax Calculation</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="navbar-text" style="color:#fff;">
                                <asp:Label ID="Label_welcome" runat="server" Text="Welcome, "></asp:Label></li>
                            <li>
                                <asp:LinkButton ID="B_logout" runat="server" OnClick="B_logout_Click"><b style="color:#fff;">Logout</b></asp:LinkButton>
                                
                             </li>   
                        </ul>
                    </div>
                </div>
            </div>

            <!--end of navbar-->
            <!--end of navbar-->
            <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>            
            <!--menu bar-->
            <div class="container menu">
                <div class="row">
                    <div class="col-sm-6">
                        <b style="color:#fff;">Filing Status:</b>
                                <asp:DropDownList ID="drpfilingstatus" runat="server" CssClass="form-control" Width="160px">
                                    <asp:ListItem Value="0">Single</asp:ListItem>
                                    <asp:ListItem Value="1">Married</asp:ListItem>
                                    <asp:ListItem Value="2">Divorced</asp:ListItem>
                                    <asp:ListItem Value="3">Disabled Single</asp:ListItem>
                                    <asp:ListItem Value="4">Disabled Married</asp:ListItem>
                                </asp:DropDownList>
                    </div>
                    <div class="col-sm-6">
                        <b style="color:#fff;">Year:</b>
                        <asp:DropDownList ID="year" runat="server" class="form-control" Width="160px">
                            
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <!--end of menu bar-->

            <!--main body part-->
            <div class="container main-body">
                <div class="row">
                    <div class="col-sm-6">
                        <br />

                        <table class="nav-justified table1">
                            <tr style="background-color: #0C58A4">
                                <td><b>Annual Income</b></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Salary (with Grade)</td>
                                <td>
                                    <asp:TextBox ID="salary" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td>Bonus</td>
                                <td>
                                    <asp:TextBox ID="bonus" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Over Time Payment</td>
                                <td>
                                    <asp:TextBox ID="ot" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Entertainment and Transportation Allowances</td>
                                <td>
                                    <asp:TextBox ID="eta" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Leave Pay</td>
                                <td>
                                    <asp:TextBox ID="leave" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Prizes, Gifts</td>
                                <td>
                                    <asp:TextBox ID="pg" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Payment for other Facilitations</td>
                                <td>
                                    <asp:TextBox ID="pof" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Dearness Allowances</td>
                                <td>
                                    <asp:TextBox ID="da" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Cost of Living Allowances</td>
                                <td>
                                    <asp:TextBox ID="cla" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Rent Allowances</td>
                                <td>
                                    <asp:TextBox ID="ra" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Discharge or Reimbursements of personal Costs</td>
                                <td>
                                    <asp:TextBox ID="drpc" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Payment to the Agreement to any Conditions of the Employment (Section 8.2.d)</td>
                                <td>
                                    <asp:TextBox ID="prlte" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Payment for Redundancy or Loss or Termination of the Employment (Section 8.2.e)</td>
                                <td>
                                    <asp:TextBox ID="rcrp" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Retirement Contributions and Retirement Payments (Section 8.2.f)</td>
                                <td>
                                    <asp:TextBox ID="pace" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Fringe Benefit for Vehicle Facility (Section 27.1.b.1)</td>
                                <td>
                                    <asp:TextBox ID="fbvf" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Fringe Benefit for House Facility (Section 27.1.b.2)</td>
                                <td>
                                    <asp:TextBox ID="fbhf" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Fringe Benefit for Housekeeper, Chauffeur, Gardener, or other domestic Assistant (Section 27.1.c.1)</td>
                                <td>
                                    <asp:TextBox ID="fbhcgoda" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Fringe Benefit for any Meal, Refreshment, or Entertainment (Section 27.1.c.2)</td>
                                <td>
                                    <asp:TextBox ID="fbmre" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Fringe Benefit for Drinking Water, Electricity, Telephone, and similar Utilities (Section 27.1.c.3)</td>
                                <td>
                                    <asp:TextBox ID="fbdwetsu" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Difference of actual Interest and Interest as per Market Rate in Case of a Soft Loan (Section 25.1.d)</td>
                                <td>
                                    <asp:TextBox ID="daimrs" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Other Amounts to be included in remuneration (as per attached List)</td>
                                <td>
                                    <asp:TextBox ID="oair" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Others</td>
                                <td>
                                    <asp:TextBox ID="others" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>


                        </table>
                    </div>
                    <br />
                    <div class="col-sm-6">
                        <table class="nav-justified table1">
                            <tr style="background-color:#0C58A4">
                                <td><b>Annual Deduction</b></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Employees Provident Fund</td>
                                <td>
                                    <asp:TextBox ID="epf" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td>Citizen Investment Trust</td>
                                <td>
                                    <asp:TextBox ID="cfi" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td>Insurance</td>
                                <td>
                                    <asp:TextBox ID="Insurance" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox>
                                </td>
                            </tr>
                           
                        </table>

                    </div>
                </div>
            </div>
            <!--end of main body part-->
            
            <!--medical expenses-->
            <div class="container main-body">
                <div class="row">
                    <div class="col-sm-6">
                        <table class="nav-justified table1">
                            <tr>
                                <td>
                                    <b>Annual Medical Expenses</b></td>
                                <td>
                                    <asp:TextBox ID="ame" runat="server" CssClass="form-control" TextMode="Number" placeholder="Rs."></asp:TextBox></td>
                            </tr>
                        </table>
                    </div>
                    
                </div>
            </div>
            <!--medical expenses-->
            <br/>

            <!--tax button-->
            
                <div class="container">
                    <div class="calculate">
                        
                        <asp:Button ID="calculate" runat="server" Text="Calculate"  OnClick="calculate_Click" CssClass="btn btn-primary btn-default" />
                        <asp:Panel ID="Panelcalculation" runat="server" Visible="false">
                            <table class="nav-justified">
                                <tr>
                                    <td>
                                        <asp:Label ID="LabelAI" runat="server" Text="Assessable Income" Font-Bold="true" CssClass="clr"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="AssessableIncome" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="LabelMT" runat="server" Text="Medical Tax" Font-Bold="true" CssClass="clr"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="MedicalTax" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="LabelNTL" runat="server" Text="Net Tax Liability" Font-Bold="true" CssClass="clr"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="NetTaxLiability" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <asp:Label ID="Labeltxt" runat="server" visible="false" ForeColor="White" Font-Bold="true"></asp:Label></td>
                                </tr>
                             </table>
                        </asp:Panel>

                        
                    </div>
                    <asp:Button ID="Save" runat="server" Text="Save" CssClass="btn btn-primary btn-success" OnClick="Save_Click" />
                    <asp:Label ID="LabelSave" runat="server" Font-Bold="true" Font-Size="Large" Visible="false"></asp:Label>
                </div>
           
            
            <!--tax button-->
                </ContentTemplate></asp:UpdatePanel>

            <!--footer-->
            <footer>
                <p>&copy; 2016 shresthaamol.com </p>
            </footer>
            <!--end of footer-->

        </div>
    </form>
   
</body>
        
    
</html>
