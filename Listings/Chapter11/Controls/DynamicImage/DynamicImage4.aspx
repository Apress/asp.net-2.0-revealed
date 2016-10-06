<%@ page language="C#"%>

<html>
    <body>
        <form id="Form1" runat="server">
            <table>
                <tr>
                    <td valign="top">
                        Number of circles:<br />
                        <asp:textbox id="CircleCount" runat="server" text="15" /><br />
                        <asp:button id="CreateImage" runat="server" text="Create Image" />
                    </td>
                    <td>
                        <asp:dynamicimage id="Dynamicimage1" runat="server" 
                            dynamicimagetype="ImageGenerator"
                            imagegeneratorurl="CircleGenerator.asix" 
                            alternatetext="Generated image of circles." height="400px" width="300px">
                            <parameters>
                                <asp:controlparameter name="NumberOfCircles" propertyname="Text" controlid="CircleCount">
                                </asp:controlparameter>
                            </parameters>
                        </asp:dynamicimage>
                     </td>
                </tr>
            </table>
        </form>
    </body>
</html>
