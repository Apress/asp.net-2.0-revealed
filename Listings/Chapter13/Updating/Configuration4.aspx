<%@ page language="C#" %>
<%@ import namespace="System.Web.Management" %>

<script runat="server">

void Page_Load(object sender, System.EventArgs e)
{
    string appPath = this.Request.ApplicationPath;    
    Configuration config = Configuration.GetConfigurationForUrl(appPath);
    AuthorizationSection authorization = config.Web.Authorization;

    AuthorizationRule rule = new AuthorizationRule();
    rule.Action = AuthorizationRuleAction.Allow;
    rule.Users.Add("TestUser");
    rule.Roles.Add("TestRole");
    authorization.Rules.Add(rule);

    config.Update();
}
    
</script>

<html>
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="Form1" runat="server">

    </form>
</body>
</html>
