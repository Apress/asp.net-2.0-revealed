<%@ page language="C#" %>
<%@ outputcache duration="600" varybyparam="none" sqldependency="Northwind:Customers" %>

<script runat="server">
    
void Page_Load(object sender, System.EventArgs e)
{
    this.LT_LastUpdate.Text = DateTime.Now.ToString();
}
    
</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:gridview id="GridView1" runat="server" allowpaging="True" datasourceid="SqlDataSource1" allowsorting="True" autogeneratecolumns="False" bordercolor="#CC9966" borderstyle="None" borderwidth="1px" backcolor="White" cellpadding="4" selectedindex="0" datakeynames="CustomerID">
            <alternatingrowstyle font-italic="False" font-bold="False">
            </alternatingrowstyle>
            <pagerstyle forecolor="#330099" font-italic="False" font-bold="False" horizontalalign="Center"
                backcolor="#FFFFCC">
            </pagerstyle>
            <columnfields>
                <asp:boundfield sortexpression="CustomerID" datafield="CustomerID" readonly="True"
                    headertext="CustomerID">
                </asp:boundfield>
                <asp:boundfield sortexpression="CompanyName" datafield="CompanyName" headertext="CompanyName">
                </asp:boundfield>
                <asp:boundfield sortexpression="ContactName" datafield="ContactName" headertext="ContactName">
                </asp:boundfield>
                <asp:commandfield showselectbutton="True">
                </asp:commandfield>
            </columnfields>
            <summarytitlestyle borderwidth="1px" borderstyle="None" bordercolor="#CC9966" backcolor="White">
            </summarytitlestyle>
            <pagersettings mode="NumericFirstLast">
            </pagersettings>
            <selectedrowstyle forecolor="#663399" backcolor="#FFCC66" font-italic="False" font-bold="True">
            </selectedrowstyle>
            <detailtitlestyle borderwidth="1px" borderstyle="None" bordercolor="#CC9966" backcolor="White">
            </detailtitlestyle>
            <rowstyle forecolor="#330099" backcolor="White" font-italic="False" font-bold="False">
            </rowstyle>
            <headerstyle forecolor="#FFFFCC" backcolor="#990000" font-italic="False" font-bold="True">
            </headerstyle>
            <footerstyle forecolor="#330099" backcolor="#FFFFCC" font-italic="False" font-bold="False">
            </footerstyle>
        </asp:gridview>
        <asp:sqldatasource id="SqlDataSource1" runat="server" selectcommand="SELECT CustomerID,         CompanyName,         ContactName FROM Customers "
            providername="System.Data.OleDb" connectionstring="Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Northwind;Data Source=.;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Use Encryption for Data=False;Tag with column collation when possible=False">
        </asp:sqldatasource>
        <p>
            Last update:
            <asp:literal id="LT_LastUpdate" runat="server"/>
        </p>
    </form>
</body>
</html>
