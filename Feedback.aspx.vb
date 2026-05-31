Imports System.Data.SqlClient

Namespace Assignment_2
    Public Class Feedback
        Inherits System.Web.UI.Page

        Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
            ' Must be logged in to submit feedback
            If Session("UserLoggedIn") Is Nothing OrElse Session("UserLoggedIn") <> True Then
                Response.Redirect("Login.aspx")
            End If
        End Sub

        Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
            ' Basic validation
            If txtSubject.Text.Trim() = "" OrElse txtMessage.Text.Trim() = "" Then
                lblMessage.Text = "Please fill in all fields."
                lblMessage.ForeColor = Drawing.Color.Red
                Exit Sub
            End If

            Dim userID As Integer = Convert.ToInt32(Session("UserID"))

            Using conn As New SqlConnection("Data Source=(localdb)\ProjectModels;Initial Catalog=VakadikeviVITI_DB;Integrated Security=True")
                Dim query As String = "INSERT INTO Feedback (UserID, Subject, Message) VALUES (@UserID, @Subject, @Message)"
                Using cmd As New SqlCommand(query, conn)
                    cmd.Parameters.AddWithValue("@UserID", userID)
                    cmd.Parameters.AddWithValue("@Subject", txtSubject.Text.Trim())
                    cmd.Parameters.AddWithValue("@Message", txtMessage.Text.Trim())

                    conn.Open()
                    cmd.ExecuteNonQuery()
                End Using
            End Using

            ' Clear fields and show success
            txtSubject.Text = ""
            txtMessage.Text = ""
            lblMessage.ForeColor = Drawing.Color.Green
            lblMessage.Text = "Feedback submitted successfully. Thank you!"
        End Sub
    End Class
End Namespace
