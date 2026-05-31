<%@ Page Title="Hiking in Fiji" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Hiking.aspx.vb" Inherits="Assignment_2.Hiking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Hiking.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="hiking-background">

        <section class="hiking-overlay">

            <article class="hiking-content">

                <section>
                    <h1>Hiking in Fiji</h1>
                </section>

                <section class="hiking-info">

                    <h2>Introduction</h2>
                    <p>
                        Hiking in Fiji offers an incredible way to explore the islands beyond the beaches.
                        From lush rainforests to mountain trails and waterfalls, Fiji provides scenic routes
                        for both beginners and experienced hikers.
                    </p>

                    <h2>Why Hike in Fiji</h2>
                    <p>
                        Hiking allows you to experience Fiji’s natural beauty up close, including tropical forests,
                        wildlife, and panoramic island views. It is also a great way to stay active while enjoying
                        the peaceful environment of nature.
                    </p>

                    <h2>Popular Hiking Locations</h2>
                    <p>
                        Some popular hiking spots include Colo-i-Suva Forest Park, Mount Tomanivi, and Sigatoka Sand Dunes.
                        Each location offers unique trails, scenery, and difficulty levels suitable for different hikers.
                    </p>

                    <p class="book-button">
                        <asp:HyperLink ID="btnBook" runat="server" 
                            NavigateUrl="~/Booking.aspx?PackageID=3" 
                            Text="Book Now" 
                            CssClass="book-btn" />
                    </p>

                </section>

            </article>

        </section>

    </main>

</asp:Content>
