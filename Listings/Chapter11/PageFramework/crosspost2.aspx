<%@ page language="C#" %>

<script runat="server">

void Page_Load(object sender, System.EventArgs e)
{
    TextBox textBox1 = (TextBox) PreviousPage.FindControl("TextBox1");
    Calendar calendar1 = (Calendar) PreviousPage.FindControl("Calendar1");
    this.Label1.Text = string.Format("Hi {0} you selected {1}", textBox1.Text, calendar1.SelectedDate);
}

</script>

<html>
<body>
    <form id="Form1" runat="server">
        <asp:label id="Label1" runat="server" font-size="X-Large"></asp:label>
    </form>
</body>
</html>

