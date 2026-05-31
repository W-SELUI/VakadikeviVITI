Imports System.Data
Imports System.Data.SqlClient

Namespace Assignment_2
    Public Class ManageBookings
        Inherits System.Web.UI.Page

        Dim connStr As String = "Data Source=(localdb)\ProjectModels;Initial Catalog=VakadikeviVITI_DB;Integrated Security=True"

        Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
            ' Redirect if not logged in or not Admin
            If Session("UserLoggedIn") Is Nothing OrElse Session("Role").ToString() <> "Admin" Then
                Response.Redirect("Home.aspx")
            End If

            If Not IsPostBack Then
                LoadBookings()
            End If
        End Sub

        Private Sub LoadBookings()
            Using conn As New SqlConnection(connStr)
                ' Join with Users and Packages to show meaningful data
                Dim query As String = "SELECT b.BookingID, u.Name, p.Name AS PackageName, 
                                              b.BookingDate, b.NumberOfPeople, b.SpecialRequests
                                       FROM Bookings b
                                       INNER JOIN Users u ON b.UserID = u.UserID
                                       INNER JOIN Packages p ON b.PackageID = p.PackageID
                                       ORDER BY b.BookingDate DESC"
                Using cmd As New SqlCommand(query, conn)
                    conn.Open()
                    Dim dt As New DataTable()
                    dt.Load(cmd.ExecuteReader())
                    gvBookings.DataSource = dt
                    gvBookings.DataBind()
                End Using
            End Using
        End Sub

        Protected Sub gvBookings_RowCommand(sender As Object, e As GridViewCommandEventArgs)
            If e.CommandName = "Delete" Then
                Dim bookingID As Integer = Convert.ToInt32(e.CommandArgument)

                Using conn As New SqlConnection(connStr)
                    Dim query As String = "DELETE FROM Bookings WHERE BookingID = @BookingID"
                    Using cmd As New SqlCommand(query, conn)
                        cmd.Parameters.AddWithValue("@BookingID", bookingID)
                        conn.Open()
                        cmd.ExecuteNonQuery()
                    End Using
                End Using

                lblMessage.Text = "Booking deleted successfully."
                lblMessage.ForeColor = Drawing.Color.Red

                LoadBookings()
            End If
        End Sub

    End Class
End Namespace