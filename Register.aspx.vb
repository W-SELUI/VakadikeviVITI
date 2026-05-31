Imports System.Data.SqlClient

Namespace Assignment_2
    Public Class Register
        Inherits System.Web.UI.Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        End Sub

        ' Register Button Click
        Protected Sub btnRegister_Click(sender As Object, e As EventArgs) Handles btnRegister.Click

            ' Check password match
            If txtPassword.Text <> txtConfirmPassword.Text Then
                Response.Write("<script>alert('Passwords do not match!')</script>")
                Exit Sub
            End If

            ' Create connection
            Using conn As New SqlConnection("Data Source=(localdb)\ProjectModels;Initial Catalog=VakadikeviVITI_DB;Integrated Security=True")
                conn.Open()

                ' Check if username already exists
                Dim checkQuery As String = "SELECT COUNT(*) FROM Users WHERE Username = @Username"
                Using checkCmd As New SqlCommand(checkQuery, conn)
                    checkCmd.Parameters.AddWithValue("@Username", txtUsername.Text)
                    Dim userExists As Integer = CInt(checkCmd.ExecuteScalar())

                    If userExists > 0 Then
                        Response.Write("<script>alert('Username already taken! Please choose another.')</script>")
                        Exit Sub
                    End If
                End Using

                'Safe to insert now
                Dim query As String = "INSERT INTO Users (Name, Username, Email, Password, Role) VALUES (@Name, @Username, @Email, @Password, 'User')"
                Using cmd As New SqlCommand(query, conn)
                    cmd.Parameters.AddWithValue("@Name", txtFullName.Text)
                    cmd.Parameters.AddWithValue("@Username", txtUsername.Text)
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text)
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text)

                    cmd.ExecuteNonQuery()
                End Using
            End Using

            ' Success message
            Response.Write("<script>alert('Registration Successful!')</script>")
        End Sub
    End Class
End Namespace

