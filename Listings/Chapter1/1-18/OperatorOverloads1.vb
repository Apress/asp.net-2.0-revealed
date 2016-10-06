Imports System

Public Structure Point

    Public X As Integer
    Public Y As Integer

    Public Shared Operator +(ByVal p1 As Point, ByVal p2 As Point) As Point
        Dim p As Point = New Point
        p.X = p1.X + p2.X
        p.Y = p1.Y + p2.Y
        Return p
    End Operator

    Public Shared Operator -(ByVal p1 As Point, ByVal p2 As Point) As Point
        Dim p As Point = New Point
        p.X = p1.X - p2.X
        p.Y = p1.Y - p2.Y
        Return p
    End Operator

    Public Shared Operator =(ByVal p1 As Point, ByVal p2 As Point) As Boolean
        Return ((p1.X = p2.X) AndAlso (p1.Y = p2.Y))
    End Operator

    Public Shared Operator <>(ByVal p1 As Point, ByVal p2 As Point) As Boolean
        Return ((p1.X <> p2.X) OrElse (p1.Y <> p2.Y))
    End Operator

End Structure
