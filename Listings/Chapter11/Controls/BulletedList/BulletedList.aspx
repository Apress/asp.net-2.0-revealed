<%@ page language="C#" %>

<script runat="server">

    
    
void BulletedList3_Click(object sender, System.Web.UI.WebControls.BulletedListEventArgs e)
{
    ListItem item = this.BulletedList3.Items[e.Index];
    this.LB_SelectedBook.Text = string.Format("You selected '{0}'", item.Text);
}
    
</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <p>
            <asp:bulletedlist id="BulletedList1" runat="server">
                <asp:listitem>First value</asp:listitem>
                <asp:listitem>Second value</asp:listitem>
                <asp:listitem>Third value</asp:listitem>
            </asp:bulletedlist>
        </p>
        
        <p>
            <asp:bulletedlist id="BulletedList2" runat="server" bulletstyle="Numbered" firstbulletnumber="15">
                <asp:listitem>First value</asp:listitem>
                <asp:listitem>Second value</asp:listitem>
                <asp:listitem>Third value</asp:listitem>
            </asp:bulletedlist>
        </p>
        
        <p>
            <asp:bulletedlist id="BulletedList3" runat="server" 
                datasourceid="XmlDataSource1" 
                datatextfield="InnerText" 
                bulletimageurl="arrow.gif" 
                bulletstyle="CustomImage"
                displaymode="LinkButton" 
                onclick="BulletedList3_Click" 
            />
            <asp:xmldatasource id="XmlDataSource1" runat="server" datafile="Books.xml" xpath="bookstore/genre/book/title">
            </asp:xmldatasource>
            <br />
            <asp:label id="LB_SelectedBook" runat="server">
            </asp:label>
        </p>
    </form>
</body>
</html>
