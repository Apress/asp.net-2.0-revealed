<%@ page language="C#" %>
<%@ import namespace="System.IO" %>
<script runat="server" language="c#">
void TreeView1_TreeNodePopulate(object sender, System.Web.UI.WebControls.TreeNodeEventArgs e)
{
    if (e.Node.ChildNodes.Count == 0) {    
        this.LoadChildNodes(e.Node);
    }
}    
    
private void LoadChildNodes(TreeNode node) {    
    DirectoryInfo directory;
    if (node.ValuePath.Length == 0) {
        directory = new DirectoryInfo(node.Value);
    } else {
        directory = new DirectoryInfo(node.ValuePath);
    }
    foreach(DirectoryInfo subDirectory in directory.GetDirectories()) {
        TreeNode subNode = new TreeNode(subDirectory.Name);
        subNode.PopulateOnDemand = true;
        subNode.SelectAction = TreeNodeSelectAction.SelectExpand;
        node.ChildNodes.Add(subNode);
    }
}
</script>


<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <asp:treeview id="TreeView1" runat="server" font-underline="False" font-names="Tahoma"
            font-size="8pt" font-italic="False" font-bold="False" imageset="XP_Explorer"
            forecolor="Black" nodeindent="15" ontreenodepopulate="TreeView1_TreeNodePopulate">
            <selectednodestyle backcolor="#B5B5B5" font-underline="False" font-italic="False"
                font-bold="False">
            </selectednodestyle>
            <hovernodestyle forecolor="#6666AA" font-underline="True" font-italic="False" font-bold="False">
            </hovernodestyle>
            <parentnodestyle font-underline="False" font-italic="False" font-bold="False">
            </parentnodestyle>
            <leafnodestyle font-underline="False" font-italic="False" font-bold="False">
            </leafnodestyle>
            <nodes>
                <asp:treenode checked="True" value="c:\" populateondemand="True" showcheckbox="False"
                    selectaction="SelectExpand" selected="True" text="Drive C:\">
                </asp:treenode>
            </nodes>
            <nodestyle forecolor="Black" verticalpadding="2" horizontalpadding="2" font-underline="False"
                font-names="Tahoma" font-size="8pt" font-italic="False" font-bold="False">
            </nodestyle>
            <rootnodestyle font-underline="False" font-italic="False" font-bold="False">
            </rootnodestyle>
        </asp:treeview>

    </form>
</body>
</html>
