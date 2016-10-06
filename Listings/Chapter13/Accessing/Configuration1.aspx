<%@ page language="C#" %>
<%@ import namespace="System.Web.Management" %>

<script runat="server">

void Page_Load(object sender, System.EventArgs e)
{
    string appPath = this.Request.ApplicationPath;    
    Configuration config = Configuration.GetConfigurationForUrl(appPath);
    AuthorizationSection authorization = config.Web.Authorization;
    
    this.DL_Rules.DataSource = authorization.Rules;
    this.DL_Rules.DataBind();
}
    
</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:datalist id="DL_Rules" runat="server">
            <itemtemplate>
                Action: <asp:literal id="Literal1" runat="server" text='<%# ((AuthorizationRule) Container.DataItem).Action %>'/>
                <br />
                Users: 
                <asp:repeater runat="server" DataSource='<%# ((AuthorizationRule) Container.DataItem).Users %>'>
                    <itemtemplate><%# Container.DataItem %></itemtemplate>
                    <separatortemplate>-</separatortemplate>
                </asp:repeater>
                <br />
                Roles: 
                <asp:repeater runat="server" datasource='<%# ((AuthorizationRule) Container.DataItem).Roles %>'>
                    <itemtemplate><%# Container.DataItem %></itemtemplate>
                    <separatortemplate>-</separatortemplate>
                </asp:repeater>
            </itemtemplate>
        </asp:datalist>

    </form>
</body>
</html>
