<%@ page language="C#" %>

<script runat="server">
void Page_Load (object sender, System.EventArgs e) {    
        string text = "Yeah, you clicked the button!";
    
        this.Button1.Click += delegate(object dlgSender, EventArgs dlgE) {    
            Label1.Text = text;
        };    
    }
    </script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:button id="Button1" runat="server" text="Button" />
        <br />
        <br />
        <asp:label id="Label1" runat="server">Please click da button!</asp:label>

    </form>
</body>
</html>
