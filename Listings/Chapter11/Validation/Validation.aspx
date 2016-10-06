<%@ page language="C#" %>

<script runat="server">

</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <h1>First form</h1>
        <p>
            <asp:textbox id="TextBox1" runat="server" validationgroup="firstform">
            </asp:textbox>
            <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" display="Dynamic"
                setfocusonerror="True" validationgroup="firstform" controltovalidate="TextBox1">***</asp:requiredfieldvalidator>
            <br />
            <br />
            <asp:button id="Button1" runat="server" validationgroup="firstform" text="Submit" />
        </p>


        <h1>Second form</h1>
        <p>
            <asp:textbox id="TextBox2" runat="server" validationgroup="secondform">
            </asp:textbox>
            <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" display="Dynamic"
                setfocusonerror="True" validationgroup="secondform" controltovalidate="TextBox2">***</asp:requiredfieldvalidator>
            <br />
            <br />
            <asp:button id="Button2" runat="server" validationgroup="secondform" text="Submit" />            
        </p>

    </form>
</body>
</html>
