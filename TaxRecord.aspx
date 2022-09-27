<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TaxRecord.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Tax Record</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


    <style type="text/css">
        #cal {
            background-color: #D2D2D2;
        }

        #amee {
            background-color: #D2D2D2;
        }

        #kar {
            background-color: #D2D2D2;
        }

        #annual {
            background-color: #78B4F2;
        }

        #tot {
            background-color: #0C58A4;
        }

        #as {
            background-color: #D2D2D2;
        }

        #navbr {
            background-color: #D2D2D2;
        }

        #per {
            background-color: #D2D2D2;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="nav navbar-default navbar-static-top" id="navbr" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" id="per" href="Defult.aspx">Personal Income Tax For Remuneration Only </a>
                </div>
                <div class="collapse navbar-collapse" id="navbar-collapse">
                    <ul class="navbar navbar-nav navbar-right">

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Sign Out</b> <span class="caret"></span></a>
                            <ul id="login-dp" class="dropdown-menu">
                                <li>
                                    <div class="row">



                                        <div class="form-group">
                                            <asp:Button type="submit" ID="signout" runat="server" class="btn btn-primary btn-block" Text="Sign Out" OnClick="sighout_Click" />
                                        </div>
                                    </div>

                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
        <br />
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h3>Welcome To Your Tax Record</h3>
                </div>
            </div>
        </div>
        <br />

        <div class="container">
            <div class="row" id="kar">
                <div class="col-sm-4">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Kardata Ko Kisim"></asp:Label></td>

                            <td>
                                <asp:DropDownList  CssClass="form-control" Style="width: 160px" ID="drpfilingstatus" runat="server">
                                    <asp:ListItem Value="0">Single</asp:ListItem>
                                    <asp:ListItem Value="1">Married</asp:ListItem>
                                    <asp:ListItem Value="2">Divorced</asp:ListItem>
                                    <asp:ListItem Value="3">Disabled Single</asp:ListItem>
                                    <asp:ListItem Value="4">Disabled Married</asp:ListItem>
                                </asp:DropDownList>

                            </td>
                        </tr>
                    </table>
                </div>

                <div class="col-sm-4">
                    <table>
                        <tr>
                            <td>

                                <asp:Label ID="Label24" runat="server" Text="Arthik Barsha"></asp:Label></td>

                            <td>
                                <asp:DropDownList ID="year"  CssClass="form-control" Style="width: 160px" runat="server" OnSelectedIndexChanged="year_SelectedIndexChanged" AutoPostBack="true">
                                   
                                </asp:DropDownList>
                                

                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

        <br />

        <div class="container">
            <div class="row" id="annual">
                <div class="col-sm-6">
                    <table>
                        <tr>
                            <td>
                                <h4>Annual Income</h4>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Salary(with Grade)" ForeColor="White"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="salary" CssClass="form-control" Style="width: 160px"  TextMode="Number" runat="server" value="0"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Bonus" ForeColor="White"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="bonus"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Over time Payment " ForeColor="White"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="ot"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Entertainment and transportation Allowances" ForeColor="White"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="eta" CssClass="form-control" Style="width: 160px"  TextMode="Number" value="0" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Leave Pay" ForeColor="White"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="leave"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Prizes,Gifts" ForeColor="White"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="pg"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="Payment for Other Faciliations" ForeColor="White"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="pof"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="Dearness Allowances" ForeColor="White"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="da"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="Cost of living Allowances" ForeColor="White"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="cla"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text="Rent Allowances" ForeColor="White"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="ra"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>

                            <td>
                                <asp:Label ID="Label12" runat="server" Text="Discharge or Reimbursements of personal Costs" ForeColor="White"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="drpc"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Label13" runat="server" Text="Payment to the Redundancy or loss or tremination of the Employment(Section 8.2.e)" ForeColor="White"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="prlte" CssClass="form-control" Style="width: 160px"  TextMode="Number" value="0" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label14" runat="server" Text="Retirement Contributions and Retirement Payments (Section 8.2.f) " ForeColor="White"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="rcrp"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label15" runat="server" Text="Payment to the Agreement to any Conditions of the Employment (section 8.2.e) " ForeColor="White"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="pace"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label16" runat="server" Text="Fringe Benifit for Vechicle Facility(Section 27.1.b.1)" ForeColor="White"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="fbvf"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label35" runat="server" Text="Fringe Benifit For House Facility(Section 27.1.b.2)" ForeColor="White"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="fbhf" CssClass="form-control" Style="width: 160px"  TextMode="Number" value="0" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label18" runat="server" Text="Fringe Benifit For Housekeeper,Chauffeur,Gardener,or other domestic Assistant(section 27.1.c.1)" ForeColor="White"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="fbhcgoda"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label19" runat="server" Text="Fringe Benifit for any Meal,Refreshment,or Entertainment(section 21.1.c.2)" ForeColor="White"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="fbmre"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label20" runat="server" Text="Fringe Benifit for Drinking Water,Electricity,Tlephone,and similiar Utilities(section 271.c.3)" ForeColor="White"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="fbdwetsu" CssClass="form-control" Style="width: 160px"  TextMode="Number" value="0" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label21" runat="server" Text="Difference of actual Interst and Intrest as per Market Rate in case of Soft Loan (section 25.1.d)" ForeColor="White"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="daimrs"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label22" runat="server" Text="Other Amounts to be included in remuneration(as per attached List)" ForeColor="White"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="oair" CssClass="form-control" Style="width: 160px"  TextMode="Number" value="0" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label23" runat="server" Text="Others" ForeColor="White"></asp:Label>
                            </td>
                            <td>

                                <asp:TextBox ID="others"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>

                <div class="col-sm-6">
                    <table>
                        <tr>
                            <td>
                                <h4>Annual Deduction</h4>
                            </td>
                        </tr>


                        <tr>
                            <td>
                                <asp:Label ID="Label25" runat="server" Text="Employement Provident Fund" ForeColor="White"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="epf"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label26" runat="server" Text="Citizens Fundns Investenment" ForeColor="White"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="cfi"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label27" runat="server" Text="Insurance" ForeColor="White"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Insurance"  CssClass="form-control" Style="width: 160px" TextMode="Number" value="0" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>


        <div class="container">
            <div class="row" id="amee">
                <div class="col-sm-6">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label30" runat="server" Text="Annual Medical Expenses"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="ame"  CssClass="form-control" Style="width: 160px" value="0" TextMode="Number" runat="server" BorderColor="#0C58A4"></asp:TextBox></td>

                        </tr>
                    </table>
                </div>




            </div>
            </div>
            <br />
            <div class="container" id="cal">
                <div class="row">

                    <div class="col-sm-6">
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="totaltax" runat="server" Text="Total Tax"></asp:Label>

                                

                        </table>

                    </div>
                    <br />



                </div>
            </div>
            <br />
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <table border="1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label17" runat="server" Text="Tax Amount"></asp:Label>
                                </td>

                                <td>
                                    <asp:TextBox ID="total"  CssClass="form-control" Style="width: 160px" value="0" runat="server" BorderColor="#0C58A4"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">
                                    <asp:Label ID="Label34" runat="server" Text="15% of Annual Medical Expenses" ForeColor="Black"></asp:Label>
                                </td>
                                <td class="auto-style1">
                                    <asp:TextBox ID="amep"  CssClass="form-control" Style="width: 160px" runat="server"></asp:TextBox>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label286" runat="server" Text="Total Tax" ForeColor="Black"></asp:Label>

                                </td>
                                <td>
                                    <asp:TextBox ID="tax"  CssClass="form-control" Style="width: 160px" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>

                    </div>

                </div>





            <footer class="footer-pos">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <div class="conainer">

                    <div class="col-sm-12">
                        This Site is property on its Owner<br />
                        &copy 2012-2015
                      
                    </div>
                </div>

            </footer>
        </div>












    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>




</body>
</html>
