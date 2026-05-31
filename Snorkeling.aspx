<%@ Page Title="Snorkeling in Fiji" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Snorkeling.aspx.vb" Inherits="Assignment_2.Snorkeling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Snorkeling.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="snorkeling-background">

        <section class="snorkeling-overlay">

            <article class="snorkeling-content">

                <section>
                    <h1>Snorkeling in Fiji</h1>
                </section>

                <section class="snorkeling-info">

                    <h2>Introduction</h2>
                    <p>
                        Snorkeling in Fiji gives you access to some of the clearest waters in the world.
                        You can explore vibrant coral reefs, tropical fish, and calm lagoons just a few meters from shore.
                    </p>

                    <h2>Why Snorkel in Fiji</h2>
                    <p>
                        Fiji is known for its warm waters and rich marine biodiversity. Snorkeling is beginner-friendly,
                        affordable, and lets you experience the underwater world without heavy equipment or training.
                    </p>

                    <h2>Popular Snorkeling Locations</h2>
                    <p>
                        Popular spots include the Coral Coast, the Mamanuca Islands, and the Yasawa Islands.
                        These locations are famous for clear visibility and colorful reef systems.
                    </p>

                    <p class="book-button">
                        <asp:HyperLink ID="btnBook" runat="server" 
                            NavigateUrl="~/Booking.aspx?PackageID=4" 
                            Text="Book Now" 
                            CssClass="book-btn" />
                    </p>

                </section>

            </article>

        </section>

    </main>

</asp:Content>
