<%@ page language="C#" %>

<script runat="server">

</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        &nbsp;<asp:button id="Button1" runat="server" text="Click me!" countergroup="Buttons" countclicks="True"
                  countername="First button" />
        <br />
        <br />
        <asp:linkbutton id="LinkButton1" runat="server" countergroup="Buttons" countclicks="True"
            countername="Second button">Click me, too</asp:linkbutton>
        <br />

    </form>
</body>
</html>
