<%@ page language="C#" %>

<script runat="server">
    
void BT_View_Click(object sender, System.EventArgs e)
{
    this.SiteCounters.FlushAll();
    this.GV_Rows.DataSource = this.SiteCounters.GetGroupRows(DateTime.MinValue, DateTime.MaxValue, this.DDL_Groups.SelectedValue);
    this.GV_Rows.DataBind();
}

</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <p>
            <asp:dropdownlist id="DDL_Groups" runat="server">
                <asp:listitem selected="True">Buttons</asp:listitem>
                <asp:listitem>HyperLinks</asp:listitem>
                <asp:listitem>Ads</asp:listitem>
                <asp:listitem>PageCounters</asp:listitem>
            </asp:dropdownlist>
            <asp:button id="BT_View" runat="server" text="View" onclick="BT_View_Click" />
        </p>
        <p>
            <asp:gridview id="GV_Rows" runat="server" bordercolor="#CC9966" borderstyle="None" borderwidth="1px" backcolor="White" cellpadding="4">
                <alternatingrowstyle font-italic="False" font-bold="False">
                </alternatingrowstyle>
                <pagerstyle forecolor="#330099" font-italic="False" font-bold="False" horizontalalign="Center"
                    backcolor="#FFFFCC">
                </pagerstyle>
                <pagersettings mode="NextPrev">
                </pagersettings>
                <selectedrowstyle forecolor="#663399" backcolor="#FFCC66" font-italic="False" font-bold="True">
                </selectedrowstyle>
                <rowstyle forecolor="#330099" backcolor="White" font-italic="False" font-bold="False">
                </rowstyle>
                <headerstyle forecolor="#FFFFCC" backcolor="#990000" font-italic="False" font-bold="True">
                </headerstyle>
                <footerstyle forecolor="#330099" backcolor="#FFFFCC" font-italic="False" font-bold="False">
                </footerstyle>
            </asp:gridview>
        </p>
    </form>
</body>
</html>
