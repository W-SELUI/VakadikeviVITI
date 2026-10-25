Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

    Public Class ManageUsers
        Inherits System.Web.UI.Page

        ' FIXED: use SOMEE connection string
        Dim connStr As String = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString

        Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

            ' Redirect if not logged in or not Admin
            If Session("UserLoggedIn") Is Nothing OrElse Session("Role").ToString() <> "Admin" Then
                Response.Redirect("Home.aspx")
            End If

            If Not IsPostBack Then
                LoadUsers()
            End If

        End Sub

        Private Sub LoadUsers()

            Using conn As New SqlConnection(connStr)

                Dim query As String = "SELECT UserID, Name, Username, Email, Role, IsActive FROM Users WHERE Role <> 'Admin'"

                Using cmd As New SqlCommand(query, conn)

                    conn.Open()

                    Dim dt As New DataTable()
                    dt.Load(cmd.ExecuteReader())

                    gvUsers.DataSource = dt
                    gvUsers.DataBind()

                End Using
            End Using

        End Sub

        Protected Sub gvUsers_RowCommand(sender As Object, e As GridViewCommandEventArgs)

            Dim userID As Integer = Convert.ToInt32(e.CommandArgument)
            Dim newStatus As Integer

            If e.CommandName = "Activate" Then
                newStatus = 1
                lblMessage.Text = "User activated successfully."

            ElseIf e.CommandName = "Deactivate" Then
                newStatus = 0
                lblMessage.Text = "User deactivated successfully."

            Else
                Exit Sub
            End If

            ' Update IsActive in DB
            Using conn As New SqlConnection(connStr)

                Dim query As String = "UPDATE Users SET IsActive = @Status WHERE UserID = @UserID"

                Using cmd As New SqlCommand(query, conn)

                    cmd.Parameters.AddWithValue("@Status", newStatus)
                    cmd.Parameters.AddWithValue("@UserID", userID)

                    conn.Open()
                    cmd.ExecuteNonQuery()

                End Using
            End Using

            LoadUsers()

        End Sub

    End Class
