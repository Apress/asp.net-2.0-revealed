<%@ page language="C#" master="~/MasterPage.master" %>

<script runat="server" language="c#">

void Page_Load(object sender, System.EventArgs e)
{
    if (this.IsPostBack == false) {
        this.TB_Nickname.Text = this.Profile.Nickname;
    }
}

void BT_UpdateNickname_Click(object sender, System.EventArgs e)
{
    this.Profile.Nickname = this.TB_Nickname.Text;
}

</script>

<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <asp:hyperlink runat="server" navigateurl="UpdateUserData.aspx">Update User Data</asp:hyperlink>
    <br />
    <asp:hyperlink runat="server" navigateurl="~/ProtectedArea/EditProfile.aspx">Edit Profile</asp:hyperlink>
    <br />
    <asp:hyperlink runat="server" navigateurl="~/ProtectedArea/EditBookmarks.aspx">Edit Bookmarks</asp:hyperlink>
    <br />
    <asp:hyperlink runat="server" navigateurl="~/ProtectedArea/Basket.aspx">Basket</asp:hyperlink>
    <br />
    <br />
    Your nickname:
    <asp:textbox id="TB_Nickname" runat="server"></asp:textbox>
    <asp:button id="BT_UpdateNickname" runat="server" text="Update" onclick="BT_UpdateNickname_Click" />
</asp:content>
