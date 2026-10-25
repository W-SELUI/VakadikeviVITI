# VakadikeviVITI (Group_SAIPE Assignment 2)

ASP.NET Web Forms site (VB.NET, .NET Framework 4.8). Runs fully on your own computer -
the website on localhost and the database in SQL Server LocalDB. No online hosting needed.

## Run it

1. Install **Visual Studio Community** with the **ASP.NET and web development** workload
   (this also installs SQL Server LocalDB and .NET Framework 4.8 tools).
2. Open **Group_SAIPE_Site.vbproj** (or Assignment_2.slnx on Visual Studio 2022 17.13+).
3. Right-click the solution in Solution Explorer -> **Restore NuGet Packages**.
4. **Build -> Rebuild Solution**, then press **F5**.

The first time it runs, the site creates the database `VakadikeviVITI_DB` by itself
from `Database/CreateDatabase.sql` (tables + packages + admin accounts).

## Admin logins

Log in with the email or the username:

| Username | Email | Password |
|---|---|---|
| wselui | wselui@gmail.com | Admin000 |
| etaufa | etaufa@gmail.com | Admin001 |
| snau | snau@gmail.com | Admin002 |
| etauheluhelu | etauheluhelu@gmail.com | Admin003 |

## Start the database fresh

In Visual Studio: **View -> SQL Server Object Explorer** -> (localdb)\MSSQLLocalDB -> Databases ->
right-click **VakadikeviVITI_DB** -> Delete. Run the site again and it is recreated.

## If something goes wrong

- *"NuGet package(s) are missing"* or *"...bin\roslyn\csc.exe"* -> do step 3, then Rebuild.
- *"A network-related or instance-specific error"* -> LocalDB is not installed. Re-run the
  Visual Studio Installer and tick the ASP.NET and web development workload.
