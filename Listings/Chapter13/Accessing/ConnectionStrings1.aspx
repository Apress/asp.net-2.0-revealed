 <%@ page language="C#" %>
 <%@ import namespace="System.Web.Management" %>

<script runat="server">
    
    void Page_Load(object sender, System.EventArgs e)
    {
        string appPath = this.Request.ApplicationPath;    
        Configuration config = Configuration.GetConfigurationForUrl(appPath);
        ConnectionStringsSection connStrings = (ConnectionStringsSection) config.Sections["connectionStrings"];

        foreach(ConnectionStringSettings connString in connStrings.ConnectionStrings) {
            this.Response.Write(string.Format("<p><b>{0}</b> = {1}</p>", connString.Name, connString.ConnectionString));
        }
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
