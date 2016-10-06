<%@ page language="C#" %>
<%@ register tagprefix="uc1" tagname="UCMaster" src="~/UCMaster.ascx" %>

<script runat="server">

</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <p>This text is embedded in the page itself.</p>
        <uc1:ucmaster id="UCMaster1" runat="server"></uc1:ucmaster>
        <p>This text is again embedded in the page.</p>
    </form>
</body>
</html>
