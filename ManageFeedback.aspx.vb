Imports System.Data
Imports System.Data.SqlClient

Namespace Assignment_2
    Public Class ManageFeedback
        Inherits System.Web.UI.Page

        Dim connStr As String = "Data Source=(localdb)\ProjectModels;Initial Catalog=VakadikeviVITI_DB;Integrated Security=True"

        Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
            ' Redirect if not logged in or not Admin
            If Session("UserLoggedIn") Is Nothing OrElse Session("Role").ToString() <> "Admin" Then
                Response.Redirect("Home.aspx")
            End If

            If Not IsPostBack Then
                LoadFeedback()
            End If
        End Sub

        Private Sub LoadFeedback()
            Using conn As New SqlConnection(connStr)
                ' Join with Users to get the name of who submitted it
                Dim query As String = "SELECT f.FeedbackID, u.Name, f.Subject, f.Message, f.SubmittedDate, f.IsRead
                                       FROM Feedback f
                                       INNER JOIN Users u ON f.UserID = u.UserID
                                       ORDER BY f.IsRead ASC, f.SubmittedDate DESC"
                Using cmd As New SqlCommand(query, conn)
                    conn.Open()
                    Dim dt As New DataTable()
                    dt.Load(cmd.ExecuteReader())
                    gvFeedback.DataSource = dt
                    gvFeedback.DataBind()
                End Using
            End Using
        End Sub

        Protected Sub gvFeedback_RowCommand(sender As Object, e As GridViewCommandEventArgs)
            Dim feedbackID As Integer = Convert.ToInt32(e.CommandArgument)

            If e.CommandName = "MarkRead" Then
                Using conn As New SqlConnection(connStr)
                    Dim query As String = "UPDATE Feedback SET IsRead = 1 WHERE FeedbackID = @FeedbackID"
                    Using cmd As New SqlCommand(query, conn)
                        cmd.Parameters.AddWithValue("@FeedbackID", feedbackID)
                        conn.Open()
                        cmd.ExecuteNonQuery()
                    End Using
                End Using
                lblMessage.Text = "Feedback marked as read."
                lblMessage.ForeColor = Drawing.Color.Green

            ElseIf e.CommandName = "Delete" Then
                Using conn As New SqlConnection(connStr)
                    Dim query As String = "DELETE FROM Feedback WHERE FeedbackID = @FeedbackID"
                    Using cmd As New SqlCommand(query, conn)
                        cmd.Parameters.AddWithValue("@FeedbackID", feedbackID)
                        conn.Open()
                        cmd.ExecuteNonQuery()
                    End Using
                End Using
                lblMessage.Text = "Feedback deleted successfully."
                lblMessage.ForeColor = Drawing.Color.Red
            End If

            ' Refresh grid
            LoadFeedback()
        End Sub

    End Class
End Namespace