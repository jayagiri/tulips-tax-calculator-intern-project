<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manager View</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSourceSignUp" runat="server" ConnectionString="<%$ ConnectionStrings:SignUpConnectionString %>" SelectCommand="SELECT * FROM [SignUpData]"></asp:SqlDataSource>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Uid" DataSourceID="SqlDataSourceSignUp" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Uid" HeaderText="Uid" InsertVisible="False" ReadOnly="True" SortExpression="Uid" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Marital Status" HeaderText="Marital Status" SortExpression="Marital Status" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
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
        <asp:SqlDataSource ID="SqlDataSourceUserData" runat="server" ConnectionString="<%$ ConnectionStrings:CalculationConnectionString %>" SelectCommand="SELECT * FROM [UserData]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Tid" DataSourceID="SqlDataSourceUserData" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Tid" HeaderText="Tid" ReadOnly="True" SortExpression="Tid" />
                <asp:BoundField DataField="Uid" HeaderText="Uid" SortExpression="Uid" />
                <asp:BoundField DataField="Filing Status" HeaderText="Filing Status" SortExpression="Filing Status" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
                <asp:BoundField DataField="Bonus" HeaderText="Bonus" SortExpression="Bonus" />
                <asp:BoundField DataField="Over Time Payment" HeaderText="Over Time Payment" SortExpression="Over Time Payment" />
                <asp:BoundField DataField="Transportation Allowences" HeaderText="Transportation Allowences" SortExpression="Transportation Allowences" />
                <asp:BoundField DataField="Leave Pay" HeaderText="Leave Pay" SortExpression="Leave Pay" />
                <asp:BoundField DataField="Payment for other facilities" HeaderText="Payment for other facilities" SortExpression="Payment for other facilities" />
                <asp:BoundField DataField="Cost of Living Allowences" HeaderText="Cost of Living Allowences" SortExpression="Cost of Living Allowences" />
                <asp:BoundField DataField="Payment for Redundancy of the Employment" HeaderText="Payment for Redundancy of the Employment" SortExpression="Payment for Redundancy of the Employment" />
                <asp:BoundField DataField="Retirement Contribution and Payments" HeaderText="Retirement Contribution and Payments" SortExpression="Retirement Contribution and Payments" />
                <asp:BoundField DataField="Fringe Benefit for Vechile Facility" HeaderText="Fringe Benefit for Vechile Facility" SortExpression="Fringe Benefit for Vechile Facility" />
                <asp:BoundField DataField="Fringe Benefit for House Facility" HeaderText="Fringe Benefit for House Facility" SortExpression="Fringe Benefit for House Facility" />
                <asp:BoundField DataField="Fringe Benefit for other Refreshment activities" HeaderText="Fringe Benefit for other Refreshment activities" SortExpression="Fringe Benefit for other Refreshment activities" />
                <asp:BoundField DataField="Others" HeaderText="Others" SortExpression="Others" />
                <asp:BoundField DataField="Employees Provident Fund" HeaderText="Employees Provident Fund" SortExpression="Employees Provident Fund" />
                <asp:BoundField DataField="Citizen Investment Fund" HeaderText="Citizen Investment Fund" SortExpression="Citizen Investment Fund" />
                <asp:BoundField DataField="Insurance" HeaderText="Insurance" SortExpression="Insurance" />
                <asp:BoundField DataField="Annual Medical Expenses" HeaderText="Annual Medical Expenses" SortExpression="Annual Medical Expenses" />
                <asp:BoundField DataField="Tax Paid" HeaderText="Tax Paid" SortExpression="Tax Paid" />
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
    </form>
</body>
</html>
