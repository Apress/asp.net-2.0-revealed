<%@ page language="C#" master="~/MasterPage.master" %>

<script runat="server" language="c#">
    
void Page_Load(object sender, System.EventArgs e)
{        
    if (this.IsPostBack == false) {    
        this.UpdateBookmarkList();
    }
}

void BT_DeleteBookmark_Click(object sender, System.EventArgs e)
{
    if (this.LB_Bookmarks.SelectedIndex != -1) {    
        this.Profile.Bookmarks.RemoveAt(this.LB_Bookmarks.SelectedIndex);    
        this.UpdateBookmarkList();
    }
}

private void UpdateBookmarkList() {
    this.LB_Bookmarks.DataSource = this.Profile.Bookmarks;
    this.LB_Bookmarks.DataBind();
}

void BT_OpenBookmark_Click(object sender, System.EventArgs e)
{
    if (this.LB_Bookmarks.SelectedIndex != -1) {    
        this.Response.Redirect(this.LB_Bookmarks.SelectedValue, true);
    }    
}
    
</script>

<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <asp:listbox id="LB_Bookmarks" runat="server"/>
    <br />
    <asp:button id="BT_OpenBookmark" runat="server" text="Open" onclick="BT_OpenBookmark_Click" />
    <asp:button id="BT_DeleteBookmark" runat="server" text="Delete" onclick="BT_DeleteBookmark_Click" />
</asp:content>

