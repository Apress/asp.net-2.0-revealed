<%@ page language="VB" %>

<script runat="server">

</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:treeview id="TreeView1" runat="server" font-underline="False" datasourceid="XmlDataSource1"
            font-names="Tahoma" font-size="8pt" font-italic="False" font-bold="False" imageset="XP_Explorer"
            forecolor="Black" nodeindent="15" autogeneratebindings="False">
            <selectednodestyle backcolor="#B5B5B5" font-underline="False" font-italic="False"
                font-bold="False">
            </selectednodestyle>
            <hovernodestyle forecolor="#6666AA" font-underline="True" font-italic="False" font-bold="False">
            </hovernodestyle>
            <bindings>
                <asp:treenodebinding value="My Bookstore" depth="0" text="My Bookstore">
                </asp:treenodebinding>
                <asp:treenodebinding datamember="genre" textfield="name" depth="1">
                </asp:treenodebinding>
                <asp:treenodebinding datamember="book" textfield="isbn" depth="2">
                </asp:treenodebinding>
            </bindings>
            <parentnodestyle font-underline="False" font-italic="False" font-bold="False">
            </parentnodestyle>
            <leafnodestyle font-underline="False" font-italic="False" font-bold="False">
            </leafnodestyle>
            <nodestyle forecolor="Black" verticalpadding="2" horizontalpadding="2" font-underline="False"
                font-names="Tahoma" font-size="8pt" font-italic="False" font-bold="False">
            </nodestyle>
            <rootnodestyle font-underline="False" font-italic="False" font-bold="False">
            </rootnodestyle>
        </asp:treeview>
        <asp:xmldatasource id="XmlDataSource1" runat="server" datafile="Books.xml">
        </asp:xmldatasource>

    </form>
</body>
</html>
