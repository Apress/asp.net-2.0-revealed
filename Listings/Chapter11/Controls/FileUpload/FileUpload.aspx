<%@ page language="C#" %>

<script runat="server">
    
void BT_Upload_Click(object sender, System.EventArgs e)
{
    if ((this.FU_Upload.PostedFile != null) && (this.FU_Upload.PostedFile.ContentLength > 0)) {
        this.LB_Message.Text = "Thanks!";
    } else {    
        this.LB_Message.Text = "No or empty file!";
    }
}
    
</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:fileupload id="FU_Upload" runat="server" />
        <asp:button id="BT_Upload" runat="server" text="Upload" onclick="BT_Upload_Click" />
        <br />
        <br />
        <asp:label id="LB_Message" runat="server">
        </asp:label>

    </form>
</body>
</html>
