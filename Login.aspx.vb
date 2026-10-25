Imports System.Data.SqlClient
Imports System.Configuration

Namespace Assignment_2
    Public Class Login
        Inherits System.Web.UI.Page

        Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click

            Try
                Dim connStr As String = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString

                Using conn As New SqlConnection(connStr)

                    Dim query As String = "
                        SELECT UserID, Role
                        FROM Users
                        WHERE (Email=@Login OR Username=@Login)
                        AND Password=@Password
                        AND IsActive = 1"

                    Using cmd As New SqlCommand(query, conn)

                        cmd.Parameters.AddWithValue("@Login", txtEmail.Text.Trim())
                        cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim())

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
                            Response.Write("<script>alert('Invalid login or your account has been deactivated.')</script>")
                        End If

                    End Using
                End Using

            Catch ex As SqlException
                Response.Write("<script>alert('Database error: " & ex.Message.Replace("'", "") & "')</script>")
            Catch ex As Exception
                Response.Write("<script>alert('Unexpected error: " & ex.Message.Replace("'", "") & "')</script>")
            End Try

        End Sub
    End Class
End Namespace


