 <%@ page language="C#" %>

<script runat="server">
    
    void Page_Load(object sender, System.EventArgs e)
    {
        foreach (string key in ConfigurationSettings.AppSettings) {
            this.Response.Write(string.Format("<p><b>{0}</b> = {1}</p>", key, ConfigurationSettings.AppSettings[key]));
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
