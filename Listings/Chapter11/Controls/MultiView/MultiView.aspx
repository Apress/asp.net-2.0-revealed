<%@ page language="C#" %>

<script runat="server">
void Button1_Click(object sender, System.EventArgs e)
{
    this.LB_Name.Text = this.TB_Name.Text;    
    this.MultiView1.ActiveViewIndex = 1;
}
    
</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:multiview id="MultiView1" runat="server" activeviewindex="0">
            <asp:view id="View1" runat="server">
                Please enter your name:
                <br />
                <br />
                <asp:textbox id="TB_Name" runat="server">
                </asp:textbox>
                <asp:button id="Button1" runat="server" text="OK" onclick="Button1_Click" />
            </asp:view>
            <asp:view id="View2" runat="server">
                Your name is
                <asp:label id="LB_Name" runat="server">Label</asp:label>
            </asp:view>
        </asp:multiview>&nbsp;

    </form>
</body>
</html>
