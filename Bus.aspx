<%@ Page Title="Bus Services" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Bus.aspx.vb" Inherits="Assignment_2.Bus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Bus.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="bus-background">

        <section class="bus-overlay">

            <article class="bus-content">

                <section>
                    <h1>Pacific Express Fiji Bus Services</h1>
                </section>

                <section class="bus-info">

                    <h2>Introduction</h2>
                    <p>
                        Bus services in Fiji provide an affordable and reliable way to travel between towns and cities.
                        They are widely used by locals and visitors for daily transport and long-distance travel.
                    </p>

                    <h2>Public Transport Network</h2>
                    <p>
                        Fiji’s bus network connects major areas such as Suva, Nadi, Lautoka, and other surrounding regions,
                        making it easy to move around the main islands.
                    </p>

                    <h2>Pacific Transport Services</h2>
                    <p>
                        Pacific Transport is one of the key bus operators in Fiji, offering scheduled routes and reliable timetables
                        across urban and rural areas.
                    </p>

                    <h2>Travel Experience</h2>
                    <p>
                        Bus travel in Fiji is budget-friendly and gives passengers a chance to experience local life while commuting.
                        Services are generally frequent, especially in urban centres.
                    </p>

                    <h2>Why Choose Bus Travel</h2>
                    <p>
                        Choosing bus transport is cost-effective, accessible, and environmentally friendly.
                        It is one of the most practical ways to travel short and medium distances across Fiji.
                    </p>

                    <h2>Timetable Information</h2>
                    <p>
                        Bus schedules vary depending on routes and locations. For updated timetables and route information,
                        passengers can refer to official transport schedules.
                    </p>

                    <a href="https://www.pacifictransport.com.fj/time-table.html" target="_blank" class="visit-button">
                        View Timetable
                    </a>

                    <p class="book-button">
                        <asp:HyperLink ID="btnBook" runat="server" 
                            NavigateUrl="~/Booking.aspx?PackageID=13" 
                            Text="Book Now" 
                            CssClass="book-btn" />
                    </p>

                </section>

            </article>

        </section>

    </main>

</asp:Content>
