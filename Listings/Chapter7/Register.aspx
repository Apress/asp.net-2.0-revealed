<%@ page language="C#" master="~/MasterPage.master" %>
<script runat="server" language="c#">
    
void Button1_Click(object sender, System.EventArgs e)
{
    if (this.IsValid) {    
        MembershipCreateStatus status;    
        MembershipUser user = Membership.CreateUser(this.TB_Username.Text, this.TB_Password.Text, this.TB_Email.Text, out status);    

        switch (status) {    
            case MembershipCreateStatus.Success:        
                FormsAuthentication.RedirectFromLoginPage(user.Username, false);
                break;
                    
            case MembershipCreateStatus.DuplicateEmail:        
                this.LB_CreateError.Text = "The email address is already registered.";
                break;    
                    
            case MembershipCreateStatus.DuplicateUsername:        
                this.LB_CreateError.Text = "The username is already registered.";
                break;    
                    
            case MembershipCreateStatus.InvalidEmail:        
                this.LB_CreateError.Text = "This email address is invalid.";
                break;

            case MembershipCreateStatus.InvalidPassword:        
                this.LB_CreateError.Text = "This password is invalid.";
                break;
                
            case MembershipCreateStatus.UserRejected:        
                this.LB_CreateError.Text = "The user was rejected for an unknown reason.";
                break;
        }
    }
}
    
</script>

<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <table cellspacing="1" cellpadding="1" border="1">
        <tr>
            <td>User Name:</td>
            <td>
                <asp:textbox id="TB_Username" runat="server">
                </asp:textbox>
            </td>
            <td>
                <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" controltovalidate="TB_Username" setfocusonerror="True">
                          *</asp:requiredfieldvalidator>
            </td>
        </tr>
        <tr>
            <td>E-Mail:</td>
            <td>
                <asp:textbox id="TB_Email" runat="server">
                </asp:textbox>
            </td>
            <td>
                <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" controltovalidate="TB_Email" setfocusonerror="True">
                          *</asp:requiredfieldvalidator>
            </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <asp:textbox id="TB_Password" runat="server" textmode="Password">
                </asp:textbox>
            </td>
            <td>
                <asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" errormessage="RequiredFieldValidator"
                          controltovalidate="TB_Password" setfocusonerror="True">*</asp:requiredfieldvalidator>
            </td>
        </tr>
        <tr>
            <td>Password Confirmation:</td>
            <td>
                <asp:textbox id="TB_PasswordConfirmation" runat="server" textmode="Password">
                </asp:textbox>
            </td>
            <td>
                <asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" errormessage="RequiredFieldValidator"
                          controltovalidate="TB_PasswordConfirmation">*</asp:requiredfieldvalidator>
                <asp:comparevalidator id="CompareValidator1" runat="server" controltovalidate="TB_PasswordConfirmation"
                    controltocompare="TB_Password" setfocusonerror="True">*</asp:comparevalidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:label id="LB_CreateError" runat="server" forecolor="Red" font-bold="True">
                </asp:label>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:button id="Button1" runat="server" text="Register New User" onclick="Button1_Click" />
            </td>
            <td>
                
            </td>
        </tr>
    </table>
</asp:content>
