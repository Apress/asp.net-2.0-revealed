<%@ page language="C#" %>
<%@ implements interface="System.Web.UI.ICallbackEventHandler"%>

<script runat="server" language="c#">
    
void Page_PreInit(object sender, System.EventArgs e)
{
    this.Theme = Profile.Theme;
}
    
void Page_Load(object sender, System.EventArgs e)
{
    string callback = Page.GetCallbackEventReference(this, "arg", "MyCallBackHandler", null);
    string script = string.Format("function CallTheServerCallBack(arg) {{{0}; }}", callback);
    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "CallTheServerCallBack", script, true);
		
    if (this.IsPostBack == false) {
        ListItem item = this.DDL_Theme.Items.FindByText(this.Profile.Theme);
        if (item != null) {
            item.Selected = true;
        }
    }
}
    
string ICallbackEventHandler.RaiseCallbackEvent(string eventArgument) 
{
    this.Profile.Theme = eventArgument;
    return null;
}
  
</script>

<html>
<head id="Head1" runat="server">
    <title>Untitled Page</title>

	<script language="javascript">
		function SetTheme(Theme)
		{
				CallTheServerCallBack(Theme);
		}
		function MyCallBackHandler(result, context)
		{
				__doPostBack('', '');
		}
	</script>

</head>
<body>
    <form id="Form1" runat="server">
        <asp:dropdownlist id="DDL_Theme" runat="server" onchange="SetTheme(this.value);">
            <asp:listitem>BasicBlue</asp:listitem>
            <asp:listitem>SmokeAndGlass</asp:listitem>
        </asp:dropdownlist>
        <br />
        <br />
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
        </asp:sqldatasource>
    </form>
</body>
</html>
