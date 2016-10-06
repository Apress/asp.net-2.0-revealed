<%@ page language="C#" %>
<%@ import namespace="System.Web.Management" %>

<script runat="server">

void Page_Load(object sender, System.EventArgs e)
{
    string appPath = this.Request.ApplicationPath;    
    Configuration config = Configuration.GetConfigurationForUrl(appPath);

    CompilationSection compilation = config.Web.Compilation;
    compilation.Debug = (!compilation.Debug);

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
