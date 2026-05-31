Namespace Assignment_2
    Public Class Logout
        Inherits System.Web.UI.Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
            Session("UserLoggedIn") = Nothing
            Session("UserID") = Nothing
            Session("Role") = Nothing

            Response.Redirect("Home.aspx")
        End Sub
    End Class
End Namespace
