<%@ page language="C#" %>
<%@ import namespace="System.Drawing" %>

<script runat="server">

void Page_Load(object sender, System.EventArgs e)
{
    this.DI_Image.Image = this.CreateImage();
}
    
private Bitmap CreateImage() {
    Bitmap b = new Bitmap(200, 200);
    Graphics g = Graphics.FromImage(b);

    g.Clear(Color.White);

    Pen pen = new Pen(Color.Red);
    pen.Width = 3;

    g.DrawEllipse(pen, 2, 2, 196, 196);

    Point[] points = {new Point(40, 140), new Point(100, 170), new Point(160, 140)};
    g.DrawCurve(pen, points);

    g.DrawLine(pen, 100, 70, 100, 130);

    Brush brush = new SolidBrush(Color.Black);
    g.FillEllipse(brush, 50, 60, 20, 20);
    g.FillEllipse(brush, 130, 60, 20, 20);

    g.Flush();
    return b;
}
    
</script>

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form runat="server">
        This picture was created dynamically:<br /><br />
        <asp:dynamicimage id="DI_Image" runat="server" imagetype="Gif"/> 
    </form>
</body>
</html>
