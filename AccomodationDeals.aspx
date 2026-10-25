<%@ Page Title="Accommodation Deals" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeBehind="AccomodationDeals.aspx.vb" Inherits="Assignment_2.AccomodationDeals" %>
<%@ Register Src="~/BookingCard.ascx" TagPrefix="uc" TagName="BookingCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/AccommodationDeals.css?v=dark2" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="deals-background">

        <section class="deals-overlay">

            <article class="deals-content">

                <section>
                    <h1>Accommodation Deals</h1>
                </section>

                <section class="deals-info">

                    <!-- Grand Pacific -->
                    <figure>
                        <img src="/Images/grand.jpg" alt="Grand Pacific Hotel" />
                    </figure>

                    <h2>Grand Pacific Hotel</h2>

                    <p>
                        Experience luxury and elegance in the heart of Suva with exclusive accommodation packages and relaxing getaway deals.
                    </p>

                    <p>
                        Enjoy special offers including discounted room rates, dining experiences, and premium hotel services for a memorable stay.
                    </p>

                    <a href="Offer1.aspx" class="offer-button">
                        View Offers
                    </a>

                    <hr />

                    <!-- Outrigger -->
                    <figure>
                        <img src="/Images/Outtrigger.jpg" alt="Outrigger Resort" />
                    </figure>

                    <h2>Outrigger Resort</h2>

                    <p>
                        Escape to a tropical beachfront paradise with family-friendly resort packages and relaxing island holiday deals.
                    </p>

                    <p>
                        Discover exciting offers featuring spa experiences, ocean-view stays, and exclusive resort activities for guests.
                    </p>

                    <a href="Offer2.aspx" class="offer-button">
                        View Offers
                    </a>

                </section>

                <!-- Booking box (price + Book Now) -->
                <uc:BookingCard ID="BookingCard1" runat="server" PackageIDs="8,9,10,11" />


            </article>

        </section>

    </main>

</asp:Content>