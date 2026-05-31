<%@ Page Title="An Pho" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="AnPho.aspx.vb" Inherits="Assignment_2.AnPho" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/AnPho.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="anpho-background">

        <section class="anpho-overlay">

            <article class="anpho-content">

                <section>
                    <h1>AN PHO RESTAURANT</h1>
                </section>

                <section class="restaurant-info">
  
                    <p>
                        An Pho offers a modern Vietnamese dining experience in Suva, known for its rich pho,
                        fresh ingredients, and warm comforting flavours. It is a popular spot for authentic Asian cuisine lovers.
                    </p>

                    <h2>Location</h2>
                    <p>Suva, Fiji</p>

                    <h2>Ratings</h2>
                    <p>4.3 / 5</p>

                    <h2>Opening Hours</h2>
                    <p>Monday – Sunday : 10:00 AM – 9:00 PM</p>

                    <p class="website-link">
                        <a href="https://www.tripadvisor.com/Restaurant_Review-g294337-d19941599-Reviews-An_Pho-Suva_Viti_Levu.html" target="_blank">
                            Visit Website
                        </a>
                    </p>

                    <p class="book-button">
                        <asp:HyperLink ID="btnBook" runat="server" 
                            NavigateUrl="~/Booking.aspx?PackageID=2" 
                            Text="Book Now" 
                            CssClass="book-btn" />
                    </p>

                </section>

            </article>

        </section>

    </main>

</asp:Content>
