<%@ control language="C#" classname="DailyLinks"%>
<script runat="server" language="C#">
</script>


<asp:datasetdatasource id="LinksDatasetDataSource" runat="server" datafile="~/data/DailyLinks.xml"></asp:datasetdatasource>
<table id="Table1" cellspacing="1" cellpadding="1" border="0">
    <tr>
        <td style="WIDTH: 2px">
            &nbsp;
        </td>
        <td style="WIDTH: 100px">
    <asp:datalist id="DataList1" runat="server" datasourceid="LinksDatasetDataSource"
        cellspacing="3">
        
        <itemtemplate>
            <asp:hyperlink runat="server" cssclass="BulletStyle" navigateurl='<%# DataBinder.Eval(Container.DataItem, "Url") %>'
                text='<%# DataBinder.Eval(Container.DataItem, "Title") %>'></asp:hyperlink>
        </itemtemplate>
    </asp:datalist></td>
    </tr>
</table>
