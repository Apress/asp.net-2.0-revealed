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
            datakeynames="CustomerID" allowpaging="True" allowsorting="True">
            <pagerstyle forecolor="#000066" horizontalalign="Left" backcolor="White">
            </pagerstyle>
            <columnfields>
                <asp:boundfield nulldisplaytext="D" sortexpression="CustomerID" datafield="CustomerID"
                    readonly="True" headertext="CustomerID">
                </asp:boundfield>
                <asp:boundfield sortexpression="CompanyName" datafield="CompanyName" headertext="CompanyName">
                </asp:boundfield>
                <asp:boundfield sortexpression="ContactName" datafield="ContactName" headertext="ContactName">
                </asp:boundfield>
                <asp:templatefield headertext="Country">
                    <itemtemplate>
                        <asp:label id="Label1" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.Country") %>'>
                        </asp:label>
                    </itemtemplate>
                    <edititemtemplate>
                        <asp:textbox id="TextBox1" runat="server" text='<%# DataBinder.Eval(Container, "DataItem.Country") %>'>
                        </asp:textbox>
                    </edititemtemplate>
                </asp:templatefield>
            </columnfields>
            <nulltemplate>
                Leider sind keine Datensätze vorhanden!
            </nulltemplate>
            <pagersettings mode="NumericFirstLast">
            </pagersettings>
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
            insertcommand="INSERT INTO Customers(CustomerID, CompanyName, ContactName, Country) VALUES (?, ?, ?, ?)"
            providername="System.Data.OleDb" selectcommand="SELECT [CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax] FROM dbo.[Customers] WHERE 1=0"
            connectionstring="Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Northwind;Data Source=.;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=BOCHUM;Use Encryption for Data=False;Tag with column collation when possible=False"
            updatecommand="UPDATE Customers SET CompanyName = ?, ContactName = ?, Country = ? WHERE (Customers.CustomerID = ?)">
        </asp:sqldatasource>
    </form>
</body>
</html>
