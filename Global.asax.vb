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

        ' Make sure the database has its tables before any page uses it
        SetupDatabase()
    End Sub

    ' Sets up the database the first time the site runs, using
    ' Database\CreateDatabase.sql. Safe to run every time - it only adds
    ' what is missing.
    '
    ' Works in both places:
    '  - Your laptop (LocalDB): creates the database itself, then the tables.
    '  - Online hosting (MonsterASP): the host creates the database for you and
    '    does not allow creating one from code, so step 1 is skipped and
    '    step 2 still builds the tables and starting data.
    Private Sub SetupDatabase()
        Dim connStr As String = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString

        ' 1) Create the empty database if it is not there yet (laptop only)
        Try
            Dim builder As New SqlConnectionStringBuilder(connStr)
            Dim dbName As String = builder.InitialCatalog

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
        Catch ex As Exception
            ' Not allowed here (normal on shared hosting) - the database
            ' already exists, so carry on to step 2.
            System.Diagnostics.Debug.WriteLine("Skipped creating database: " & ex.Message)
        End Try

        ' 2) Create the tables and starting data
        Try
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
        Catch ex As Exception
            ' If this fails the normal pages still work; pages that use the
            ' database will show the error. Details appear in the Output window.
            System.Diagnostics.Debug.WriteLine("Database setup failed: " & ex.Message)
        End Try
    End Sub
End Class
