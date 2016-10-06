<%@ page language="C#" master="~/MasterPage4.master" %>
<script runat="server" language="c#">
void Page_Load(object sender, System.EventArgs e)
    {
        this.Master.HtmlTitle = "Hello World!";
        this.Header.Metadata.Add("Author", "Patrick A. Lorenz");
    }
</script>

