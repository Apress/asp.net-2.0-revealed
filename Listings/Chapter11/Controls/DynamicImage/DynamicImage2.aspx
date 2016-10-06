<%@ page language="C#" %>
<%@ import namespace="System.IO" %>

<script runat="server">

void Page_Load(object sender, System.EventArgs e)
{
    DirectoryInfo directory = new DirectoryInfo(Path.GetDirectoryName(this.Request.PhysicalPath));
    this.DL_Thumbnails.DataSource = directory.GetFiles("*.gif");
    this.DL_Thumbnails.DataBind();
}
    
</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:datalist runat="server" id="DL_Thumbnails" repeatcolumns="2">
            <itemtemplate>
                <asp:dynamicimage runat="server" 
                    imagefile='<%# Eval("Name") %>' 
                    width="150px">
                </asp:dynamicimage>
            </itemtemplate>
        </asp:datalist>
    </form>
</body>
</html>
