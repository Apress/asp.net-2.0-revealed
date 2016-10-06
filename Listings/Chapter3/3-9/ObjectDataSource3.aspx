<%@ page language="C#" %>

<html>
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="Form1" runat="server">
        <asp:gridview id="GridView1" runat="server" bordercolor="#999999" borderstyle="None"
            borderwidth="1px" backcolor="White" cellpadding="3" gridlines="Vertical" datasourceid="ObjectDataSource1" autogeneratecolumns="False" datakeynames="Id">
            <alternatingrowstyle backcolor="Gainsboro" font-italic="False" font-bold="False">
            </alternatingrowstyle>
            <pagerstyle forecolor="Black" font-italic="False" font-bold="False" horizontalalign="Center"
                backcolor="#999999">
            </pagerstyle>
            <columnfields>
                <asp:boundfield datafield="Id" readonly="True" headertext="ID">
                </asp:boundfield>
                <asp:boundfield datafield="Firstname" headertext="Firstname">
                </asp:boundfield>
                <asp:boundfield datafield="Lastname" headertext="Lastname">
                </asp:boundfield>
                <asp:commandfield showeditbutton="True">
                </asp:commandfield>
                <asp:commandfield showdeletebutton="True">
                </asp:commandfield>
            </columnfields>
            <summarytitlestyle borderwidth="1px" borderstyle="None" bordercolor="#999999" backcolor="White">
            </summarytitlestyle>
            <selectedrowstyle forecolor="White" backcolor="#008A8C" font-italic="False" font-bold="True">
            </selectedrowstyle>
            <detailtitlestyle borderwidth="1px" borderstyle="None" bordercolor="#999999" backcolor="White">
            </detailtitlestyle>
            <rowstyle forecolor="Black" backcolor="#EEEEEE" font-italic="False" font-bold="False">
            </rowstyle>
            <headerstyle forecolor="White" backcolor="#000084" font-italic="False" font-bold="True">
            </headerstyle>
            <footerstyle forecolor="Black" backcolor="#CCCCCC" font-italic="False" font-bold="False">
            </footerstyle>
        </asp:gridview>
        <asp:objectdatasource id="ObjectDataSource1" runat="server" typename="PersonManager" selectmethod="SelectPersons" updatemethod="Update" deletemethod="DeletePerson">
        </asp:objectdatasource>

    </form>
</body>
</html>
