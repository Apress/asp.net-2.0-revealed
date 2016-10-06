<%@ page language="C#" %>

<script runat="server">
    
void BT_Submit_Click(object sender, System.EventArgs e)
{
    this.LT_Name.Text = string.Format("Your name is: {0}", this.TB_Name.Text);
    this.MV_Main.ActiveViewIndex = 1;
}

void LB_Back_Click(object sender, System.EventArgs e)
{
    this.MV_Main.ActiveViewIndex = 0;
}
    
</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:multiview id="MV_Main" runat="server" activeviewindex="0">
            <asp:view id="View1" runat="server">
                <p>
                    Please enter your name:
                    <br /><br />
                    <asp:textbox id="TB_Name" runat="server"/>
                    <asp:button id="BT_Submit" runat="server" text="OK" onclick="BT_Submit_Click" softkeylabel="OK" />
                </p>
            </asp:view>
            <asp:view id="View2" runat="server">
                <p>
                <asp:literal id="LT_Name" runat="server"/>
                <br /><br />
                    <asp:linkbutton id="LB_Back" runat="server" onclick="LB_Back_Click" softkeylabel="Back">Back</asp:linkbutton>
                </p>
            </asp:view>
        </asp:multiview>
    </form>
</body>
</html>
