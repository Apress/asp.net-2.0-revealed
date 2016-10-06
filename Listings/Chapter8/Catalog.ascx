<%@ control language="C#" classname="Catalog"%>

<script runat="server">

</script>

<asp:catalogzone id="CatalogZone1" title="Catalog Zone" runat="server" width="100%">
    <partstyle borderwidth="1px" borderstyle="Solid" bordercolor="#81AAF2">
    </partstyle>
    <parttitlestyle forecolor="White" backcolor="#2254B1">
    </parttitlestyle>
    <zonetemplate>
        <asp:pagecatalogpart id="PageCatalogPart1" runat="server">
        </asp:pagecatalogpart>
        <asp:templatecatalogpart id="TemplateCatalogPart1" title="Money" runat="server"
            width="100%">
            <webpartstemplate>
                <asp:contentwebpart id="ContentWebPart2" title="DOW" runat="server" width="100%"
                    caption="DOW">
                    <contenttemplate>
                        DOW
                    </contenttemplate>
                </asp:contentwebpart>
                
                <asp:contentwebpart id="ContentWebPart3" title="S&P" runat="server" width="100%"
                    caption="S&P">
                    <contenttemplate>
                        S&P
                    </contenttemplate>
                </asp:contentwebpart>
                
                <asp:contentwebpart id="ContentWebPart1" title="NASDAQ" runat="server" width="100%"
                    caption="NASDAQ">
                    <contenttemplate>
                        NASDAQ
                    </contenttemplate>
                </asp:contentwebpart>
                
            </webpartstemplate>
        </asp:templatecatalogpart>
    </zonetemplate>
</asp:catalogzone>
