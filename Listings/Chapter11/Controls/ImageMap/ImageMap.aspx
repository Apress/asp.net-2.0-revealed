<%@ page language="C#" %>

<script runat="server">
void ImageMap1_Click(object sender, System.Web.UI.WebControls.ImageMapEventArgs e)
{
    this.LB_Message.Text = string.Format("You clicked the {0}.", e.Value);
}

</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:imagemap id="ImageMap1" runat="server" imageurl="paramount.gif" onclick="ImageMap1_Click" hotspots-count="5" hotspotmode="PostBack">
            <asp:rectanglehotspot top="43" right="189" bottom="141" left="101" value="gate">
            </asp:rectanglehotspot>
            <asp:polygonhotspot coordinates="18,149,106,122,192,155,98,190" value="fontain">
            </asp:polygonhotspot>
            <asp:circlehotspot radius="30" x="273" y="92" value="tree">
            </asp:circlehotspot>
            <asp:rectanglehotspot right="295" bottom="145" left="190" value="right building">
            </asp:rectanglehotspot>
            <asp:rectanglehotspot top="52" right="94" bottom="130" value="left building">
            </asp:rectanglehotspot>
        </asp:imagemap>
        <br />
        <asp:label id="LB_Message" runat="server" font-size="20pt">
        </asp:label>

    </form>
</body>
</html>
