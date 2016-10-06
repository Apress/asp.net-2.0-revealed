<%@ page language="C#" %>
<%@ previouspage virtualpath="crosspost3.aspx" %>

<script runat="server">

void Page_Load(object sender, System.EventArgs e)
{
    if (this.IsCrossPagePostBack) {
        this.Label1.Text = string.Format("Hi {0} you selected {1}", this.PreviousPage.Text, this.PreviousPage.SelectedDate);
    }
}
    
</script>

<html>
<body>
    <form id="Form1" runat="server">
        <asp:label id="Label1" runat="server" font-size="X-Large"></asp:label>
    </form>
</body>
</html>

