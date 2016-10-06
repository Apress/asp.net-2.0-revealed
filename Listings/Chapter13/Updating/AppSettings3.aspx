 <%@ page language="C#" %>
  <%@ import namespace="System.Web.Management" %>

<script runat="server">
    
    void Page_Load(object sender, System.EventArgs e)
    {
        string appPath = this.Request.ApplicationPath;    
        Configuration config = Configuration.GetConfigurationForUrl(appPath);
        AppSettingsSection appSettings = config.AppSettings;

        appSettings.Settings.Add("test3", "This one was created using the new API");
        config.Update();

        foreach (string key in appSettings.Settings) {
            this.Response.Write(string.Format("<p><b>{0}</b> = {1}</p>", key, appSettings.Settings[key]));
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
