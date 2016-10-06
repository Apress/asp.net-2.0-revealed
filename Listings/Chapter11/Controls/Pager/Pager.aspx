<%@ page language="C#" %>

<html>
  <head>
    <script runat="server">
    void Page_Load(object sender, System.EventArgs e)
    {
        for (int i = 0; i < 100; i++) {
            this.Panel1.Controls.Add(new LiteralControl(string.Format("Hello world ({0})<br/>", i + 1)));
        }
    }
    
    </script>
  </head>

  <body>
    <form id="Form1" runat="server">
        
      <h3>Pager Class Example</h3>            

        <asp:pager id="Pager1"
            controltopaginate="Panel1"
            runat="server" itemsperpage="10">
        </asp:pager>      
        
        <asp:panel id="Panel1" runat="Server" />
                  
    </form>      
  </body>
</html>