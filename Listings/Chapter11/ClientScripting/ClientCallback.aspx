<%@ page language="C#" %>
<%@ implements interface="System.Web.UI.ICallbackEventHandler"%>

<script runat="server">
    
void Page_Load(object sender, System.EventArgs e)
{
    string callback = Page.GetCallbackEventReference(this, "this.value", "ProcessReverse", null);
    this.Textbox1.Attributes.Add("onchange", callback);
}

string ICallbackEventHandler.RaiseCallbackEvent(string eventArgument) 
{
    char[] chars = eventArgument.ToCharArray();
    Array.Reverse(chars);
    return new string(chars);
}

</script>

<script language="javascript">

function ProcessReverse(result, context)
{
    document.forms[0].Textbox1.value = result;
}

</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:textbox id="Textbox1" runat="server">
        </asp:textbox>
    </form>
</body>
</html>
