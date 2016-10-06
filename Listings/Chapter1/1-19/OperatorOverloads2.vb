Imports System

Public Structure Point2D

    Public X As Integer
    Public Y As Integer

End Structure

Public Structure Point3D

    Public X As Integer
    Public Y As Integer
    Public Z As Integer

    Public Shared Widening Operator CType(ByVal p1 As Point2D) As Point3D
        Dim p2 As New Point3D
        p2.X = p1.X
        p2.Y = p1.Y
        Return p2
    End Operator

    Public Shared Narrowing Operator CType(ByVal p1 As Point3D) As Point2D
        Dim p2 As New Point2D
        p2.X = p1.X
        p2.Y = p1.Y
        Return p2
    End Operator

End Structure

