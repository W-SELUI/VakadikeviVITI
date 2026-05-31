<%@ Page Title="Village Tours in Fiji" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Village.aspx.vb" Inherits="Assignment_2.Village" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Village.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="village-background">

        <section class="village-overlay">

            <article class="village-content">

                <section>
                    <h1>Village Tours</h1>
                </section>

                <section class="village-info">

                    <h2>Introduction</h2>
                    <p>
                        Village tours in Fiji provide visitors with the opportunity to experience authentic Fijian culture and traditions.
                        Guests can interact with locals and learn about everyday village life.
                    </p>

                    <h2>Why Visit Fijian Villages</h2>
                    <p>
                        Village tours offer a deeper understanding of Fiji’s customs, hospitality, and community lifestyle.
                        Visitors can enjoy traditional ceremonies, local food, music, and handmade crafts.
                    </p>

                    <h2>Popular Village Tour Locations</h2>
                    <p>
                        Popular village tour destinations include Navala Village, Arts Village, and several communities along the Coral Coast.
                        These places are known for preserving traditional Fijian culture and welcoming visitors warmly.
                    </p>

                     <p class="book-button">
                         <asp:HyperLink ID="btnBook" runat="server" 
                             NavigateUrl="~/Booking.aspx?PackageID=7" 
                             Text="Book Now" 
                             CssClass="book-btn" />
                     </p>

                </section>

            </article>

        </section>

    </main>

</asp:Content>
