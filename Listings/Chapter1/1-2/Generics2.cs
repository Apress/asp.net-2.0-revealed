Imports System

Public Class MyList(Of ItemType As IComparable)

    Public Sub Add(ByVal Obj As ItemType)
    End Sub

    Default Public ReadOnly Property Items(ByVal Index As Integer) As ItemType
        Get
            Return Nothing
        End Get
    End Property

End Class

Public Class Foo
    Implements IComparable

    Public Function CompareTo(ByVal obj As Object) As Integer Implements System.IComparable.CompareTo
        Return 0
    End Function
End Class

Public Class MainClass

    Public Shared Sub Main()
        Dim List As MyList(Of Foo) = New MyList(Of Foo)
        List.Add(New Foo)
        Dim AnotherFoo As Foo = List(0)

        Console.Read()
    End Sub

End Class