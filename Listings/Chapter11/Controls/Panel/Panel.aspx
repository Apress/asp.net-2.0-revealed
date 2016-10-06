<%@ page language="C#" %>

<script runat="server">
    
void Page_Load(object sender, System.EventArgs e)
{
    StringBuilder sb = new StringBuilder();    
    for (int i = 0; i < 100; i++) {    
        sb.AppendLine("Hello World<br/>");
    }    
    this.Panel1.Controls.Add(new LiteralControl(sb.ToString()));
}
    
</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:panel id="Panel1" runat="server" width="300px" height="200px" scrollbars="Vertical">
        </asp:panel>

    </form>
</body>
</html>
