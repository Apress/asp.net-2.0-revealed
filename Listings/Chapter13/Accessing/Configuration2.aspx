<%@ page language="C#" %>

<script runat="server">

void Page_Load(object sender, System.EventArgs e)
{
    string appPath = this.Request.ApplicationPath;    
    Configuration config = Configuration.GetConfigurationForUrl(appPath);
    
    for(int i = 0; i < config.SectionGroups.Count; i++) {
        ConfigurationSectionGroup group = config.SectionGroups[i];
        this.LB_Sections.Items.Add(group.Name);
        
        for (int j = 0; j < group.Sections.Count; j++) {
            ConfigurationSection section = group.Sections[j];
            this.LB_Sections.Items.Add(string.Format("...{0}", section.Name));
        }
    }
}
    
</script>

<html>
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="Form1" runat="server">
        <asp:listbox id="LB_Sections" runat="server" width="300px" height="300px">
        </asp:listbox>
    </form>
</body>
</html>
