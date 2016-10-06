<%@ page language="C#" %>

<script runat="server">

</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:gridview id="GridView1" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource1"
            datakeynames="ProductID">
            <pagerstyle forecolor="#000066" horizontalalign="Left" backcolor="White">
            </pagerstyle>
            <columnfields>
                <asp:boundfield sortexpression="ProductID" datafield="ProductID" readonly="True"
                    headertext="ProductID">
                </asp:boundfield>
                <asp:boundfield sortexpression="ProductName" datafield="ProductName" headertext="ProductName">
                </asp:boundfield>
            </columnfields>
            <selectedrowstyle forecolor="White" backcolor="#669999" font-bold="True">
            </selectedrowstyle>
            <rowstyle forecolor="#000066">
            </rowstyle>
            <footerstyle forecolor="#000066" backcolor="White">
            </footerstyle>
            <headerstyle forecolor="White" backcolor="#006699" font-bold="True">
            </headerstyle>
        </asp:gridview>
        <asp:sqldatasource id="SqlDataSource1" runat="server" deletecommand="DELETE FROM Products WHERE (Products.ProductID = ?)"
            insertcommand="INSERT INTO Products(ProductName) VALUES (?)" providername="System.Data.OleDb"
            selectcommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued] FROM dbo.[Products]"
            connectionstring="Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Northwind;Data Source=.;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=BOCHUM;Use Encryption for Data=False;Tag with column collation when possible=False"
            updatecommand="UPDATE Products SET ProductName = ? WHERE (Products.ProductID = ?)"
            enablecaching="True" 
            cacheduration="60" datasourcemode="DataReader">
        </asp:sqldatasource>

    </form>
</body>
</html>
