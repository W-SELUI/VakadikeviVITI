# 🌴 VakadikeviVITI — ExploreFiji

**A Tourism & Travel Management Website for Fiji**

VakadikeviVITI (also known as **ExploreFiji**) is a tourism website built for **IS221 – Assignment 2** at the **University of the South Pacific (USP)**.
It helps visitors discover Fiji's restaurants, activities, tours, accommodation and transport, and book experiences online. It also gives admins a dashboard to manage users, bookings, feedback and travel packages.

> *Vakadikevi* — to explore, to discover. **VITI** — Fiji.

---

## ✨ Features

### For visitors
- **Explore Fiji:** restaurants, activities (hiking, snorkeling, kayaking), tours (island hopping, village visits) and accommodation
- **Plan a trip:** transportation (air, bus, taxi) and accommodation deals
- **Booking box on every detail page:** shows the package name, location and live price from the database, with a **Book Now** button
- **Online booking:** choose a date, number of people and any special requests
- **Accounts:** register, log in and log out
- **Feedback:** logged-in users can send feedback to the team
- **Free Fiji Travel Guide (PDF):** available to logged-in users

### For admins
- **Admin dashboard**
- **Manage Users:** activate or deactivate accounts
- **Manage Bookings:** view and delete bookings
- **Manage Feedback:** mark feedback as read, or delete it
- **Manage Content:** add, edit and delete travel packages (price changes show up on the site straight away)

### Design
- Dark tropical theme ("deep ocean at dusk")
- Responsive layout for desktop, tablet and mobile
- One sticky header with the current page highlighted

---

## 🛠️ Built With

| Part | Technology |
|---|---|
| Framework | ASP.NET Web Forms (.NET Framework 4.8) |
| Language | VB.NET |
| Database | SQL Server LocalDB |
| Front end | HTML, CSS, a small amount of JavaScript |
| Fonts | DM Serif Display & DM Sans (Google Fonts) |
| IDE | Visual Studio Community |

---

## 🚀 Getting Started

### Requirements
- **Visual Studio 2022 or newer** with the **ASP.NET and web development** workload
  (this also installs **SQL Server LocalDB** and the .NET Framework 4.8 tools)

### Run it
1. Clone the repo:
   ```bash
   git clone https://github.com/W-SELUI/VakadikeviVITI.git
   ```
2. Open **`Group_SAIPE_Site.vbproj`** in Visual Studio
   (or `Assignment_2.slnx` on Visual Studio 2022 v17.13+).
3. In Solution Explorer, right-click the solution and choose **Restore NuGet Packages**.
4. Click **Build → Rebuild Solution**, then press **F5**.

The **database creates itself** the first time the site runs, from `Database/CreateDatabase.sql`. It sets up the tables, travel packages and admin accounts, so there's no manual SQL setup.

### Demo admin login
| Username | Password |
|---|---|
| `wselui` | `Admin000` |

> ⚠️ These are demo accounts for local testing only. Change them before hosting the site anywhere public.

---

## 🗄️ Database

| Table | Purpose |
|---|---|
| `Users` | Visitors and admins (name, username, email, role, active status) |
| `Packages` | Bookable experiences: restaurants, activities, tours, hotel deals, transport |
| `Bookings` | Who booked what, the date, number of people and special requests |
| `Feedback` | Messages from users, with a read/unread status |

**Reset the database:** in Visual Studio, go to **View → SQL Server Object Explorer → (localdb)\MSSQLLocalDB → Databases**, right-click **VakadikeviVITI_DB** and choose **Delete**. Run the site again and it will be recreated.

---

## 📁 Project Structure

```
A2/
├── Master.Master            # Shared layout: header, menu, footer
├── Home.aspx                # Landing page
├── Explore.aspx / Plan.aspx # Main sections
├── Restaurant, Activities, Tours, Accommodation, Transportation .aspx
├── Tikos, AnPho, Hiking, Snorkeling, Kayaking, IslandsHopping, Village,
│   GrandPacific, Outtrigger, Offer1, Offer2, AirTravel, Bus, Taxi .aspx   # Detail pages
├── BookingCard.ascx         # Reusable booking box (price + Book Now)
├── Booking.aspx             # Booking form
├── Login / Register / Logout .aspx
├── Feedback.aspx
├── Admin.aspx + Manage*.aspx  # Admin pages
├── Global.asax.vb           # Creates the database on first run
├── Database/
│   └── CreateDatabase.sql   # Tables + starting data
├── style/                   # CSS (global.css + one file per page)
└── Images/
```

---

## 🧯 Troubleshooting

| Problem | Fix |
|---|---|
| *"NuGet package(s) are missing"* or *"…\bin\roslyn\csc.exe not found"* | Restore NuGet Packages, then Rebuild |
| *"A network-related or instance-specific error"* | LocalDB isn't installed. Re-run the Visual Studio Installer and tick **ASP.NET and web development** |
| The new styles aren't showing | Press **Ctrl + F5** in the browser to clear the cache |
| `Assignment_2.slnx` won't open | Open `Group_SAIPE_Site.vbproj` instead (`.slnx` needs a newer Visual Studio) |

---

## 👥 Team — Group SAIPE

| Name | Role |
|---|---|
| **William Selui** | Backend development, database, server-side logic |
| **Elizabeth Taufa** | Backend development, SQL |
| **Sulieti Nau** | Frontend development, UI design |
| **Elisapeta Tauheluhelu** | Frontend development, UI/UX design |

---

## 📚 Course

**IS221 – Assignment 2**
University of the South Pacific (USP), Laucala Campus, Suva, Fiji

> Built as a university assignment for educational purposes. The photos and business names are used for demonstration only.
