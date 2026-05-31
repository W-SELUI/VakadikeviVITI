<%@ Page Title="Grand Pacific Hotel" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="GrandPacific.aspx.vb" Inherits="Assignment_2.GrandPacific" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/GrandPacific.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="grandpacific-background">

        <section class="grandpacific-overlay">

            <article class="grandpacific-content">

                <section>
                    <h1>Grand Pacific Hotel</h1>
                </section>

                <section class="grandpacific-info">

                    <h2>Location</h2>
                    <p>Suva, Fiji</p>

                    <h2>Description</h2>
                    <p>
                        Grand Pacific Hotel is a modern and comfortable hotel located in the heart of Suva.
                        It offers convenient access to the city, waterfront views, and quality accommodation
                        for both local and international visitors.
                    </p>

                    <h2>Best For</h2>
                    <p>
                        Business trips, conferences, and short stays in Suva.
                    </p>

                    <p class="website-link">
                        <a href="https://www.guestreservations.com/grand-pacific-hotel/booking?utm_source=google&utm_medium=cpc&utm_campaign=991006030&gad_source=1&gad_campaignid=991006030&gclid=CjwKCAjwq6DQBhBVEiwA4ZD5XB-MsBqEKHp5ElvLVqAcsszKrt5Tlnv-Dy865Frj5HwXyjyemjxqyRoCD68QAvD_BwE" target="_blank">
                            Visit Website
                        </a>
                    </p>

                    <p class="offer-button">
                        <a href="Offer1.aspx">
                            View Offers
                        </a>
                    </p>

                </section>

            </article>

        </section>

    </main>

</asp:Content>
