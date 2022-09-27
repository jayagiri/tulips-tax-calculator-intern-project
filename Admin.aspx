<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html lang="en">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Income Tax Calculator</title>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Style.css" rel="stylesheet"/>

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
                                <asp:LinkButton ID="B_logout" runat="server" OnClick="B_logout_Click" CausesValidation="false"><b style="color:#fff;">Logout</b></asp:LinkButton>
                            </li>   
                           
                        </ul>
                    </div>
                </div>
            </div>

            <!--end of navbar-->

            


            <div class="container menu">
                <div class="row">
                    <div class="col-sm-4">
                        <b style="color: #fff;">Filing Status:</b>
                        <asp:DropDownList ID="drpfilingstatus" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpfilingstatus_SelectedIndexChanged" CssClass="form-control" Width="160px">
                            <asp:ListItem Value="single">Single</asp:ListItem>
                            <asp:ListItem Value="married">Married</asp:ListItem>
                            <asp:ListItem Value="divorced">Divorced</asp:ListItem>
                            <asp:ListItem Value="dsingle">Disabled Single</asp:ListItem>
                            <asp:ListItem Value="dmarried">Disabled Married</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-4">
                        <asp:Button ID="Button1" runat="server" Text="Add Year" CssClass="btn btn-primary btn-default" OnClick="Button1_Click" CausesValidation="false"/>
                    </div>
                    <div class="=col-sm-4">
                        <b style="color: #fff;">Year:</b>
                        <asp:DropDownList ID="year" runat="server" class="form-control" Width="160px"></asp:DropDownList>
                    </div>

                </div>
            </div>



            <asp:Panel ID="Panelsingle" runat="server">
                <div class="container">
                    <h3 class="clr">Single Tax Calculator </h3>
                    <table class="nav-justified table2" border="1">
                        <tr>
                            <td>
                                <h4 class="clr">Particulars</h4>
                            </td>
                            <td>
                                <h4 class="clr">Amount</h4>
                            </td>
                            <td>
                                <h4 class="clr">Percentage</h4>
                            </td>
                        </tr>
                        <tr>
                            <td class="clr">First Tax Slap</td>
                            <td>
                                <asp:TextBox ID="ss11" runat="server" TextMode="Number" placeholder="From" CssClass="form-control" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ss11" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="ss1" runat="server" TextMode="Number" placeholder="To" CssClass="form-control" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please insert a value" ControlToValidate="ss1" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            
                            <td>
                                <asp:TextBox ID="SFirstts" TextMode="Number" runat="server" placeholder="%" CssClass="form-control" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please insert a value" ControlToValidate="SFirstts" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="clr">Second Tax Slap</td>
                            <td>
                                <asp:TextBox ID="ss22" placeholder="From" TextMode="Number" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please insert a value" ControlToValidate="ss22" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="ss2" placeholder="To" TextMode="Number" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please insert a value" ControlToValidate="ss2" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="SSecondts" TextMode="Number" runat="server" Placeholder="%" CssClass="form-control" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please insert a value" ControlToValidate="SSecondts" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="clr">Third Tax Slap</td>
                            <td>
                                <asp:TextBox ID="ss33" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ss33" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="ss3" placeholder="To" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ss3" ForeColor="Red"></asp:RequiredFieldValidator>

                            </td>
                            <td>
                                <asp:TextBox ID="SThirsts" TextMode="Number" runat="server" placeholder="%" CssClass="form-control" Width="200px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Please insert a value." ControlToValidate="SThirsts" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="clr">Fourth Tax Slap</td>
                            <td>
                                <asp:TextBox ID="ss4" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ss4" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:Label ID="Label1" runat="server" Text="Above" CssClass="clr" Font-Bold="true"></asp:Label>
                            <td>
                                <asp:TextBox ID="SFourthts" TextMode="Number" runat="server" placeholder="%" CssClass="form-control" Width="200px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Please insert a value." ControlToValidate="SFourthts" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                    </table>
                    <br />
                    
                    <asp:Button ID="Taxsingle" runat="server" Text="Insert" OnClick="Taxsingle_Click" CssClass="btn btn-primary btn-default"></asp:Button>
                    
                    
                    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" >
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" CausesValidation="false"/>
                            <asp:BoundField DataField="Firstts" HeaderText="Firstts" SortExpression="Firstts" />
                            <asp:BoundField DataField="Secondts" HeaderText="Secondts" SortExpression="Secondts" />
                            <asp:BoundField DataField="Thirdts" HeaderText="Thirdts" SortExpression="Thirdts" />
                            <asp:BoundField DataField="Fourthts" HeaderText="Fourthts" SortExpression="Fourthts" />
                            <asp:BoundField DataField="famount" HeaderText="famount" SortExpression="famount" />
                            <asp:BoundField DataField="samount" HeaderText="samount" SortExpression="samount" />
                            <asp:BoundField DataField="tamount" HeaderText="tamount" SortExpression="tamount" />
                            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:signupdatabaseConnectionString %>" SelectCommand="SELECT Taxsingles.Firstts, Taxsingles.Secondts, Taxsingles.Thirdts, Taxsingles.Fourthts, Taxsingles.famount, Taxsingles.samount, Taxsingles.tamount, year.year FROM Taxsingles INNER JOIN year ON Taxsingles.year = year.id" UpdateCommand="UPDATE Taxsingles SET Firstts =@Firstts, Secondts =@Secondts, Thirdts =@Thirdts, Fourthts =@Fourthts, famount =@famount, samount =@samount, tamount =@tamount FROM Taxsingles INNER JOIN year ON Taxsingles.year = year.id where year.year = @year">
                        <UpdateParameters>
                            <asp:Parameter Name="Firstts" />
                            <asp:Parameter Name="Secondts" />
                            <asp:Parameter Name="Thirdts" />
                            <asp:Parameter Name="Fourthts" />
                            <asp:Parameter Name="famount" />
                            <asp:Parameter Name="samount" />
                            <asp:Parameter Name="tamount" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                </div>

            </asp:Panel>

        <asp:Panel ID="Panelmarried" runat="server" Visible="false">
            <div class="container">
                <h3>Married Tax Calculator </h3>
                        <table class="nav-justified table2" border="1">
                            <tr>
                                <td>
                                    <h4 class="clr">Particulars</h4>
                                </td>
                                <td>
                                    <h4 class="clr">Amount</h4>
                                </td>
                                <td>
                                    <h4 class="clr">Percentage</h4>
                                </td>
                            </tr>
                            <tr>
                                <td class="clr">First Tax Slap</td>
                                <td>
                                    <asp:TextBox ID="ms11" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ms11" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="ms1" placeholder="To" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ms1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="MFirstts" TextMode="Number" runat="server" placeholder="%" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Please insert a value." ControlToValidate="MFirstts" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="clr">Second Tax Slap</td>
                                <td>
                                    <asp:TextBox ID="ms22" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ms22" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="ms2" placeholder="To" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ms2" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="MSecondts" TextMode="Number" placeholder="%" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Please insert a value." ControlToValidate="MSecondts" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="clr">Third Tax Slap</td>
                                <td>
                                    <asp:TextBox ID="ms33" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ms33" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="ms3" placeholder="To" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ms3" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="MThirsts" TextMode="Number" runat="server" placeholder="%" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="Please insert a value." ControlToValidate="MThirsts" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="clr">Fourth Tax Slap</td>
                                <td>
                                    <asp:TextBox ID="ms4" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ms4" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:Label ID="Label2" runat="server" Text="Above" Font-Bold="true" ForeColor="White"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="MFourthts" TextMode="Number" placeholder="%" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="Please insert a value." ControlToValidate="MFourthts" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>

                        </table>
                        <br />
                    
                        <asp:Button ID="Taxmarried" runat="server" Text="Insert" OnClick="Taxmarried_Click" CssClass="btn btn-primary btn-default"></asp:Button>
                    
                    <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" CausesValidation="false"/>
                            <asp:BoundField DataField="Firstts" HeaderText="Firstts" SortExpression="Firstts" />
                            <asp:BoundField DataField="Secondts" HeaderText="Secondts" SortExpression="Secondts" />
                            <asp:BoundField DataField="Thirdts" HeaderText="Thirdts" SortExpression="Thirdts" />
                            <asp:BoundField DataField="Fourthts" HeaderText="Fourthts" SortExpression="Fourthts" />
                            <asp:BoundField DataField="famount" HeaderText="famount" SortExpression="famount" />
                            <asp:BoundField DataField="samount" HeaderText="samount" SortExpression="samount" />
                            <asp:BoundField DataField="tamount" HeaderText="tamount" SortExpression="tamount" />
                            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:signupdatabaseConnectionString %>" SelectCommand="SELECT Taxmarried.Firstts, Taxmarried.Secondts, Taxmarried.Thirdts, Taxmarried.Fourthts, Taxmarried.famount, Taxmarried.samount, Taxmarried.tamount, year.year FROM Taxmarried INNER JOIN year ON Taxmarried.year = year.id" UpdateCommand="UPDATE Taxmarried SET Firstts =@Firstts, Secondts =@Secondts, Thirdts =@Thirdts, Fourthts =@Fourthts, famount =@famount, samount =@samount, tamount =@tamount FROM Taxmarried INNER JOIN year ON Taxmarried.year = year.id where year.year = @year">
                    <UpdateParameters>
                        <asp:Parameter Name="Firstts" />
                        <asp:Parameter Name="Secondts" />
                        <asp:Parameter Name="Thirdts" />
                        <asp:Parameter Name="Fourthts" />
                        <asp:Parameter Name="famount" />
                        <asp:Parameter Name="samount" />
                        <asp:Parameter Name="tamount" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                    

                
            </div>

        </asp:Panel>


        <asp:Panel ID="Paneldivorced" runat="server" Visible="false">
            <div class="container">
                <h3>Divorced Tax Calculator </h3>
                        <table class="nav-justified table2" border="1">
                            <tr>
                                <td>
                                    <h4 class="clr">Particulars</h4>
                                </td>
                                <td>
                                    <h4 class="clr">Amount</h4>
                                </td>
                                <td>
                                    <h4 class="clr">Percentage</h4>
                                </td>
                            </tr>
                            <tr>
                                <td class="clr">First Tax Slap</td>
                                <td>
                                    <asp:TextBox ID="ds11" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ds11" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="ds1" placeholder="To" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ds1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="DFirstts" TextMode="Number" placeholder="%" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ErrorMessage="Please insert a value." ControlToValidate="DFirstts" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="clr">Second Tax Slap</td>
                                <td>
                                    <asp:TextBox ID="ds22" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ds22" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="ds2" placeholder="To" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ds2" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td>
                                    <asp:TextBox ID="DSecondts" TextMode="Number" Placeholder="%" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ErrorMessage="Please insert a value." ControlToValidate="DSecondts" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="clr">Third Tax Slap</td>
                                <td>
                                    <asp:TextBox ID="ds33" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ds33" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="ds3" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ds3" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="DThirsts" TextMode="Number" placeholder="%" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ErrorMessage="Please insert a value." ControlToValidate="DThirsts" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="clr">Fourth Tax Slap</td>
                                <td>
                                    <asp:TextBox ID="ds4" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ErrorMessage="Please insert a value." ControlToValidate="ds4" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:Label ID="Label3" runat="server" Text="Above" Font-Bold="true" ForeColor="White"></asp:Label>                                    
                                </td>
                                <td>
                                    <asp:TextBox ID="DFourthts" TextMode="Number" placeholder="%" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ErrorMessage="Please insert a value." ControlToValidate="DFourthts" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>

                        </table>
                    
                    <br />
                    
                        <asp:Button ID="Taxdivorced" runat="server" Text="Insert" OnClick="Taxdivorced_Click" CssClass="btn btn-primary btn-default"></asp:Button>
                    
                <asp:GridView ID="GridView11" runat="server" DataSourceID="SqlDataSource3" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" CausesValidation="false"/>
                        <asp:BoundField DataField="Firstts" HeaderText="Firstts" SortExpression="Firstts" />
                        <asp:BoundField DataField="Secondts" HeaderText="Secondts" SortExpression="Secondts" />
                        <asp:BoundField DataField="Thirdts" HeaderText="Thirdts" SortExpression="Thirdts" />
                        <asp:BoundField DataField="Fourthts" HeaderText="Fourthts" SortExpression="Fourthts" />
                        <asp:BoundField DataField="famount" HeaderText="famount" SortExpression="famount" />
                        <asp:BoundField DataField="samount" HeaderText="samount" SortExpression="samount" />
                        <asp:BoundField DataField="tamount" HeaderText="tamount" SortExpression="tamount" />
  
                        <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:signupdatabaseConnectionString %>" SelectCommand="SELECT Taxdivorced.Firstts, Taxdivorced.Secondts, Taxdivorced.Thirdts, Taxdivorced.Fourthts, Taxdivorced.famount, Taxdivorced.samount, Taxdivorced.tamount, year.year FROM Taxdivorced INNER JOIN year ON Taxdivorced.year = year.id" UpdateCommand="UPDATE Taxdivorced SET Firstts =@Firstts, Secondts =@Secondts, Thirdts =@Thirdts, Fourthts =@Fourthts, famount =@famount, samount =@samount, tamount =@tamount FROM Taxdivorced INNER JOIN year ON Taxdivorced.year = year.id where year.year=@year">
                    <UpdateParameters>
                        <asp:Parameter Name="Firstts" />
                        <asp:Parameter Name="Secondts" />
                        <asp:Parameter Name="Thirdts" />
                        <asp:Parameter Name="Fourthts" />
                        <asp:Parameter Name="famount" />
                        <asp:Parameter Name="samount" />
                        <asp:Parameter Name="tamount" />
                        <asp:Parameter Name="year" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                    
            </div>
            
        </asp:Panel>

        <asp:Panel ID="Paneldsingle" runat="server" Visible="false">
            <div class="container">
                    
                        <h3>Disable Single Tax Calculator </h3>
                        <table class="nav-justified table2" border="1">
                            <tr>
                                <td>
                                    <h4 class="clr">Particulars</h4>
                                </td>
                                <td>
                                    <h4 class="clr">Amount</h4>
                                </td>
                                <td>
                                    <h4 class="clr">Percentage</h4>
                                </td>
                            </tr>
                            <tr>
                                <td class="clr">First Tax Slap</td>
                                <td>
                                    <asp:TextBox ID="dss11" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ErrorMessage="Please insert a value." ControlToValidate="dss11" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="dss1" placeholder="To" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ErrorMessage="Please insert a value." ControlToValidate="dss1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="DSFirstts" TextMode="Number" placeholder="%" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ErrorMessage="Please insert a value." ControlToValidate="DSFirstts" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="clr">Second Tax Slap</td>
                                <td>
                                    <asp:TextBox ID="dss22" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ErrorMessage="Please insert a value." ControlToValidate="dss22" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="dss2" placeholder="To" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" ErrorMessage="Please insert a value." ControlToValidate="dss2" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="DSSecondts" TextMode="Number" placeholder="%" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" ErrorMessage="Please insert a value." ControlToValidate="DSSecondts" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="clr">Third Tax Slap</td>
                                <td>
                                    <asp:TextBox ID="dss33" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" ErrorMessage="Please insert a value." ControlToValidate="dss33" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="dss3" placeholder="To" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" ErrorMessage="Please insert a value." ControlToValidate="dss3" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="DSThirsts" TextMode="Number" placeholder="%" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" ErrorMessage="Please insert a value." ControlToValidate="DSThirsts" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="clr">Fourth Tax Slap</td>
                                <td>
                                    <asp:TextBox ID="dss4" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" ErrorMessage="Please insert a value." ControlToValidate="dss4" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:Label ID="Label4" runat="server" Text="Above" Font-Bold="true" ForeColor="White"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="DSFourthts" TextMode="Number" placeholder="%" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator56" runat="server" ErrorMessage="Please insert a value." ControlToValidate="DSFourthts" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>

                        </table>
                   
                    <br />
                   
                        <asp:Button ID="Taxdisablesingle" runat="server" Text="Insert" OnClick="Taxdisablesingle_Click" CssClass="btn btn-primary btn-default"></asp:Button>
                    
                        <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" CausesValidation="false"/>
                                <asp:BoundField DataField="Firstts" HeaderText="Firstts" SortExpression="Firstts" />
                                <asp:BoundField DataField="Secondts" HeaderText="Secondts" SortExpression="Secondts" />
                                <asp:BoundField DataField="Thirdts" HeaderText="Thirdts" SortExpression="Thirdts" />
                                <asp:BoundField DataField="Fourthts" HeaderText="Fourthts" SortExpression="Fourthts" />
                                <asp:BoundField DataField="famount" HeaderText="famount" SortExpression="famount" />
                                <asp:BoundField DataField="samount" HeaderText="samount" SortExpression="samount" />
                                <asp:BoundField DataField="tamount" HeaderText="tamount" SortExpression="tamount" />
                                <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:signupdatabaseConnectionString %>" SelectCommand="SELECT Taxdisablesingle.Firstts, Taxdisablesingle.Secondts, Taxdisablesingle.Thirdts, Taxdisablesingle.Fourthts, Taxdisablesingle.famount, Taxdisablesingle.samount, Taxdisablesingle.tamount, year.year FROM Taxdisablesingle INNER JOIN year ON Taxdisablesingle.year = year.id" UpdateCommand="UPDATE Taxdisablesingle SET Firstts =@Firstts, Secondts =@Secondts, Thirdts =@Thirdts, Fourthts =@Fourthts, famount =@famount, samount =@samount, tamount =@tamount FROM Taxdisablesingle INNER JOIN year ON Taxdisablesingle.year = year.id where year.year=@year">
                            <UpdateParameters>
                                <asp:Parameter Name="Firstts" />
                                <asp:Parameter Name="Secondts" />
                                <asp:Parameter Name="Thirdts" />
                                <asp:Parameter Name="Fourthts" />
                                <asp:Parameter Name="famount" />
                                <asp:Parameter Name="samount" />
                                <asp:Parameter Name="tamount" />
                                <asp:Parameter Name="year" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    
            </div>
            
        </asp:Panel>


        <asp:Panel ID="Paneldmarried" runat="server" Visible="false">
            <div class="container">
                
                        <h3>Disable Married Tax Calculator </h3>
                        <table class="nav-justified table2" border="1">
                            <tr>
                                <td>
                                    <h4 class="clr">Particulars</h4>
                                </td>
                                <td>
                                    <h4 class="clr">Amount</h4>
                                </td>
                                <td>
                                    <h4 class="clr">Percentage</h4>
                                </td>
                            </tr>
                            <tr>
                                <td class="clr">First Tax Slap</td>
                                <td>
                                    <asp:TextBox ID="dms11" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" ErrorMessage="Please insert a value." ControlToValidate="dms11" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="dms1" placeholder="To" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" ErrorMessage="Please insert a value." ControlToValidate="dms1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="DMFirstts" TextMode="Number" placeholder="%" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" ErrorMessage="Please insert a value." ControlToValidate="DMFirstts" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="clr">Second Tax Slap</td>
                                <td>
                                    <asp:TextBox ID="dms22" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator48" runat="server" ErrorMessage="Please insert a value." ControlToValidate="dms22" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="dms2" placeholder="To" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator49" runat="server" ErrorMessage="Please insert a value." ControlToValidate="dms2" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="DMSecondts" TextMode="Number" placeholder="%" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" ErrorMessage="Please insert a value." ControlToValidate="DMSecondts" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="clr">Third Tax Slap</td>
                                <td>
                                    <asp:TextBox ID="dms33" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" ErrorMessage="Please insert a value." ControlToValidate="dms33" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="dms3" placeholder="To" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator52" runat="server" ErrorMessage="Please insert a value." ControlToValidate="dms3" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="DMThirsts" TextMode="Number" placeholder="%" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator53" runat="server" ErrorMessage="Please insert a value." ControlToValidate="DMThirsts" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="clr">Fourth Tax Slap</td>
                                <td>
                                    <asp:TextBox ID="dms4" placeholder="From" runat="server" TextMode="Number" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" ErrorMessage="Please insert a value." ControlToValidate="dms4" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:Label ID="Label5" runat="server" Text="Above" Font-Bold="true" ForeColor="White"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="DMFourthts" TextMode="Number" value="0" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator55" runat="server" ErrorMessage="Please insert a value." ControlToValidate="DMFourthts" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>

                        </table>
                    
                    <br />
                    
                        <asp:Button ID="Taxdisablemarried" runat="server" CssClass="btn btn-primary btn-default" Text="Insert" OnClick="Taxdisablemarried_Click"></asp:Button>
                    
                        <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" CausesValidation="false"/>
                                <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                                <asp:BoundField DataField="Firstts" HeaderText="Firstts" SortExpression="Firstts" />
                                <asp:BoundField DataField="Secondts" HeaderText="Secondts" SortExpression="Secondts" />
                                <asp:BoundField DataField="Thirdts" HeaderText="Thirdts" SortExpression="Thirdts" />
                                <asp:BoundField DataField="Fourthts" HeaderText="Fourthts" SortExpression="Fourthts" />
                                <asp:BoundField DataField="famount" HeaderText="famount" SortExpression="famount" />
                                <asp:BoundField DataField="samount" HeaderText="samount" SortExpression="samount" />
                                <asp:BoundField DataField="tamount" HeaderText="tamount" SortExpression="tamount" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:signupdatabaseConnectionString %>" SelectCommand="SELECT year.year, Taxdisablemarried.Firstts, Taxdisablemarried.Secondts, Taxdisablemarried.Thirdts, Taxdisablemarried.Fourthts, Taxdisablemarried.famount, Taxdisablemarried.samount, Taxdisablemarried.tamount FROM Taxdisablemarried INNER JOIN year ON Taxdisablemarried.year = year.id" UpdateCommand="UPDATE Taxdisablemarried SET Firstts =@Firstts, Secondts =@Secondts, Thirdts =@Thirdts, Fourthts =@Fourthts, famount =@famount, samount =@samount, tamount =@tamount FROM Taxdisablemarried INNER JOIN year ON Taxdisablemarried.year = year.id where year.year=@year">
                            <UpdateParameters>
                                <asp:Parameter Name="Firstts" />
                                <asp:Parameter Name="Secondts" />
                                <asp:Parameter Name="Thirdts" />
                                <asp:Parameter Name="Fourthts" />
                                <asp:Parameter Name="famount" />
                                <asp:Parameter Name="samount" />
                                <asp:Parameter Name="tamount" />
                                <asp:Parameter Name="year" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    
            </div>
            
        </asp:Panel>




        <!--footer-->
        <footer>
            <p>&copy; 2016 shresthaamol.com </p>
        </footer>
        <!--end of footer-->
        </div>
    </form>

    

</body>
</html>
