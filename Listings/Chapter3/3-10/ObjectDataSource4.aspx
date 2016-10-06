<%@ page language="C#" %>
<script runat="server" language="c#">

</script>


<html>
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="Form1" runat="server">
        <asp:gridview id="GridView1" runat="server" allowpaging="True" datasourceid="ObjectDataSource1"
            allowsorting="True" bordercolor="#3366CC" borderstyle="None" borderwidth="1px"
            backcolor="White" cellpadding="4" datakeynames="Id" autogeneratecolumns="False">
            <alternatingrowstyle font-italic="False" font-bold="False">
            </alternatingrowstyle>
            <pagerstyle forecolor="#003399" font-italic="False" font-bold="False" horizontalalign="Left"
                backcolor="#99CCCC">
            </pagerstyle>
            <columnfields>
                <asp:boundfield datafield="Id" readonly="True">
                </asp:boundfield>
                <asp:boundfield datafield="Firstname">
                </asp:boundfield>
                <asp:boundfield datafield="Lastname">
                </asp:boundfield>
                <asp:commandfield showselectbutton="True" showdeletebutton="True" showeditbutton="True">
                </asp:commandfield>
            </columnfields>
            <summarytitlestyle borderwidth="1px" borderstyle="None" bordercolor="#3366CC" backcolor="White">
            </summarytitlestyle>
            <selectedrowstyle forecolor="#CCFF99" backcolor="#009999" font-italic="False" font-bold="True">
            </selectedrowstyle>
            <detailtitlestyle borderwidth="1px" borderstyle="None" bordercolor="#3366CC" backcolor="White">
            </detailtitlestyle>
            <rowstyle forecolor="#003399" backcolor="White" font-italic="False" font-bold="False">
            </rowstyle>
            <headerstyle forecolor="#CCCCFF" backcolor="#003399" font-italic="False" font-bold="True">
            </headerstyle>
            <footerstyle forecolor="#003399" backcolor="#99CCCC" font-italic="False" font-bold="False">
            </footerstyle>
        </asp:gridview>
        
        <asp:objectdatasource id="ObjectDataSource1" runat="server" typename="PersonManager"
            selectmethod="SelectPersons" deletemethod="DeletePerson" updatemethod="Update" insertmethod="Insert">
            <insertparameters>
                <asp:parameter name="Id" type="Int32">
                </asp:parameter>
            </insertparameters>
        </asp:objectdatasource>
        
        <asp:detailsview id="DetailsView1" runat="server" datasourceid="ObjectDataSource1"
            defaultmode="Insert" autogeneraterows="False" datakeynames="Id">
            <rowfields>
                <asp:boundfield datafield="Id" headertext="ID:">
                </asp:boundfield>
                <asp:boundfield datafield="Firstname" headertext="Fn:">
                </asp:boundfield>
                <asp:boundfield datafield="Lastname" headertext="Ln:">
                </asp:boundfield>
                <asp:commandfield showinsertbutton="True">
                </asp:commandfield>
            </rowfields>
        </asp:detailsview>

    </form>
</body>
</html>
