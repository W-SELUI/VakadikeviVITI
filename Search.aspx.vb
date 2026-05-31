Imports System.Data
Imports System.Data.SqlClient

Namespace Assignment_2
    Public Class Search
        Inherits System.Web.UI.Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
            If Not IsPostBack Then
                Dim query As String = Request.QueryString("q")
                If Not String.IsNullOrEmpty(query) Then
                    lblQuery.Text = Server.HtmlEncode(query)
                    LoadResults(query)
                End If
            End If
        End Sub

        Private Sub LoadResults(query As String)
            Using conn As New SqlConnection("Data Source=(localdb)\ProjectModels;Initial Catalog=VakadikeviVITI_DB;Integrated Security=True")
                conn.Open()

                ' ⚠️ Update the table and column names below to match your database
                Dim sql As String = "SELECT Name, Description FROM Destinations WHERE Name LIKE @Query OR Description LIKE @Query"

                Using cmd As New SqlCommand(sql, conn)
                    cmd.Parameters.AddWithValue("@Query", "%" & query & "%")

                    Dim dt As New DataTable()
                    Dim adapter As New SqlDataAdapter(cmd)
                    adapter.Fill(dt)

                    If dt.Rows.Count > 0 Then
                        rptResults.DataSource = dt
                        rptResults.DataBind()
                    Else
                        lblNoResults.Visible = True
                    End If
                End Using
            End Using
        End Sub

    End Class
End Namespace