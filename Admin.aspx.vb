Imports System
Imports System.Web.UI

Namespace Assignment_2
    Public Class Admin
        Inherits System.Web.UI.Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
            ' ✅ Only allow admins
            If Session("Role") Is Nothing OrElse Session("Role").ToString() <> "Admin" Then
                Response.Redirect("Home.aspx")
            End If
        End Sub
    End Class
End Namespace
