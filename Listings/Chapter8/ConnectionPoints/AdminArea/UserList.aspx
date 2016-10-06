<%@ page language="C#" master="~/MasterPage.master" %>
<script runat="server" language="c#">

    void Page_Load(object sender, System.EventArgs e)
    {
        this.GV_UserList.DataSource = Membership.GetAllUsers();    
        this.GV_UserList.DataBind();
    }
    
    void GV_UserList_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        string userName = (this.GV_UserList.SelectedValue as string);
        MembershipUser user = Membership.GetUser(userName);
        this.DV_User.DataSource = new MembershipUser[] { user };
        this.DV_User.DataBind();
    }
    
</script>

<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <asp:gridview id="GV_UserList" runat="server" bordercolor="#3366CC" borderstyle="None" borderwidth="1px" backcolor="White" cellpadding="4" autogeneratecolumns="False" datakeynames="Username" onselectedindexchanged="GV_UserList_SelectedIndexChanged">
        <alternatingrowstyle font-italic="False" font-bold="False">
        </alternatingrowstyle>
        <pagerstyle forecolor="#003399" font-italic="False" font-bold="False" horizontalalign="Left"
            backcolor="#99CCCC">
        </pagerstyle>
        <columnfields>
            <asp:commandfield showselectbutton="True">
            </asp:commandfield>
            <asp:boundfield datafield="Username" headertext="Username">
            </asp:boundfield>
            <asp:boundfield datafield="Email" headertext="Email">
            </asp:boundfield>
            <asp:boundfield datafield="LastLoginDate" headertext="LastLoginDate">
            </asp:boundfield>
        </columnfields>
        <selectedrowstyle forecolor="#CCFF99" backcolor="#009999" font-italic="False" font-bold="True">
        </selectedrowstyle>
        <rowstyle forecolor="#003399" backcolor="White" font-italic="False" font-bold="False">
        </rowstyle>
        <headerstyle forecolor="#CCCCFF" backcolor="#003399" font-italic="False" font-bold="True">
        </headerstyle>
        <footerstyle forecolor="#003399" backcolor="#99CCCC" font-italic="False" font-bold="False">
        </footerstyle>
    </asp:gridview><br />
    
    <asp:detailsview id="DV_User" runat="server" bordercolor="#3366CC" borderstyle="None" borderwidth="1px" backcolor="White" cellpadding="4" gridlines="Both">
        <alternatingrowstyle font-italic="False" font-bold="False">
        </alternatingrowstyle>
        <pagerstyle forecolor="#003399" font-italic="False" font-bold="False" horizontalalign="Left"
            backcolor="#99CCCC">
        </pagerstyle>
        <editrowstyle forecolor="#CCFF99" backcolor="#009999" font-italic="False" font-bold="True">
        </editrowstyle>
        <rowstyle forecolor="#003399" backcolor="White" font-italic="False" font-bold="False">
        </rowstyle>
        <headerstyle forecolor="#CCCCFF" backcolor="#003399" font-italic="False" font-bold="True">
        </headerstyle>
        <footerstyle forecolor="#003399" backcolor="#99CCCC" font-italic="False" font-bold="False">
        </footerstyle>
    </asp:detailsview>
</asp:content>
