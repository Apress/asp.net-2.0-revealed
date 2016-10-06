<%@ page language="C#" %>

<script runat="server">

</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:hyperlink id="HyperLink1" runat="server" countclicks="True" countergroup="HyperLinks"
            navigateurl="http://www.qualisite.de">Even HyperLinks are tracked</asp:hyperlink>

    </form>
</body>
</html>
