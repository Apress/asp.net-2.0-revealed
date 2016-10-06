<%@ page language="C#" %>

<script runat="server">

void Page_Load(object sender, System.EventArgs e)
{
    string appPath = this.Request.ApplicationPath;    
    Configuration config = Configuration.GetConfigurationForUrl(appPath);
    
    ConfigurationSection section = config.Sections["appSettings"];
    this.TB_XML.Text = section.GetRawXml().OuterXml;
}
    
</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:textbox id="TB_XML" runat="server" textmode="MultiLine" width="300px" height="100px">
        </asp:textbox>
    </form>
</body>
</html>
