<%@ Page Title="Plan" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Plan.aspx.vb" Inherits="Assignment_2.Plan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Plan.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="plan-container">

        <!-- Page Heading -->
        <section class="plan-heading">
            <h1>Plan Your Perfect Fiji Trip</h1>
            <p>
                Discover convenient transportation options and affordable accommodation deals 
                to make your Fiji holiday smooth, relaxing, and unforgettable.
            </p>
        </section>

        <!-- Transportation Section -->
        <section class="plan-section">
            <article class="plan-card">
                <a href="Transportation.aspx">

                    <figure>
                        <img src="/Images/transportation.jpg" alt="Transportation" />
                        <figcaption>Transportation</figcaption>
                    </figure>

                    <p class="plan-description">
                        Explore reliable transportation services across Fiji including buses, taxis, 
                        ferries, and island transfers. Travel comfortably while enjoying the beautiful 
                        scenery throughout your journey.
                    </p>

                </a>
            </article>
        </section>

        <!-- Accommodation Deals Section -->
        <section class="plan-section">
            <article class="plan-card">
                <a href="AccomodationDeals.aspx">

                    <figure>
                        <img src="/Images/Deals.jpg" alt="Accommodation Deals" />
                        <figcaption>Accommodation Deals</figcaption>
                    </figure>

                    <p class="plan-description">
                        Find great accommodation deals for resorts, hotels, and island stays across Fiji. 
                        Enjoy comfortable experiences at affordable prices suitable for every traveler.
                    </p>

                </a>
            </article>
        </section>

    </main>

</asp:Content>



