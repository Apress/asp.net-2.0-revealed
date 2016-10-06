Imports Microsoft.VisualBasic

'@ <summary>That's my little foo class</summary>
Public Class Foo

    '@ <summary>This methods return the text passed as parameter</summary>
    '@ <param name="Text">Text to be returned</param>
    '@ <returns>Returns the string passed as <paramref name="Text"/> parameter</returns>
    Public Function ReturnSomeString(ByVal Text As String) As String
        Return Text
    End Function

End Class
