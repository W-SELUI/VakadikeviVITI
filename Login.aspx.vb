Imports System.Data.SqlClient

Namespace Assignment_2
    Public Class Login
        Inherits System.Web.UI.Page

        Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
            Using conn As New SqlConnection("Data Source=(localdb)\ProjectModels;Initial Catalog=VakadikeviVITI_DB;Integrated Security=True")
                ' ✅ Added AND IsActive = 1 to block deactivated users
                Dim query As String = "SELECT UserID, Role FROM Users WHERE (Email=@Login OR Username=@Login) AND Password=@Password AND IsActive = 1"

                Using cmd As New SqlCommand(query, conn)
                    cmd.Parameters.AddWithValue("@Login", txtEmail.Text)
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text)

                    conn.Open()
                    Dim reader As SqlDataReader = cmd.ExecuteReader()

                    If reader.Read() Then
                        Session("UserID") = reader("UserID")
                        Session("Role") = reader("Role").ToString()
                        Session("UserLoggedIn") = True

                        If Session("Role").ToString() = "Admin" Then
                            Response.Redirect("Admin.aspx")
                        Else
                            Response.Redirect("Home.aspx")
                        End If
                    Else
                        ' ✅ Updated message covers wrong password AND deactivated accounts
                        Response.Write("<script>alert('Invalid login or your account has been deactivated.')</script>")
                    End If
                End Using
            End Using
        End Sub
    End Class
End Namespace


