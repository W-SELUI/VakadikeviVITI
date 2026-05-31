<%@ Page Title="Explore" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Explore.aspx.vb" Inherits="Assignment_2.Explore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Explore.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <section class="explore-grid">
            
            <!-- Restaurant -->
            <article class="explore-item">
                <a href="Restaurant.aspx">
                    <figure>
                        <img src="/Images/restaurant.jpg" alt="Restaurant" />
                        <figcaption>Restaurant</figcaption>
                    </figure>
                    <p class="explore-description">Discover a variety of restaurants offering local Fijian cuisine and international
                  dishes. Visitors can enjoy fresh seafood, tropical flavors, and authentic island dining 
                  experiences across Fiji.</p>
                </a>
            </article>

            <!-- Activities -->
            <article class="explore-item">
                <a href="Activities.aspx">
                    <figure>
                        <img src="/Images/activities.jpg" alt="Activities" />
                        <figcaption>Activities</figcaption>
                    </figure>
                    <p class="explore-description">Explore exciting activities that showcase Fiji’s natural beauty and culture.
                        From water sports and island adventures to cultural experiences and outdoor 
                        recreation, there is something for every traveler to enjoy.</p>
                </a>
            </article>

            <!-- Tours -->
            <article class="explore-item">
                <a href="Tours.aspx">
                    <figure>
                        <img src="/Images/tours.jpg" alt="Tours" />
                        <figcaption>Tours</figcaption>
                    </figure>
                    <p class="explore-description">Experience guided tours that take visitors through Fiji’s stunning islands, 
                        villages, and attractions. Tours provide opportunities to learn about Fijian culture, 
                        history, and the country’s breathtaking landscapes.</p>
                </a>
            </article>

            <!-- Accommodation -->
            <article class="explore-item">
                <a href="Accommodation.aspx">
                    <figure>
                        <img src="/Images/Accomodation.jpg" alt="Accommodation" />
                        <figcaption>Accommodation</figcaption>
                    </figure>
                    <p class="explore-description">Find comfortable accommodation options suitable for different travel styles and 
                        budgets. Visitors can relax in hotels, resorts, and island stays while enjoying 
                        Fiji’s warm hospitality and scenic surroundings.</p>
                </a>
            </article>

        </section>
    </main>
</asp:Content>



