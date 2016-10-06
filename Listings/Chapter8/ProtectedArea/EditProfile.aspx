<%@ page language="C#" master="~/MasterPage.master" %>

<script runat="server" language="c#">

void Page_Load(object sender, System.EventArgs e)
{
    if (this.IsPostBack == false) {    
        this.LB_Username.Text = this.User.Identity.Name;
        this.TB_Nickname.Text = this.Profile.Nickname;    
        this.TB_Birthday.Text = this.Profile.Birthday.ToShortDateString();    
        this.TB_Experience.Text = this.Profile.YearsExperienceASPNET.ToString();
    }
}

void Button1_Click(object sender, System.EventArgs e)
{
    if (this.IsValid) {    
        this.Profile.Nickname = this.TB_Nickname.Text;    
            
        DateTime birthday;    
        if (DateTime.TryParse(this.TB_Birthday.Text, out birthday))     
        {    
            this.Profile.Birthday = birthday;
        }    
            
        int experience;        
        if (int.TryParse(this.TB_Experience.Text, out experience))     
        {    
            this.Profile.YearsExperienceASPNET = experience;
        }
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
            <td>Nickname:</td>
            <td>
                <asp:textbox id="TB_Nickname" runat="server">
                </asp:textbox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Birthday:</td>
            <td>
                <asp:textbox id="TB_Birthday" runat="server">
                </asp:textbox>
            </td>
            <td>&nbsp;<asp:comparevalidator id="CompareValidator1" runat="server" errormessage="CompareValidator"
                          controltovalidate="TB_Birthday" operator="DataTypeCheck" type="Date">*</asp:comparevalidator>
            </td>
        </tr>
        <tr>
            <td>Years Experience with ASP.NET:</td>
            <td>
                <asp:textbox id="TB_Experience" runat="server">
                </asp:textbox>
            </td>
            <td>
                <asp:comparevalidator id="CompareValidator2" runat="server" controltovalidate="TB_Experience"
                    operator="DataTypeCheck" type="Integer" setfocusonerror="True">*</asp:comparevalidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:button id="BT_Update" runat="server" text="Update Profile" onclick="Button1_Click" />
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:content>
