<%@ page language="VB" %>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:gridview id="GridView1" runat="server" allowpaging="True" datasourceid="SqlDataSource1" allowsorting="True" autogeneratecolumns="False">
            <columnfields>
                <asp:boundfield sortexpression="CustomerID" datafield="CustomerID" readonly="True"
                    headertext="CustomerID">
                </asp:boundfield>
                <asp:boundfield sortexpression="CompanyName" datafield="CompanyName" headertext="CompanyName">
                </asp:boundfield>
                <asp:boundfield sortexpression="ContactName" datafield="ContactName" headertext="ContactName">
                </asp:boundfield>
            </columnfields>
        </asp:gridview>
        <asp:sqldatasource id="SqlDataSource1" runat="server" selectcommand="SELECT CustomerID, CompanyName, ContactName FROM Customers"
            providername="System.Data.OleDb" connectionstring="Provider=SQLOLEDB.1;Initial Catalog=Northwind;Data Source=.;Integrated Security=SSPI">
        </asp:sqldatasource>
    </form>
</body>
</html>
