<%@ page language="C#" %>

<script runat="server">
void Button1_Click(object sender, System.EventArgs e)
{
    this.LB_Message.Text = "You clicked button1";
}
    
</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server" defaultbutton="Button1">
        <asp:textbox id="Textbox1" runat="server">
        </asp:textbox>
        <asp:button id="Button1" runat="server" text="Button" onclick="Button1_Click" />
        <asp:label id="LB_Message" runat="server"></asp:label>
    </form>
</body>
</html>
