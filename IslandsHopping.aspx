<%@ Page Title="Islands Hopping in Fiji" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="IslandsHopping.aspx.vb" Inherits="Assignment_2.IslandsHopping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/IslandsHopping.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="islands-background">

        <section class="islands-overlay">

            <article class="islands-content">

                <section>
                    <h1>Islands Hopping</h1>
                </section>

                <section class="islands-info">

                    <h2>Introduction</h2>
                    <p>
                        Island hopping in Fiji allows visitors to explore multiple tropical islands in a single trip.
                        Each island offers unique beaches, lagoons, and experiences surrounded by stunning ocean scenery.
                    </p>

                    <h2>Why Try Islands Hopping</h2>
                    <p>
                        It is one of the best ways to experience Fiji’s beauty and diversity.
                        Travelers can enjoy snorkeling, relaxing on white sandy beaches, and discovering different island cultures.
                    </p>

                    <h2>Popular Island Destinations</h2>
                    <p>
                        Popular island groups include the Mamanuca Islands, Yasawa Islands, and the Lau Islands.
                        These destinations are known for crystal-clear waters, resorts, and breathtaking landscapes.
                    </p>

                     <p class="book-button">
                         <asp:HyperLink ID="btnBook" runat="server" 
                             NavigateUrl="~/Booking.aspx?PackageID=6" 
                             Text="Book Now" 
                             CssClass="book-btn" />
                     </p>

                </section>

            </article>

        </section>

    </main>

</asp:Content>
