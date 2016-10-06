<%@ page language="VB" %>

<script runat="server">

</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">

        <asp:treeview id="TreeView1" runat="server" font-underline="False" font-names="Verdana"
            font-size="8pt" font-italic="False" font-bold="False" imageset="MSDN" forecolor="#000000"
            nodeindent="16" backcolor="#EEEEEE">
            <selectednodestyle verticalpadding="1" bordercolor="#999999" horizontalpadding="3"
                backcolor="#FFFFFF" font-underline="False" font-italic="False" font-bold="False"
                borderwidth="1px" borderstyle="Solid">
            </selectednodestyle>
            <hovernodestyle verticalpadding="1" bordercolor="#999999" horizontalpadding="3" backcolor="#C7C7C7"
                font-underline="True" font-italic="False" font-bold="False" borderwidth="1px"
                borderstyle="Solid">
            </hovernodestyle>
            <parentnodestyle font-underline="False" font-italic="False" font-bold="False">
            </parentnodestyle>
            <leafnodestyle font-underline="False" font-italic="False" font-bold="False">
            </leafnodestyle>
            <nodes>
                <asp:treenode checked="True" value="My Root Element" expanded="True" text="My Root Element">
                    <asp:treenode value="My Child Element" text="My Child Element">
                    </asp:treenode>
                    <asp:treenode checked="True" value="Another Child" expanded="True" showcheckbox="False"
                        selectaction="SelectExpand" selected="True" text="Another Child">
                        <asp:treenode value="A Childs Child" selectaction="None" text="A Childs Child">
                        </asp:treenode>
                    </asp:treenode>
                </asp:treenode>
            </nodes>
            <nodestyle forecolor="#000000" verticalpadding="2" nodespacing="1" horizontalpadding="4"
                font-underline="False" font-names="Verdana" font-size="8pt" font-italic="False"
                font-bold="False">
            </nodestyle>
            <rootnodestyle font-underline="False" font-italic="False" font-bold="False">
            </rootnodestyle>
        </asp:treeview>&nbsp;

    </form>
</body>
</html>
