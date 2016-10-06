<%@ page language="C#" %>
<script runat="server" language="c#">

</script>

<html>
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="Form1" runat="server">
        <table id="Table1" cellspacing="1" cellpadding="1" width="100%" border="1">
            <tr>
                <td valign="top">
                    &nbsp;<asp:gridview id="GridView1" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource1"
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
                </td>
                <td>
                    &nbsp;&nbsp;<asp:gridview id="Gridview2" runat="server" autogeneratecolumns="False" datasourceid="SqlDataSource1"
                        datakeynames="CustomerID" skinid="CommonGridView">
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
                                    <headerstyle forecolor="White" backcolor="#006699" font-bold="True">
                                    </headerstyle>
                                    <footerstyle forecolor="#000066" backcolor="White">
                                    </footerstyle>
                                </asp:gridview>
                </td>
            </tr>

        </table>
        <asp:sqldatasource id="SqlDataSource1" runat="server" deletecommand="DELETE FROM Customers WHERE (Customers.CustomerID = ?)"
            insertcommand="INSERT INTO Customers(CustomerID, CompanyName, ContactName, Country) VALUES (?, ?, ?, ?)"
            providername="System.Data.OleDb" selectcommand="SELECT [CustomerID], [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], [Phone], [Fax] FROM dbo.[Customers]"
            connectionstring="Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Northwind;Data Source=.;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=BOCHUM;Use Encryption for Data=False;Tag with column collation when possible=False"
            updatecommand="UPDATE Customers SET CompanyName = ?, ContactName = ?, Country = ? WHERE (Customers.CustomerID = ?)">
        </asp:sqldatasource>
    </form>
</body>
</html>
