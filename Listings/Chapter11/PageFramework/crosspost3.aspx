<%@ page language="C#" %>

<script runat="server">

void Button2_Click(object sender, System.EventArgs e)
{
    Label1.Text = "Hi " + TextBox1.Text + " you selected: " + Calendar1.SelectedDate;
}

public string Text {
    get { 
        return this.TextBox1.Text; 
    }
}

public DateTime SelectedDate {
    get { 
        return this.Calendar1.SelectedDate; 
    }
}

</script>

<html>
<body>
    <form id="Form1" runat="server">
        Enter Name:
        <asp:textbox id="TextBox1" runat="server"></asp:textbox>
        <asp:button id="Button1" runat="server" text="Postback to Another Page" posttargeturl="~/crosspost2.aspx" />
        <br />
        <br />
        Pick Date:
        <br />
        <br />
        <asp:calendar id="Calendar1" runat="server" font-names="Verdana" font-size="8pt"
            forecolor="Black" height="180px" daynameformat="FirstLetter" width="200px" bordercolor="#999999"
            cellpadding="4" backcolor="White">
            <weekenddaystyle backcolor="#FFFFCC">
            </weekenddaystyle>
            <todaydaystyle forecolor="Black" backcolor="#CCCCCC">
            </todaydaystyle>
            <selecteddaystyle forecolor="White" backcolor="#666666" font-bold="True">
            </selecteddaystyle>
            <dayheaderstyle backcolor="#CCCCCC" font-size="7pt" font-bold="True">
            </dayheaderstyle>
            <titlestyle bordercolor="Black" backcolor="#999999" font-bold="True">
            </titlestyle>
            <selectorstyle backcolor="#CCCCCC">
            </selectorstyle>
            <nextprevstyle verticalalign="Bottom">
            </nextprevstyle>
            <othermonthdaystyle forecolor="#808080">
            </othermonthdaystyle>
        </asp:calendar>
        <br />
        <br />
        <asp:button id="Button2" runat="server" text="Postback to Same Page" onclick="Button2_Click" />
        <br />
        <br />
        <asp:label id="Label1" runat="server" font-size="Large">
        </asp:label>
        <br />
        <br />
    </form>
</body>
</html>
