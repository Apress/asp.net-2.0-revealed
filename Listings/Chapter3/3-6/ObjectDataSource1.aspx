<%@ page language="C#" %>

<script runat="server">

</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:gridview id="GridView1" runat="server" bordercolor="#999999" borderstyle="None"
            borderwidth="1px" backcolor="White" cellpadding="3" gridlines="Vertical" datasourceid="ObjectDataSource1">
            <alternatingrowstyle backcolor="Gainsboro" font-italic="False" font-bold="False">
            </alternatingrowstyle>
            <pagerstyle forecolor="Black" font-italic="False" font-bold="False" horizontalalign="Center"
                backcolor="#999999">
            </pagerstyle>
            <summarytitlestyle borderwidth="1px" borderstyle="None" bordercolor="#999999" backcolor="White">
            </summarytitlestyle>
            <selectedrowstyle forecolor="White" backcolor="#008A8C" font-italic="False" font-bold="True">
            </selectedrowstyle>
            <detailtitlestyle borderwidth="1px" borderstyle="None" bordercolor="#999999" backcolor="White">
            </detailtitlestyle>
            <rowstyle forecolor="Black" backcolor="#EEEEEE" font-italic="False" font-bold="False">
            </rowstyle>
            <headerstyle forecolor="White" backcolor="#000084" font-italic="False" font-bold="True">
            </headerstyle>
            <footerstyle forecolor="Black" backcolor="#CCCCCC" font-italic="False" font-bold="False">
            </footerstyle>
        </asp:gridview>
        <asp:objectdatasource id="ObjectDataSource1" runat="server" typename="PersonManager" selectmethod="SelectPersons">
        </asp:objectdatasource>

    </form>
</body>
</html>
