<%@ page language="C#" %>

<script runat="server">

</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:adrotator id="AdRotator2" runat="server" 
            height="242px" width="122px" backcolor="#00C000"
            advertisementfile="advertisements\ads_tall.xml" 
            countergroup="Ads"
            countclicks="True" 
            countviews="True" 
            trackapplicationname="true" 
            tracknavigateurl="true" 
            trackpageurl="true"
        />
</form>
</body>
</html>
