<%@ page language="C#" %>

<script runat="server">
    
void BT_Submit_Click(object sender, System.EventArgs e)
{
    this.LT_Name.Text = string.Format("Your name is: {0}", this.TB_Name.Text);
}
    
</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <p>Please enter your name:
            <br /><br />
            <asp:textbox id="TB_Name" runat="server"/>
            <asp:button id="BT_Submit" runat="server" text="OK" onclick="BT_Submit_Click" />
        </p>
        <p><asp:literal id="LT_Name" runat="server"/></p>
    </form>
</body>
</html>
