<%@ Page Title="Tiko's Floating Restaurant" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Tikos.aspx.vb" Inherits="Assignment_2.Tikos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Tikos.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="tikos-background">

        <section class="tikos-overlay">

            <article class="tikos-content">

                <section>
                    <h1>Tiko's Floating Restaurant</h1>
                </section>

                <section class="restaurant-info">

                    <p>
                        Tiko's Floating Restaurant offers a unique dining experience on the waters of Suva.
                        Known for its fresh seafood, relaxing atmosphere, and scenic harbor views,
                        it is one of Fiji’s most iconic dining destinations.
                    </p>

                    <h2>Location</h2>
                    <p>Suva Harbour, Suva, Fiji</p>

                    <h2>Ratings</h2>
                    <p>4.0 / 5</p>

                    <h2>Opening Hours</h2>
                    <p>Monday – Sunday : 11:00 AM – 10:00 PM</p>

                    <p class="website-link">
                        <a href="https://www.tripadvisor.com/Restaurant_Review-g294337-d1028813-Reviews-Tiko_s_Floating_Restaurant-Suva_Viti_Levu.html" target="_blank">
                            Visit Website
                        </a>
                    </p>

                    <p class="book-button">
                        <asp:HyperLink ID="btnBook" runat="server" 
                            NavigateUrl="~/Booking.aspx?PackageID=1" 
                            Text="Book Now" 
                            CssClass="book-btn" />
                    </p>

                </section>

            </article>

        </section>

    </main>

</asp:Content>
