<%@ page language="C#" %>

<script runat="server">

void Wizard1_ActiveViewChanged(object sender, System.EventArgs e)
{
    this.LB_Name.Text = this.TB_Name.Text;
}
    
</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:wizard id="Wizard1" runat="server" sidebarenabled="True" headertext="My Simple Wizard" activestepindex="0" width="100%" onactiveviewchanged="Wizard1_ActiveViewChanged">
            <headerstyle forecolor="White" backcolor="Blue" font-names="Verdana" font-size="15pt"
                font-bold="True">
            </headerstyle>
            <wizardsteps>
                <asp:wizardstep runat="server" title="Step 1">
                    Hello!<br />
                    <br />
                    Please enter your name:
                    <asp:textbox runat="server" id="TB_Name">
                    </asp:textbox>
                    <br />
                </asp:wizardstep>
                <asp:wizardstep runat="server" title="Step 2">
                    Thanks,<br />
                    <br />
                    your name is
                    <asp:label runat="server" id="LB_Name">
                    </asp:label>
                </asp:wizardstep>
            </wizardsteps>
        </asp:wizard>
    </form>
</body>
</html>
