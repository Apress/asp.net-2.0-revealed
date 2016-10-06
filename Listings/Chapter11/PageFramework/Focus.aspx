<%@ page language="C#" %>

<script runat="server">

    
    
    void Button1_Click(object sender, System.EventArgs e)
    {
        this.Textbox1.Focus();
    }
    
    
    
    void Button2_Click(object sender, System.EventArgs e)
    {
        this.SetFocus(this.Textbox1);
    }
    
</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server" defaultfocus="TextBox2">
        <asp:textbox id="Textbox1" runat="server">
        </asp:textbox>
        <asp:button id="Button1" runat="server" text="Button" onclick="Button1_Click" />
        <asp:button id="Button2" runat="server" text="Button" onclick="Button2_Click" />
        <br />
        <br />
        <br />
        <asp:textbox id="TextBox2" runat="server">
        </asp:textbox>
    </form>
</body>
</html>
