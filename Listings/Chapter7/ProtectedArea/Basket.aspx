<%@ page language="C#" master="~/MasterPage.master" %>

<script runat="server" language="c#">
    
void Page_Load(object sender, System.EventArgs e)
{
    if (this.Profile.Basket.Count == 0) {    
        this.Profile.Basket.Add(new BasketItem(1, "Hello world product", 5, 12.34m));
    }
}

</script>

<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <asp:gridview id="GridView1" runat="server" allowpaging="True" bordercolor="#CC9966"
        borderstyle="None" borderwidth="1px" backcolor="White" cellpadding="4" datasourceid="ObjectDataSource1"
        allowsorting="True" nulltext="Your basket is empty. Please add a new product." autogeneratecolumns="False" datakeynames="ProductId">
        <alternatingrowstyle font-italic="False" font-bold="False">
        </alternatingrowstyle>
        <pagerstyle forecolor="#330099" font-italic="False" font-bold="False" horizontalalign="Center"
            backcolor="#FFFFCC">
        </pagerstyle>
        <columnfields>
            <asp:boundfield datafield="ProductId" readonly="True" headertext="Product ID">
            </asp:boundfield>
            <asp:boundfield datafield="Name" headertext="Name">
            </asp:boundfield>
            <asp:boundfield datafield="Count" headertext="Count">
            </asp:boundfield>
            <asp:boundfield datafield="UnitPrice" headertext="Unit Price">
            </asp:boundfield>
            <asp:commandfield showdeletebutton="True" showeditbutton="True">
            </asp:commandfield>
        </columnfields>
        <summarytitlestyle borderwidth="1px" borderstyle="None" bordercolor="#CC9966" backcolor="White">
        </summarytitlestyle>
        <pagersettings mode="NextPrev">
        </pagersettings>
        <selectedrowstyle forecolor="#663399" backcolor="#FFCC66" font-italic="False" font-bold="True">
        </selectedrowstyle>
        <detailtitlestyle borderwidth="1px" borderstyle="None" bordercolor="#CC9966" backcolor="White">
        </detailtitlestyle>
        <rowstyle forecolor="#330099" backcolor="White" font-italic="False" font-bold="False">
        </rowstyle>
        <headerstyle forecolor="#FFFFCC" backcolor="#990000" font-italic="False" font-bold="True">
        </headerstyle>
        <footerstyle forecolor="#330099" backcolor="#FFFFCC" font-italic="False" font-bold="False">
        </footerstyle>
    </asp:gridview>
    <asp:objectdatasource id="ObjectDataSource1" runat="server" selectmethod="GetBasket"
        typename="BasketManager" updatemethod="Update" insertmethod="Insert" deletemethod="Delete">
        <updateparameters>
            <asp:parameter name="UnitPrice" type="Decimal">
            </asp:parameter>
            <asp:parameter name="Count" type="Int32">
            </asp:parameter>
            <asp:parameter name="ProductId" type="Int32">
            </asp:parameter>
        </updateparameters>
        <insertparameters>
            <asp:parameter name="ProductId" type="Int32">
            </asp:parameter>
            <asp:parameter name="Name" type="String">
            </asp:parameter>
            <asp:parameter name="Count" type="Int32">
            </asp:parameter>
            <asp:parameter name="UnitPrice" type="Decimal">
            </asp:parameter>
        </insertparameters>
    </asp:objectdatasource>
    <asp:detailsview id="DetailsView1" runat="server" bordercolor="#CC9966" borderstyle="None" borderwidth="1px" backcolor="White" cellpadding="4" datasourceid="ObjectDataSource1" gridlines="Both" autogeneraterows="False" defaultmode="Insert" datakeynames="ProductId">
        <alternatingrowstyle font-italic="False" font-bold="False">
        </alternatingrowstyle>
        <pagerstyle forecolor="#330099" font-italic="False" font-bold="False" horizontalalign="Center"
            backcolor="#FFFFCC">
        </pagerstyle>
        <rowfields>
            <asp:boundfield datafield="ProductId" readonly="True" headertext="Product ID">
            </asp:boundfield>
            <asp:boundfield datafield="Name" headertext="Name">
            </asp:boundfield>
            <asp:boundfield datafield="Count" headertext="Count">
            </asp:boundfield>
            <asp:boundfield datafield="UnitPrice" headertext="Unit Price">
            </asp:boundfield>
            <asp:commandfield showinsertbutton="True" showcancelbutton="False">
            </asp:commandfield>
        </rowfields>
        <editrowstyle forecolor="#663399" backcolor="#FFCC66" font-italic="False" font-bold="True">
        </editrowstyle>
        <rowstyle forecolor="#330099" backcolor="White" font-italic="False" font-bold="False">
        </rowstyle>
        <headerstyle forecolor="#FFFFCC" backcolor="#990000" font-italic="False" font-bold="True">
        </headerstyle>
        <pagersettings mode="NextPrev">
        </pagersettings>
        <footerstyle forecolor="#330099" backcolor="#FFFFCC" font-italic="False" font-bold="False">
        </footerstyle>
    </asp:detailsview>
</asp:content>

