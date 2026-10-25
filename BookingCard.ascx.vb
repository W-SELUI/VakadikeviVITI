Imports System.Collections.Generic
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

' Booking box for detail pages (Hiking, Tiko's, hotels, transport...).
' Reads the package name, location and price from the database.
Public Class BookingCard
    Inherits System.Web.UI.UserControl

    ' Which packages to show, e.g. "3" or "8,9"
    Public Property PackageIDs As String = ""

    ' Small heading at the top of the box
    Protected ReadOnly Property Heading As String
        Get
            If PackageIDs.Contains(",") Then Return "Available deals"
            Return "Book this experience"
        End Get
    End Property

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If IsPostBack Then Exit Sub

        ' Turn "8, 9" into a list of numbers
        Dim ids As New List(Of Integer)
        For Each part As String In PackageIDs.Split(","c)
            Dim id As Integer
            If Integer.TryParse(part.Trim(), id) Then ids.Add(id)
        Next

        If ids.Count = 0 Then
            Me.Visible = False
            Exit Sub
        End If

        Dim table As New DataTable()

        Try
            Dim connStr As String = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString

            Using conn As New SqlConnection(connStr)
                Using cmd As New SqlCommand()
                    ' Build "@p0, @p1, ..." so every ID is a safe parameter
                    Dim names As New List(Of String)
                    For i As Integer = 0 To ids.Count - 1
                        names.Add("@p" & i)
                        cmd.Parameters.AddWithValue("@p" & i, ids(i))
                    Next

                    cmd.CommandText = "SELECT PackageID, Name, Location, Price FROM Packages " &
                                      "WHERE PackageID IN (" & String.Join(", ", names) & ") ORDER BY PackageID"
                    cmd.Connection = conn

                    conn.Open()
                    table.Load(cmd.ExecuteReader())
                End Using
            End Using
        Catch ex As Exception
            ' If the database can't be reached, just hide the box -
            ' the rest of the page still works.
            Me.Visible = False
            Exit Sub
        End Try

        If table.Rows.Count = 0 Then
            Me.Visible = False
            Exit Sub
        End If

        rptPackages.DataSource = table
        rptPackages.DataBind()
    End Sub

End Class
