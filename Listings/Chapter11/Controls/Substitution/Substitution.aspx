<%@ page language="C#" %>

<script runat="server">
    
private static string MySubstitutionCallback(HttpContext context) {    
    return "Hello World";
}
    
</script>

<html>
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="Form1" runat="server">
        Some text goes here.
        <br />
        <br />
        <asp:substitution id="Substitution1" runat="server" 
            methodname="MySubstitutionCallback" 
        />
        <br />
        <br />
        Some other text goes here.
    </form>
</body>
</html>