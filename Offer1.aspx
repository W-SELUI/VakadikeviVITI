<%@ Page Title="Grand Pacific Hotel Offers" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Offer1.aspx.vb" Inherits="Assignment_2.Offer1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Offer1.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="offer-background">

        <section class="offer-overlay">

            <article class="offer-content">

                <section>
                    <h1>Grand Pacific Hotel Deals</h1>
                </section>

                <section class="offer-info">

                    <h2>Weekend Getaway Deal</h2>

                    <p>
                        Enjoy a relaxing weekend in the heart of Suva with this special offer.
                        Perfect for short stays and quick city escapes.
                    </p>

                    <h3>Includes:</h3>

                    <ul>
                        <li>2 nights stay</li>
                        <li>Daily breakfast</li>
                        <li>Free WiFi</li>
                        <li>Access to hotel pool</li>
                    </ul>

                    <p>
                        Good for short trips, business travelers, and quick escapes.
                    </p>

                     <p class="book-button">
                         <asp:HyperLink ID="btnBook" runat="server" 
                             NavigateUrl="~/Booking.aspx?PackageID=8" 
                             Text="Book Now" 
                             CssClass="book-btn" />
                     </p>

                    <hr />

                    <h2>Stay 3 Nights, Get 1 Night Free</h2>

                    <p>
                        Stay longer and save more with this value deal at the Grand Pacific Hotel.
                        Ideal for guests planning an extended stay.
                    </p>

                    <h3>Includes:</h3>

                    <ul>
                        <li>Pay for 3 nights, get 1 extra night free</li>
                        <li>Complimentary breakfast</li>
                        <li>Free access to hotel facilities</li>
                    </ul>

                    <p>
                        Good for budget-conscious travelers and longer stays.
                    </p>

                     <p class="book-button">
                         <asp:HyperLink ID="HyperLink1" runat="server" 
                             NavigateUrl="~/Booking.aspx?PackageID=9" 
                             Text="Book Now" 
                             CssClass="book-btn" />
                     </p>

                </section>

            </article>

        </section>

    </main>

</asp:Content>
