Imports System.Data.SqlClient
Imports System.Configuration

    Public Class Feedback
        Inherits System.Web.UI.Page

        Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

            ' Must be logged in
            If Session("UserLoggedIn") Is Nothing OrElse Session("UserLoggedIn") <> True Then
                Response.Redirect("Login.aspx")
            End If

        End Sub

        Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

            ' Validation
            If txtSubject.Text.Trim() = "" OrElse txtMessage.Text.Trim() = "" Then
                lblMessage.Text = "Please fill in all fields."
                lblMessage.ForeColor = Drawing.Color.Red
                Exit Sub
            End If

            Dim userID As Integer = Convert.ToInt32(Session("UserID"))
            Dim connStr As String = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString

            Using conn As New SqlConnection(connStr)

                Dim query As String = "
                    INSERT INTO Feedback (UserID, Subject, Message)
                    VALUES (@UserID, @Subject, @Message)"

                Using cmd As New SqlCommand(query, conn)

                    cmd.Parameters.AddWithValue("@UserID", userID)
                    cmd.Parameters.AddWithValue("@Subject", txtSubject.Text.Trim())
                    cmd.Parameters.AddWithValue("@Message", txtMessage.Text.Trim())

                    conn.Open()
                    cmd.ExecuteNonQuery()

                End Using
            End Using

            ' Clear fields
            txtSubject.Text = ""
            txtMessage.Text = ""

            lblMessage.ForeColor = Drawing.Color.Green
            lblMessage.Text = "Feedback submitted successfully. Thank you!"

        End Sub

    End Class
