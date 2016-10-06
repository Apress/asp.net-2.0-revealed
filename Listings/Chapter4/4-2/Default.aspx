<%@ page language="C#" master="~/main.master" printcontent:master="~/print.master" %>

<script runat="server" language="c#">

  public override bool TestDeviceFilter(string deviceFilterName) {

    if (deviceFilterName.Equals("printcontent")) {
        if (this.Request.QueryString["print"] != null) {
            return true;
        }
    }
    return base.TestDeviceFilter(deviceFilterName);
  }

</script>
<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="server">
    Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test
    Test Test<br />
    <br />
    <asp:hyperlink id="HyperLink1" runat="server" navigateurl="Default.aspx?print=1">Print
        me!</asp:hyperlink>
</asp:content>

