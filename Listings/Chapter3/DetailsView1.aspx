<%@ page language="VB" %>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:detailsview id="DetailsView1" runat="server" allowpaging="True" datasourceid="SqlDataSource1" datakeynames="CustomerID" bordercolor="#CC9966" borderstyle="None" borderwidth="1px" backcolor="White" cellpadding="4" gridlines="Both">
            <alternatingrowstyle font-italic="False" font-bold="False">
            </alternatingrowstyle>
            <pagerstyle forecolor="#330099" font-italic="False" font-bold="False" horizontalalign="Center"
                backcolor="#FFFFCC">
            </pagerstyle>
            <rowfields>
                <asp:commandfield showdeletebutton="True" showinsertbutton="True" showeditbutton="True">
                </asp:commandfield>
            </rowfields>
            <editrowstyle forecolor="#663399" backcolor="#FFCC66" font-italic="False" font-bold="True">
            </editrowstyle>
            <rowstyle forecolor="#330099" backcolor="White" font-italic="False" font-bold="False">
            </rowstyle>
            <headerstyle forecolor="#FFFFCC" backcolor="#990000" font-italic="False" font-bold="True">
            </headerstyle>
            <pagersettings mode="NumericFirstLast">
            </pagersettings>
            <footerstyle forecolor="#330099" backcolor="#FFFFCC" font-italic="False" font-bold="False">
            </footerstyle>
        </asp:detailsview>
        <asp:sqldatasource id="SqlDataSource1" runat="server" deletecommand="DELETE FROM Customers WHERE (Customers.CustomerID = ?)"
            insertcommand="INSERT INTO Customers(CustomerID, CompanyName, ContactName) VALUES (?, ?, ?)"
            providername="System.Data.OleDb" selectcommand="SELECT CustomerID, CompanyName, ContactName FROM dbo.[Customers]"
            connectionstring="Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Northwind;Data Source=.;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=BOCHUM;Use Encryption for Data=False;Tag with column collation when possible=False"
            updatecommand="UPDATE Customers SET CompanyName = ?, ContactName = ? WHERE (Customers.CustomerID = ?)">
        </asp:sqldatasource>
    </form>
</body>
</html>
