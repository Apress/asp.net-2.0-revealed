 <%@ page language="C#" %>
 <%@ import namespace="System.Web.Management" %>

<script runat="server">
    
    void Page_Load(object sender, System.EventArgs e)
    {
        string appPath = this.Request.ApplicationPath;    
        Configuration config = Configuration.GetConfigurationForUrl(appPath);
        ConnectionStringsSection connStrings = (ConnectionStringsSection) config.Sections["connectionStrings"];
        
        connStrings.ConnectionStrings.Remove("LocalSqlServer");
        
        ConnectionStringSettings connString = new ConnectionStringSettings();
        connString.Name = "test";
        connString.ConnectionString = "data source=127.0.0.1;Integrated Security=SSPI";
        connStrings.ConnectionStrings.Add(connString);
        
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
