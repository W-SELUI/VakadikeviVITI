Imports System.Web.Optimization
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.IO
Imports System.Text.RegularExpressions

Public Class Global_asax
    Inherits HttpApplication

    Sub Application_Start(sender As Object, e As EventArgs)
        ' Fires when the application is started
        RouteConfig.RegisterRoutes(RouteTable.Routes)
        BundleConfig.RegisterBundles(BundleTable.Bundles)

        ' Make sure the local database exists before any page uses it
        SetupLocalDatabase()
    End Sub

    ' Creates the database on this computer (SQL Server LocalDB) the first time
    ' the site runs, using Database\CreateDatabase.sql. Safe to run every time.
    Private Sub SetupLocalDatabase()
        Dim connStr As String = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        Dim builder As New SqlConnectionStringBuilder(connStr)
        Dim dbName As String = builder.InitialCatalog

        ' 1) Create the empty database if it is not there yet
        Dim masterBuilder As New SqlConnectionStringBuilder(connStr)
        masterBuilder.InitialCatalog = "master"
        Using conn As New SqlConnection(masterBuilder.ConnectionString)
            conn.Open()
            Dim sql As String = "IF DB_ID(@name) IS NULL EXEC('CREATE DATABASE [' + @name + ']')"
            Using cmd As New SqlCommand(sql, conn)
                cmd.Parameters.AddWithValue("@name", dbName)
                cmd.ExecuteNonQuery()
            End Using
        End Using

        ' 2) Create the tables and starting data
        Dim scriptPath As String = System.Web.Hosting.HostingEnvironment.MapPath("~/Database/CreateDatabase.sql")
        If Not File.Exists(scriptPath) Then Exit Sub

        Dim script As String = File.ReadAllText(scriptPath)
        ' SQL scripts are split into batches by lines that only say GO
        Dim batches As String() = Regex.Split(script, "^\s*GO\s*$", RegexOptions.Multiline Or RegexOptions.IgnoreCase)

        Using conn As New SqlConnection(connStr)
            conn.Open()
            For Each batch As String In batches
                If batch.Trim() <> "" Then
                    Using cmd As New SqlCommand(batch, conn)
                        cmd.ExecuteNonQuery()
                    End Using
                End If
            Next
        End Using
    End Sub
End Class
