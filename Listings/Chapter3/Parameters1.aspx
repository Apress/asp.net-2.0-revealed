<%@ page language="VB" %>
<script runat="server" language="vb">
</script>


<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:gridview id="GridView1" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource1"
            datakeynames="CustomerID" allowpaging="True">
            <pagerstyle forecolor="#000066" horizontalalign="Left" backcolor="White">
            </pagerstyle>
            <columnfields>
                <asp:boundfield sortexpression="CustomerID" datafield="CustomerID" readonly="True"
                    headertext="CustomerID">
                </asp:boundfield>
                <asp:boundfield sortexpression="CompanyName" datafield="CompanyName" headertext="CompanyName">
                </asp:boundfield>
                <asp:boundfield sortexpression="ContactName" datafield="ContactName" headertext="ContactName">
                </asp:boundfield>
                <asp:boundfield sortexpression="ContactTitle" datafield="ContactTitle" headertext="ContactTitle">
                </asp:boundfield>
                <asp:boundfield sortexpression="Country" datafield="Country" headertext="Country">
                </asp:boundfield>
                <asp:commandfield showselectbutton="True" selecttext="Show Orders">
                </asp:commandfield>
            </columnfields>
            <selectedrowstyle forecolor="White" backcolor="#669999" font-bold="True">
            </selectedrowstyle>
            <rowstyle forecolor="#000066">
            </rowstyle>
            <headerstyle forecolor="White" backcolor="#006699" font-bold="True">
            </headerstyle>
            <footerstyle forecolor="#000066" backcolor="White">
            </footerstyle>
        </asp:gridview>
        <asp:sqldatasource id="SqlDataSource1" runat="server" deletecommand="DELETE FROM Customers WHERE (Customers.CustomerID = ?)"
            insertcommand="INSERT INTO Customers(CustomerID, CompanyName, ContactName, ContactTitle, Country) VALUES (?, ?, ?, ?, ?)"
            providername="System.Data.OleDb" selectcommand="SELECT [CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax] FROM dbo.[Customers]"
            connectionstring="Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Northwind;Data Source=.;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=BOCHUM;Use Encryption for Data=False;Tag with column collation when possible=False"
            updatecommand="UPDATE Customers SET CompanyName = ?, ContactName = ?, ContactTitle = ?, Country = ? WHERE (Customers.CustomerID = ?)">
        </asp:sqldatasource>
        <asp:gridview id="GridView2" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource2"
            datakeynames="OrderID" allowpaging="True">
            <pagerstyle forecolor="#000066" horizontalalign="Left" backcolor="White">
            </pagerstyle>
            <columnfields>
                <asp:boundfield sortexpression="OrderID" datafield="OrderID" readonly="True" headertext="OrderID">
                </asp:boundfield>
                <asp:boundfield sortexpression="OrderDate" datafield="OrderDate" headertext="OrderDate">
                </asp:boundfield>
                <asp:boundfield sortexpression="RequiredDate" datafield="RequiredDate" headertext="RequiredDate">
                </asp:boundfield>
                <asp:boundfield sortexpression="ShippedDate" datafield="ShippedDate" headertext="ShippedDate">
                </asp:boundfield>
                <asp:boundfield sortexpression="ShipVia" datafield="ShipVia" headertext="ShipVia">
                </asp:boundfield>
                <asp:boundfield sortexpression="ShipName" datafield="ShipName" headertext="ShipName">
                </asp:boundfield>
                <asp:boundfield sortexpression="ShipAddress" datafield="ShipAddress" headertext="ShipAddress">
                </asp:boundfield>
                <asp:boundfield sortexpression="ShipCountry" datafield="ShipCountry" headertext="ShipCountry">
                </asp:boundfield>
            </columnfields>
            <selectedrowstyle forecolor="White" backcolor="#669999" font-bold="True">
            </selectedrowstyle>
            <rowstyle forecolor="#000066">
            </rowstyle>
            <headerstyle forecolor="White" backcolor="#006699" font-bold="True">
            </headerstyle>
            <footerstyle forecolor="#000066" backcolor="White">
            </footerstyle>
        </asp:gridview>
        <asp:sqldatasource id="SqlDataSource2" runat="server" deletecommand="DELETE FROM Orders WHERE (Orders.OrderID = ?)"
            insertcommand="INSERT INTO Orders(OrderDate, RequiredDate, ShippedDate, ShipVia, ShipName, ShipAddress, ShipCountry) VALUES (?, ?, ?, ?, ?, ?, ?)"
            providername="System.Data.OleDb" selectcommand="SELECT [OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate], [ShippedDate], [ShipVia], [Freight], [ShipName], [ShipAddress], [ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry] FROM dbo.[Orders] WHERE CustomerID=?"
            connectionstring="Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Northwind;Data Source=.;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=BOCHUM;Use Encryption for Data=False;Tag with column collation when possible=False"
            updatecommand="UPDATE Orders SET OrderDate = ?, RequiredDate = ?, ShippedDate = ?, ShipVia = ?, ShipName = ?, ShipAddress = ?, ShipCountry = ? WHERE (Orders.OrderID = ?)">
            <selectparameters>
                <asp:controlparameter name="?" propertyname="SelectedValue" controlid="GridView1">
                </asp:controlparameter>
            </selectparameters>
        </asp:sqldatasource>
    </form>
</body>
</html>
