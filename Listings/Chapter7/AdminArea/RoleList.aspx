<%@ page language="C#" master="~/MasterPage.master" %>
<script runat="server" language="c#">
    void Page_Load(object sender, System.EventArgs e)
    {
        if (this.IsPostBack == false) {    
            this.UpdateRoleList(null);    
        }
    }        
    
    void DDL_RoleList_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        this.UpdateRoleMemberList();
    }
    
    void BT_RemoveRole_Click(object sender, System.EventArgs e)
    {
        if (this.DDL_RoleList.SelectedIndex != -1) {    
            Roles.DeleteRole(this.DDL_RoleList.SelectedValue);    
            this.UpdateRoleList(null);
        }
    }
    
    void BT_AddRole_Click(object sender, System.EventArgs e)
    {
        if (this.TB_NewRole.Text.Length > 0) {
            Roles.CreateRole(this.TB_NewRole.Text);
            this.UpdateRoleList(this.TB_NewRole.Text);
        }
    }
    
    void BT_RemoveUserFromRole_Click(object sender, System.EventArgs e)
    {
        if (this.LB_RoleUsers.SelectedIndex != -1) {    
            Roles.RemoveUserFromRole(this.LB_RoleUsers.SelectedValue, this.DDL_RoleList.SelectedValue);    
            this.UpdateRoleMemberList();
        }
    }
    
    void BT_AddUserToRole_Click(object sender, System.EventArgs e)
    {
        if (this.TB_NewUser.Text.Length > 0) {    
            Roles.AddUserToRole(this.TB_NewUser.Text, this.DDL_RoleList.SelectedValue);    
            this.UpdateRoleMemberList();
        }
    }
    
    private void UpdateRoleList(string role) {    
        this.DDL_RoleList.DataSource = Roles.GetAllRoles();
        this.DDL_RoleList.DataBind();    
            
        if (role != null) {    
            ListItem item = this.DDL_RoleList.Items.FindByText(role);    
            if (item != null) {    
                item.Selected = true;
            }
        }    
        this.UpdateRoleMemberList();
    }
       
        
    private void UpdateRoleMemberList() {
        string role = this.DDL_RoleList.SelectedValue;
    
        this.LB_RoleUsers.DataSource = Roles.GetUsersInRole(role);
        this.LB_RoleUsers.DataBind();
    }
    
    </script>
<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="server">
    Available Roles: &nbsp;<asp:dropdownlist id="DDL_RoleList" runat="server" onselectedindexchanged="DDL_RoleList_SelectedIndexChanged" autopostback="True">
                           </asp:dropdownlist>
    <asp:button id="BT_RemoveRole" runat="server" text="Remove Role" onclick="BT_RemoveRole_Click" />
    <br />
    <br />
    <asp:textbox id="TB_NewRole" runat="server">
    </asp:textbox>
    <asp:button id="BT_AddRole" runat="server" text="Add Role" onclick="BT_AddRole_Click" />&nbsp;<br />
    <br />
    Role Members:<br />
    <asp:listbox id="LB_RoleUsers" runat="server">
    </asp:listbox>
    <asp:button id="BT_RemoveUserFromRole" runat="server" text="Remove" onclick="BT_RemoveUserFromRole_Click" /><br />
    <br />
    <asp:textbox id="TB_NewUser" runat="server">
    </asp:textbox>
    <asp:button id="BT_AddUserToRole" runat="server" text="Add User To Role" onclick="BT_AddUserToRole_Click" /></asp:content>
