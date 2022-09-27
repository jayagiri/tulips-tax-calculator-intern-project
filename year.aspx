<%@ Page Language="C#" AutoEventWireup="true" CodeFile="year.aspx.cs" Inherits="year" %>

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
        <br/>
        <br/>
        
        <asp:ScriptManager runat="server" ID="script3"></asp:ScriptManager>
        <asp:UpdatePanel runat="server"><ContentTemplate>
        <!--year-->
        <div class="container">
            <div class="col-sm-6">
                <table class="nav-justified">
                    <tr>
                        <td>
                            <asp:TextBox ID="txtyear" runat="server" CssClass="form-control" Width="180px" placeholder="YYYY/YYYY"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="check" ErrorMessage="Please enter a date in format (2069/2070)" ControlToValidate="txtyear" ValidationExpression="^[0-9]{4}[/]+[0-9]{4}$"/>
                            <asp:Label ID="Labeldate1" runat="server" Visible="false"></asp:Label>
                            <asp:Label ID="Labeldate" runat="server" Visible="false"></asp:Label>
                        </td>
                    </tr>
                   
                    <tr>
                        <td>
                            <asp:Button ID="addyear" runat="server" Text="add year" OnClick="addyear_Click" CssClass="btn btn-primary btn-default" ValidationGroup="check"></asp:Button>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="yid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="yid" HeaderText="yid" InsertVisible="False" ReadOnly="True" SortExpression="yid" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:signupdatabaseConnectionString2 %>" DeleteCommand="DELETE FROM [year] WHERE [yid] = @yid" InsertCommand="INSERT INTO [year] ([year]) VALUES (@year)" SelectCommand="SELECT * FROM [year]" UpdateCommand="UPDATE [year] SET [year] = @year WHERE [yid] = @yid">
                                <DeleteParameters>
                                    <asp:Parameter Name="yid" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="year" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="year" Type="String" />
                                    <asp:Parameter Name="yid" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    
                        
                </table>
               </div>
        </div>
       <!--end of year-->
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
