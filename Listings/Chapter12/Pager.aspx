<%@ page language="C#" %>

<script runat="server">

</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:sqldatasource id="SqlDataSource1" runat="server" 
            providername="System.Data.OleDb" 
            selectcommand="SELECT [CompanyName], [Phone] FROM dbo.[Customers]"
            connectionstring="Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Northwind;Data Source=.;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=BOCHUM;Use Encryption for Data=False;Tag with column collation when possible=False">
        </asp:sqldatasource>
        <asp:panel id="PNL_Customers" runat="server">
            <asp:datalist id="DL_Customers" runat="server" datasourceid="SqlDataSource1">
                <itemtemplate>
                    <asp:label text='<%# Eval("CompanyName") %>' runat="server" />
                    <br />
                    Phone:
                    <asp:label text='<%# Eval("Phone") %>' runat="server"/>
                </itemtemplate>
            </asp:datalist>
        </asp:panel>
        <asp:pager id="Pager1" runat="server" controltopaginate="PNL_Customers" itemsperpage="5" mode="NextPrev">
        </asp:pager>
    </form>
</body>
</html>
