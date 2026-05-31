<%@ Page Title="Outrigger Resort Offers" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Offer2.aspx.vb" Inherits="Assignment_2.Offer2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Offer2.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="offer-background">

        <section class="offer-overlay">

            <article class="offer-content">

                <section>
                    <h1>Outrigger Resort Deals</h1>
                </section>

                <section class="offer-info">

                    <h2>Romantic Escape Package</h2>

                    <p>
                        Indulge in a peaceful beachfront getaway designed for couples.
                        Experience relaxation, privacy, and stunning ocean views.
                    </p>

                    <h3>Includes:</h3>

                    <ul>
                        <li>3 nights beachfront stay</li>
                        <li>Daily breakfast for two</li>
                        <li>Couples spa treatment</li>
                        <li>Romantic beach dinner</li>
                    </ul>

                    <p>
                        Good for couples and honeymoon vibes.
                    </p>

                     <p class="book-button">
                         <asp:HyperLink ID="btnBook" runat="server" 
                             NavigateUrl="~/Booking.aspx?PackageID=10" 
                             Text="Book Now" 
                             CssClass="book-btn" />
                     </p>

                    <hr />

                    <h2>Family Holiday Package</h2>

                    <p>
                        Enjoy a fun-filled family vacation with activities for all ages
                        at the Outrigger Resort.
                    </p>

                    <h3>Includes:</h3>

                    <ul>
                        <li>4 nights stay</li>
                        <li>Daily breakfast</li>
                        <li>Kids’ activity program</li>
                        <li>Access to pool and beach activities</li>
                    </ul>

                    <p>
                        Good for families and group travel.
                    </p>

                     <p class="book-button">
                         <asp:HyperLink ID="HyperLink1" runat="server" 
                             NavigateUrl="~/Booking.aspx?PackageID=11" 
                             Text="Book Now" 
                             CssClass="book-btn" />
                     </p>

                </section>

            </article>

        </section>

    </main>

</asp:Content>
