<%@ page language="C#" %>

<script runat="server">
void Page_Load(object sender, System.EventArgs e)
    {
        this.ClientScript.RegisterStartupScript(this.GetType(), "startupalert", "alert('Hello world!');", true);    
    }</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">

    </form>
</body>
</html>
