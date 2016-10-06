<%@ page language="C#" master="~/MasterPage.master" %>
<script runat="server" language="c#">

</script>

<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <asp:login id="Login1" runat="server" font-names="Verdana" font-size="10pt" borderwidth="1px"
        bordercolor="#999999" borderstyle="Solid" backcolor="#FFFFCC" instructiontext="Please enter your user name and password to log in"
        remembermeset="True" visiblewhenloggedin="True">
        <titletextstyle font-bold="True" forecolor="White" backcolor="#333399">
        </titletextstyle>
        <layouttemplate>
            <table style="FONT-SIZE: 10pt; FONT-FAMILY: Verdana" border="0">
                <tr>
                    <td style="FONT-WEIGHT: bold; COLOR: white; BACKGROUND-COLOR: #333399" align="center"
                        colspan="2">Log In</td>
                </tr>
                <tr>
                    <td align="center" colspan="2">Please enter your user name and password to log in</td>
                </tr>
                <tr>
                    <td align="right">User Name:</td>
                    <td>
                        <asp:textbox id="UserName" runat="server">
                        </asp:textbox>
                        <asp:requiredfieldvalidator id="UserNameRequired" runat="server" errormessage="User Name."
                            validationgroup="Content1$Login1_Group" controltovalidate="UserName">*</asp:requiredfieldvalidator>
                    </td>
                </tr>
                <tr>
                    <td align="right">Password:</td>
                    <td>
                        <asp:textbox id="Password" runat="server" textmode="Password">
                        </asp:textbox>
                        <asp:requiredfieldvalidator id="PasswordRequired" runat="server" errormessage="Password."
                            validationgroup="Content1$Login1_Group" controltovalidate="Password">*</asp:requiredfieldvalidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:checkbox id="RememberMe" runat="server" text="Remember me next time." checked="True" />
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="2">
                        <asp:button id="Button" runat="server" validationgroup="Content1$Login1_Group" text="Log In"
                            commandname="Submit" />
                    </td>
                </tr>
                <tr>
                    <td style="COLOR: red" colspan="2">
                        <asp:literal id="FailureText" runat="server">
                        </asp:literal>
                    </td>
                </tr>
            </table>
        </layouttemplate>
    </asp:login>
    <br />
    <asp:passwordrecovery id="PasswordRecovery1" runat="server" font-names="Verdana"
        font-size="10pt" bordercolor="#999999" borderwidth="1px" borderstyle="Solid"
        backcolor="#FFFFCC">
        <titletextstyle font-bold="True" forecolor="White" backcolor="#333399">
        </titletextstyle>
        <maildefinition from="lorenz@pgk.de" priority="High" bodyfilename="PasswordRecovery.txt" subject="Your Password">
        </maildefinition>
    </asp:passwordrecovery><br />
</asp:content>
