Imports System.Data
Imports System.Data.SqlClient

Namespace Assignment_2
    Public Class ManageContent
        Inherits System.Web.UI.Page

        Dim connStr As String = "Data Source=(localdb)\ProjectModels;Initial Catalog=VakadikeviVITI_DB;Integrated Security=True"

        Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
            ' Redirect if not logged in or not Admin
            If Session("UserLoggedIn") Is Nothing OrElse Session("Role").ToString() <> "Admin" Then
                Response.Redirect("Home.aspx")
            End If

            If Not IsPostBack Then
                LoadPackages()
            End If
        End Sub

        Private Sub LoadPackages()
            Using conn As New SqlConnection(connStr)
                Dim query As String = "SELECT PackageID, Name, Type, Price, Location, Description FROM Packages ORDER BY PackageID ASC"
                Using cmd As New SqlCommand(query, conn)
                    conn.Open()
                    Dim dt As New DataTable()
                    dt.Load(cmd.ExecuteReader())
                    gvPackages.DataSource = dt
                    gvPackages.DataBind()
                End Using
            End Using
        End Sub

        Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
            ' Validation
            If txtName.Text.Trim() = "" OrElse txtType.Text.Trim() = "" OrElse
               txtPrice.Text.Trim() = "" OrElse txtLocation.Text.Trim() = "" OrElse
               txtDescription.Text.Trim() = "" Then
                lblMessage.Text = "Please fill in all fields."
                lblMessage.ForeColor = Drawing.Color.Red
                Exit Sub
            End If

            Dim packageID As Integer = Convert.ToInt32(hdnPackageID.Value)

            Using conn As New SqlConnection(connStr)
                Dim query As String

                If packageID = 0 Then
                    ' Add new package
                    query = "INSERT INTO Packages (Name, Type, Price, Location, Description) 
                             VALUES (@Name, @Type, @Price, @Location, @Description)"
                Else
                    ' Update existing package
                    query = "UPDATE Packages SET Name=@Name, Type=@Type, Price=@Price, 
                             Location=@Location, Description=@Description 
                             WHERE PackageID=@PackageID"
                End If

                Using cmd As New SqlCommand(query, conn)
                    cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim())
                    cmd.Parameters.AddWithValue("@Type", txtType.Text.Trim())
                    cmd.Parameters.AddWithValue("@Price", Convert.ToDecimal(txtPrice.Text.Trim()))
                    cmd.Parameters.AddWithValue("@Location", txtLocation.Text.Trim())
                    cmd.Parameters.AddWithValue("@Description", txtDescription.Text.Trim())

                    If packageID <> 0 Then
                        cmd.Parameters.AddWithValue("@PackageID", packageID)
                    End If

                    conn.Open()
                    cmd.ExecuteNonQuery()
                End Using
            End Using

            ' Reset form
            ClearForm()
            LoadPackages()

            lblMessage.ForeColor = Drawing.Color.Green
            lblMessage.Text = If(packageID = 0, "Package added successfully!", "Package updated successfully!")
        End Sub

        Protected Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
            ClearForm()
            lblMessage.Text = ""
        End Sub

        Protected Sub gvPackages_RowCommand(sender As Object, e As GridViewCommandEventArgs)
            Dim packageID As Integer = Convert.ToInt32(e.CommandArgument)

            If e.CommandName = "EditPackage" Then
                ' Load package details into form
                Using conn As New SqlConnection(connStr)
                    Dim query As String = "SELECT * FROM Packages WHERE PackageID = @PackageID"
                    Using cmd As New SqlCommand(query, conn)
                        cmd.Parameters.AddWithValue("@PackageID", packageID)
                        conn.Open()
                        Dim reader As SqlDataReader = cmd.ExecuteReader()

                        If reader.Read() Then
                            hdnPackageID.Value = packageID.ToString()
                            txtName.Text = reader("Name").ToString()
                            txtType.Text = reader("Type").ToString()
                            txtPrice.Text = reader("Price").ToString()
                            txtLocation.Text = reader("Location").ToString()
                            txtDescription.Text = reader("Description").ToString()
                            formTitle.InnerText = "Edit Package"
                        End If
                    End Using
                End Using

                lblMessage.Text = "Editing package — make your changes and click Save."
                lblMessage.ForeColor = Drawing.Color.Orange

            ElseIf e.CommandName = "DeletePackage" Then
                Using conn As New SqlConnection(connStr)
                    Dim query As String = "DELETE FROM Packages WHERE PackageID = @PackageID"
                    Using cmd As New SqlCommand(query, conn)
                        cmd.Parameters.AddWithValue("@PackageID", packageID)
                        conn.Open()
                        cmd.ExecuteNonQuery()
                    End Using
                End Using

                lblMessage.Text = "Package deleted successfully."
                lblMessage.ForeColor = Drawing.Color.Red
                LoadPackages()
            End If
        End Sub

        Private Sub ClearForm()
            hdnPackageID.Value = "0"
            txtName.Text = ""
            txtType.Text = ""
            txtPrice.Text = ""
            txtLocation.Text = ""
            txtDescription.Text = ""
            formTitle.InnerText = "Add New Package"
        End Sub

    End Class
End Namespace