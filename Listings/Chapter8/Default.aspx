<%@ page language="C#" master="~/MasterPage.master" %>
<%@ register tagprefix="uc1" tagname="Catalog" src="~/Catalog.ascx" %>
<%@ register tagprefix="uc1" tagname="DailyLinksWebPart" src="~/DailyLinksWebPart.ascx" %>
<%@ register tagprefix="WebParts" namespace="PGK.Web.UI.WebControls.WebParts" %>
<script runat="server" language="c#">

void LB_Personalize_Click(object sender, System.EventArgs e)
{
    WebPartManager manager = (this.Items[typeof(WebPartManager)] as WebPartManager);
    if (manager.DisplayMode == WebPartDisplayMode.Normal) {
        manager.SetDisplayMode(WebPartDisplayMode.Edit);
        this.LB_Personalize.Text = "End Personalization";
    }  
    else {
        manager.SetDisplayMode(WebPartDisplayMode.Normal);
        this.LB_Personalize.Text = "Personalize this page!";
    }
}
    
void WPZ_TopZone_CreateVerbs(object sender, System.Web.UI.WebControls.WebPartVerbsEventArgs e)
{
    WebPartVerb verb = new WebPartVerb(new WebPartEventHandler(this.CustomWebPartVerb_ServerClick));
    verb.Text = "Hello world";
    e.Verbs = new WebPartVerbCollection(e.Verbs, new WebPartVerb[] {verb});
}
    
private void CustomWebPartVerb_ServerClick(object sender, WebPartEventArgs e) 
{
    e.WebPart.Caption = "You clicked the custom verb!";
}

void LB_AddWebParts_Click(object sender, System.EventArgs e)
{
    WebPartManager manager = (this.Items[typeof(WebPartManager)] as WebPartManager);
    if (manager.DisplayMode != WebPartDisplayMode.Catalog) {
        manager.SetDisplayMode(WebPartDisplayMode.Catalog);
        this.LB_AddWebParts.Text = "End Adding";
    }  
    else {
        manager.SetDisplayMode(WebPartDisplayMode.Normal);
        this.LB_AddWebParts.Text = "Add web parts";
    }
}

    
    
    void EditorZone1_PreRender(object sender, System.EventArgs e)
    {
        EditorPart editor = (EditorPart) ((Control)sender).FindControl("BehaviorEditorPart1");
        if (editor != null) {
            editor.Visible = this.User.IsInRole("Admins");
        }
    }
    
</script>


<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <table cellspacing="1" cellpadding="1" width="100%" border="1">
        <tr>
            <td colspan="2">
                <asp:webpartzone id="WPZ_TopZone" runat="server" width="100%"
                    draghighlightcolor="244, 198, 96" oncreateverbs="WPZ_TopZone_CreateVerbs" title="Top Zone">
                    <parttitlestyle forecolor="White" backcolor="#2254B1">
                    </parttitlestyle>
                    <partstyle borderwidth="1px" borderstyle="Solid" bordercolor="#81AAF2">
                    </partstyle>
                    <partverbstyle font-italic="False" font-bold="False" bordercolor="White" forecolor="White">
                    </partverbstyle>
                    <zonetemplate>
                        <asp:contentwebpart id="ContentWebPart1" runat="server" width="100%" caption="Welcome" title="Welcome Text">
                            <contenttemplate>
                                <strong>Welcome!</strong><br />
                                <br />
                                Welcome to my small test application! This is a simple page using three different
                                zones including some web parts. Nice feature, right?
                            </contenttemplate>
                        </asp:contentwebpart>
                    </zonetemplate>
                </asp:webpartzone>
            </td>
            <td rowspan="3" valign="top">
                <asp:editorzone id="EditorZone1" runat="server" title="Editor Zone" onprerender="EditorZone1_PreRender">
                    <partstyle borderwidth="1px" borderstyle="Solid" bordercolor="#81AAF2">
                    </partstyle>
                    <parttitlestyle forecolor="White" backcolor="#2254B1">
                    </parttitlestyle>
                    <zonetemplate>
                        <asp:appearanceeditorpart id="AppearanceEditorPart1" runat="server">
                        </asp:appearanceeditorpart><asp:behavioreditorpart id="BehaviorEditorPart1" runat="server">
                        </asp:behavioreditorpart>
                        <asp:layouteditorpart id="LayoutEditorPart1" runat="server">
                        </asp:layouteditorpart>
                        <asp:propertygrideditorpart id="PropertyGridEditorPart1" runat="server">
                        </asp:propertygrideditorpart>
                    </zonetemplate>
                </asp:editorzone>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <asp:webpartzone id="WPZ_LeftZone" runat="server" width="100%" draghighlightcolor="244, 198, 96" title="Left Zone">
                    <parttitlestyle forecolor="White" backcolor="#2254B1">
                    </parttitlestyle>
                    <partstyle borderwidth="1px" borderstyle="Solid" bordercolor="#81AAF2">
                    </partstyle>
                    <partverbstyle forecolor="White">
                    </partverbstyle>
                    <zonetemplate>
                        <WebParts:weatherwebpart id="WeatherWebPart1" runat="server" />
                        <asp:calendar id="Calendar1" runat="server">
                        </asp:calendar>
                    </zonetemplate>
                </asp:webpartzone>
            </td>
            <td valign="top">
                <asp:webpartzone id="WPZ_RightZone" runat="server" width="100%" draghighlightcolor="244, 198, 96" title="Right Zone">
                    <parttitlestyle forecolor="White" backcolor="#2254B1">
                    </parttitlestyle>
                    <partstyle borderwidth="1px" borderstyle="Solid" bordercolor="#81AAF2">
                    </partstyle>
                    <partverbstyle forecolor="White">
                    </partverbstyle>
                    <zonetemplate>
                        <uc1:dailylinkswebpart id="DailyLinksWebPart1" runat="server"></uc1:dailylinkswebpart>
                    </zonetemplate>
                </asp:webpartzone>
            </td>
        </tr>
        <tr>
            <td>
                <asp:linkbutton id="LB_Personalize" runat="server" onclick="LB_Personalize_Click">Personalize
                    this page!</asp:linkbutton>
                <asp:linkbutton id="LB_AddWebParts" runat="server" onclick="LB_AddWebParts_Click">Add
                    web parts</asp:linkbutton>
            </td>
            <td>
                <uc1:catalog id="Catalog1" runat="server"></uc1:catalog>
                
            </td>
        </tr>
    </table>
</asp:content>
