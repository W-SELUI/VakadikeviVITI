Imports System.Data
Imports System.Data.SqlClient

Namespace Assignment_2
    Public Class Booking
        Inherits System.Web.UI.Page

        Dim connStr As String = "Data Source=(localdb)\ProjectModels;Initial Catalog=VakadikeviVITI_DB;Integrated Security=True"

        Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
            ' Must be logged in
            If Session("UserLoggedIn") Is Nothing OrElse Session("UserLoggedIn") <> True Then
                Response.Redirect("Login.aspx")
            End If

            ' Must have a PackageID in the URL
            If Request.QueryString("PackageID") Is Nothing Then
                Response.Redirect("Explore.aspx")
            End If

            If Not IsPostBack Then
                LoadPackageDetails()
            End If
        End Sub

        Private Sub LoadPackageDetails()
            Dim packageID As Integer = Convert.ToInt32(Request.QueryString("PackageID"))

            Using conn As New SqlConnection(connStr)
                Dim query As String = "SELECT Name, Type, Price, Location, Description FROM Packages WHERE PackageID = @PackageID"
                Using cmd As New SqlCommand(query, conn)
                    cmd.Parameters.AddWithValue("@PackageID", packageID)
                    conn.Open()
                    Dim reader As SqlDataReader = cmd.ExecuteReader()

                    If reader.Read() Then
                        lblName.Text = reader("Name").ToString()
                        lblType.Text = reader("Type").ToString()
                        lblPrice.Text = reader("Price").ToString()
                        lblLocation.Text = reader("Location").ToString()
                        lblDescription.Text = reader("Description").ToString()
                    Else
                        ' PackageID not found, send them back
                        Response.Redirect("Explore.aspx")
                    End If
                End Using
            End Using
        End Sub

        Protected Sub btnBook_Click(sender As Object, e As EventArgs) Handles btnBook.Click
            ' Validation
            If txtBookingDate.Text = "" Then
                lblMessage.Text = "Please select a booking date."
                lblMessage.ForeColor = Drawing.Color.Red
                Exit Sub
            End If

            If Convert.ToInt32(txtNumberOfPeople.Text) < 1 Then
                lblMessage.Text = "Number of people must be at least 1."
                lblMessage.ForeColor = Drawing.Color.Red
                Exit Sub
            End If

            Dim userID As Integer = Convert.ToInt32(Session("UserID"))
            Dim packageID As Integer = Convert.ToInt32(Request.QueryString("PackageID"))

            Using conn As New SqlConnection(connStr)
                Dim query As String = "INSERT INTO Bookings (UserID, PackageID, BookingDate, NumberOfPeople, SpecialRequests) 
                                       VALUES (@UserID, @PackageID, @BookingDate, @NumberOfPeople, @SpecialRequests)"
                Using cmd As New SqlCommand(query, conn)
                    cmd.Parameters.AddWithValue("@UserID", userID)
                    cmd.Parameters.AddWithValue("@PackageID", packageID)
                    cmd.Parameters.AddWithValue("@BookingDate", Convert.ToDateTime(txtBookingDate.Text))
                    cmd.Parameters.AddWithValue("@NumberOfPeople", Convert.ToInt32(txtNumberOfPeople.Text))
                    cmd.Parameters.AddWithValue("@SpecialRequests", If(txtSpecialRequests.Text.Trim() = "", DBNull.Value, txtSpecialRequests.Text.Trim()))

                    conn.Open()
                    cmd.ExecuteNonQuery()
                End Using
            End Using

            lblMessage.Text = "Booking Confirmed! We will be in touch soon."
            lblMessage.ForeColor = Drawing.Color.Green

            ' Clear the form
            txtBookingDate.Text = ""
            txtNumberOfPeople.Text = "1"
            txtSpecialRequests.Text = ""
        End Sub
    End Class
End Namespace
