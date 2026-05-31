Namespace Assignment_2
    Public Class Master
        Inherits System.Web.UI.MasterPage

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
            ' Check login state
            If Session("UserLoggedIn") IsNot Nothing AndAlso Session("UserLoggedIn") = True Then

                ' Swap Login → Logout
                LoginLink.Text = "Logout"
                LoginLink.NavigateUrl = "~/Logout.aspx"


                RegisterLink.Visible = False


                If Session("Role") IsNot Nothing Then
                    Dim role As String = Session("Role").ToString()

                    If role = "User" Then
                        ' Show Booking & Feedback for normal users
                        BookingItem.Visible = True
                        Li1.Visible = True
                        ManageSiteItem.Visible = False
                    ElseIf role = "Admin" Then
                        ' Show Manage Site for admins
                        BookingItem.Visible = False
                        Li1.Visible = False
                        ManageSiteItem.Visible = True
                    End If
                End If
            Else
                ' Default guest view
                LoginLink.Text = "Login"
                LoginLink.NavigateUrl = "~/Login.aspx"

                RegisterLink.Visible = True

                ' Hide all role-specific nav
                BookingItem.Visible = False
                Li1.Visible = False
                ManageSiteItem.Visible = False
            End If
        End Sub
    End Class
End Namespace



