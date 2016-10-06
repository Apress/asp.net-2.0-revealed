<%@ page language="C#" master="~/MasterPage.master" %>
<script runat="server" language="c#">
    void Page_Load(object sender, System.EventArgs e)
    {
        if (this.IsPostBack == false) {    
            MembershipUser user = Membership.GetUser();    
    
            this.LB_Username.Text = user.Username;    
            this.TB_Email.Text = user.Email;    
            this.TB_Comment.Text = user.Comment;    
        }
    }
    
    void Button1_Click(object sender, System.EventArgs e)
    {    
        if (this.IsValid) {
            MembershipUser user = Membership.GetUser();

            user.Email = this.TB_Email.Text;
            user.Comment = this.TB_Comment.Text;
            Membership.UpdateUser(user);    
                
            if ((this.TB_OldPassword.Text.Length > 0) && (this.TB_NewPassword.Text.Length > 0)) {    
                user.ChangePassword(this.TB_OldPassword.Text, this.TB_NewPassword.Text);
            }
        
            /*if (this.TB_NewPassword.Text.Length > 0) {    
                string oldPassword = user.GetPassword();
                user.ChangePassword(oldPassword, this.TB_NewPassword.Text);
            }*/
        
            /*if (this.TB_NewPassword.Text.Length > 0) {    
                string oldPassword = user.ResetPassword();
                user.ChangePassword(oldPassword, this.TB_NewPassword.Text);
            }*/
        }
    }
</script>

<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <table cellspacing="1" cellpadding="1" border="1">
        <tr>
            <td>User Name:</td>
            <td>
                &nbsp;<asp:label id="LB_Username" runat="server"></asp:label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>E-Mail:</td>
            <td>
                <asp:textbox id="TB_Email" runat="server">
                </asp:textbox>
            </td>
            <td>
                <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" controltovalidate="TB_Email"
                    setfocusonerror="True">*</asp:requiredfieldvalidator>
            </td>
        </tr>
        <tr>
            <td>Comment:</td>
            <td>
                <asp:textbox id="TB_Comment" runat="server">
                </asp:textbox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Old Password:</td>
            <td>
                <asp:textbox id="TB_OldPassword" runat="server" textmode="Password">
                </asp:textbox>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>New Password:</td>
            <td>
                <asp:textbox id="TB_NewPassword" runat="server" textmode="Password">
                </asp:textbox>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>Passwort Confirmation:</td>
            <td>
                <asp:textbox id="TB_PasswordConfirmation" runat="server" textmode="Password">
                </asp:textbox>
            </td>
            <td>
                <asp:comparevalidator id="CompareValidator1" runat="server" setfocusonerror="True"
                    controltovalidate="TB_PasswordConfirmation" controltocompare="TB_NewPassword">*</asp:comparevalidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:label id="LB_CreateError" runat="server" font-bold="True" forecolor="Red">
                </asp:label>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:button id="Button1" runat="server" text="Update User Data" onclick="Button1_Click" />
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:content>
