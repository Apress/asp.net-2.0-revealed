<%@ page language="C#" %>

<script runat="server" language="c#">

void Page_PreInit(object sender, System.EventArgs e)
{
    this.Theme = "SmokeAndGlass";
}
    
</script>

<html>
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="Form1" runat="server">
        <table id="Table1" cellspacing="1" cellpadding="1" width="100%" border="1">
            <tr>
                <td colspan="2">
                    <h1>My Little Company</h1>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:datalist id="DataList1" runat="server" repeatdirection="Horizontal" datasourceid="SiteMapDataSource2">
                        <itemtemplate>
                            <asp:hyperlink id="HyperLink1" runat="server" navigateurl='<%# DataBinder.Eval(Container.DataItem, "url") %>' text='<%# DataBinder.Eval(Container.DataItem, "title") %>'>
                            </asp:hyperlink>
                        </itemtemplate>
                    </asp:datalist>
                    <asp:sitemapdatasource id="SiteMapDataSource2" runat="server" sitemapviewtype="Flat" flatdepth="2">
                    </asp:sitemapdatasource>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <asp:treeview id="TreeView1" runat="server" font-underline="False" datasourceid="SiteMapDataSource1" initialexpanddepth="2" font-names="Tahoma" font-size="8pt" font-italic="False" font-bold="False" imageset="XP_Explorer" forecolor="#000000" nodeindent="15">
                        <selectednodestyle
                            backcolor="#B5B5B5" font-underline="False" font-italic="False" font-bold="False">
                        </selectednodestyle>
                        <hovernodestyle
                            font-underline="True" font-italic="False" font-bold="False" forecolor="#6666AA">
                        </hovernodestyle>
                        <parentnodestyle font-underline="False" font-italic="False" font-bold="False">
                        </parentnodestyle>
                        <leafnodestyle font-underline="False" font-italic="False" font-bold="False">
                        </leafnodestyle>
                        <nodestyle font-underline="False" forecolor="#000000" verticalpadding="2" horizontalpadding="2" font-names="Tahoma" font-size="8pt" font-italic="False" font-bold="False">
                        </nodestyle>
                        <rootnodestyle font-underline="False" font-italic="False" font-bold="False">
                        </rootnodestyle>
                    </asp:treeview>
                    <asp:sitemapdatasource id="SiteMapDataSource1" runat="server">
                    </asp:sitemapdatasource></td>
                <td>
                    <asp:gridview id="GridView1" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource1"
                        datakeynames="CustomerID">
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
                            <asp:boundfield sortexpression="Country" datafield="Country" headertext="Country">
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
                    <asp:sqldatasource id="SqlDataSource1" runat="server" deletecommand="DELETE FROM Customers WHERE (Customers.CustomerID = ?)"
                        insertcommand="INSERT INTO Customers(CustomerID, CompanyName, ContactName, Country) VALUES (?, ?, ?, ?)"
                        providername="System.Data.OleDb" selectcommand="SELECT [CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax] FROM dbo.[Customers]"
                        connectionstring="Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Northwind;Data Source=.;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=BOCHUM;Use Encryption for Data=False;Tag with column collation when possible=False"
                        updatecommand="UPDATE Customers SET CompanyName = ?, ContactName = ?, Country = ? WHERE (Customers.CustomerID = ?)">
                    </asp:sqldatasource>&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
