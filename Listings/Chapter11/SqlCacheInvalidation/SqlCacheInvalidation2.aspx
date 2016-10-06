<%@ page language="C#" %>
<%@ import namespace="System.Data" %>
<%@ import namespace="System.Data.SqlClient" %>

<script runat="server">
    
void Page_Load(object sender, System.EventArgs e)
{
    if (this.Cache["ds"] == null) {
        this.CreateDataSet();
    }
    if (this.IsPostBack == false) {
        this.LB_Customers.DataSource = this.Cache["ds"];
        this.LB_Customers.DataBind();
        this.LT_LastUpdate.Text = ((DateTime)this.Cache["LastUpdate"]).ToString();
    }
}

void CreateDataSet() {
    string connString = ConfigurationSettings.ConnectionStrings["Yukon"];
    string cmdText = "Select CompanyName FROM Customers";
    
    SqlConnection connect = new SqlConnection(connString);
	SqlDataAdapter adapter = new SqlDataAdapter(cmdText, connect);

    DataSet ds = new DataSet();
	adapter.Fill(ds);
    
    SqlCacheDependency dependency = new SqlCacheDependency("Yukon", "Customers");
    this.Cache.Add("ds", ds, dependency, DateTime.MaxValue, TimeSpan.Zero, CacheItemPriority.Default, new CacheItemRemovedCallback(this.DataSetRemoveFromCache));
    
    this.Cache.Insert("LastUpdate", DateTime.Now);
}
    
void DataSetRemoveFromCache(string key, object value, CacheItemRemovedReason reason) {
    this.CreateDataSet();
}

</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        <p>
            <asp:listbox id="LB_Customers" runat="server" height="200px" width="300px" datatextfield="CompanyName">
            </asp:listbox>
        </p>
        <p>
            Last update:
            <asp:literal id="LT_LastUpdate" runat="server">
            </asp:literal>
        </p>
    </form>
</body>
</html>
