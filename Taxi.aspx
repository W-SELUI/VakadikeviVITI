<%@ Page Title="Taxi Services" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Taxi.aspx.vb" Inherits="Assignment_2.Taxi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Taxi.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="taxi-background">

        <section class="taxi-overlay">

            <article class="taxi-content">

                <section class="taxi-content">
                    <h1>Golocal Fiji Taxi Services</h1>
                </section>

                <section class="taxi-info">

                    <h2>Introduction</h2>
                    <p>
                        Taxi services in Fiji provide convenient and flexible transportation for locals and tourists.
                        They are widely available in major towns and cities, offering quick point-to-point travel.
                    </p>

                    <h2>Local Taxi Transport</h2>
                    <p>
                        Taxis operate across areas such as Suva, Nadi, Lautoka, and other urban centres.
                        They are commonly used for airport transfers, hotel pickups, and daily travel needs.
                    </p>

                    <h2>Booking Options</h2>
                    <p>
                        Taxi bookings in Fiji can be made directly by phone, at taxi stands, or through local transport providers.
                        Some services also offer online or app-based booking for easier access and faster response.
                    </p>

                    <h2>Travel Experience</h2>
                    <p>
                        Taxi rides offer private, direct, and comfortable travel compared to public transport.
                        Drivers are familiar with local routes and can provide quick access to destinations across the islands.
                    </p>

                    <h2>Why Choose Taxi Services</h2>
                    <p>
                        Taxis are ideal for convenience, speed, and door-to-door service.
                        They are especially useful for airport transfers, luggage transport, and flexible travel schedules.
                    </p>

                    <h2>Cab Booking Information</h2>
                    <p>
                        Several taxi providers operate in Fiji, including local cab companies and ride booking services.
                        Availability may vary depending on location and time of day.
                    </p>

                    <a href="https://golocalfiji.com.fj/cab-booking/" target="_blank" class="visit-button">
                        Visit Website
                    </a>

                    <p class="book-button">
                        <asp:HyperLink ID="btnBook" runat="server" 
                            NavigateUrl="~/Booking.aspx?PackageID=12" 
                            Text="Book Now" 
                            CssClass="book-btn" />
                    </p>

                </section>

            </article>

        </section>

    </main>

</asp:Content>
