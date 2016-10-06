<%@ page language="C#" master="~/MasterPage.master" %>
<script runat="server" language="c#">
void Page_Load(object sender, System.EventArgs e)
{
    this.Label1.Text = string.Format("Anonymous ID: {0}", this.Request.AnonymousId);
}
</script>

<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <h1>Main page - open for any (anonymous) user</h1>    
    <p>
        <asp:label id="Label1" runat="server">Label</asp:label>&nbsp;
    </p>
</asp:content>
