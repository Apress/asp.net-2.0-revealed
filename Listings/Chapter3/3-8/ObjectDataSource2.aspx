<%@ page language="C#" %>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        ID: &nbsp;<asp:textbox id="TextBox1" runat="server" width="32px">0</asp:textbox>
        <asp:button id="Button1" runat="server" text="Show Person" />
        <br />
        <br />
        <asp:detailsview id="DetailsView1" runat="server" datasourceid="ObjectDataSource1">
        </asp:detailsview><asp:objectdatasource id="ObjectDataSource1" runat="server" typename="PersonManager" selectmethod="SelectPerson">
            <selectparameters>
                <asp:controlparameter name="id" propertyname="Text" type="Int32" controlid="TextBox1">
                </asp:controlparameter>
            </selectparameters>
        </asp:objectdatasource>

    </form>
</body>
</html>
