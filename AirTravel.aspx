<%@ Page Title="Air Travel Services" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="AirTravel.aspx.vb" Inherits="Assignment_2.AirTravel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/AirTravel.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="airtravel-background">

        <section class="airtravel-overlay">

            <article class="airtravel-content">

                <section>
                    <h1>FIJI AIRWAYS</h1>
                </section>

                <section class="airtravel-info">

                    <h2>Introduction</h2>
                    <p>
                        Travelling to Fiji by air is one of the easiest and most comfortable ways to experience the beauty of the islands.
                        Fiji welcomes visitors from around the world through modern international airports and reliable airline services.
                    </p>

                    <h2>Fiji Airways</h2>
                    <p>
                        Fiji Airways is the national airline of Fiji and connects the country to major international destinations including Australia,
                        New Zealand, the United States, and several Pacific Island nations.
                    </p>

                    <h2>About Fiji Airways</h2>
                    <p>
                        Fiji Airways is known for its warm Fijian hospitality, professional service, and modern aircraft fleet.
                        The airline provides both international and domestic flights, making travel around Fiji smooth and convenient.
                    </p>

                    <h2>Travel Experience</h2>
                    <p>
                        Passengers travelling with Fiji Airways can enjoy comfortable seating, quality in-flight entertainment,
                        delicious meals, and friendly cabin crew who provide a welcoming island experience from the moment the journey begins.
                    </p>

                    <h2>Why Choose Fiji Airways</h2>
                    <p>
                        Fiji Airways offers reliable flight schedules, excellent customer service, and direct connections to many destinations.
                        It is a trusted airline for both tourists and local travellers exploring Fiji and the Pacific region.
                    </p>

                    <h2>Airport Information</h2>
                    <p>
                        Fiji’s main international gateway is Nadi International Airport, which handles most international arrivals and departures.
                        Domestic flights are also available to different islands and regions throughout Fiji.
                    </p>

                    <a href="https://www.fijiairways.com/en-fj/" target="_blank" class="visit-button">
                        Visit Website
                    </a>
                    
                    <p class="book-button">
                        <asp:HyperLink ID="btnBook" runat="server" 
                            NavigateUrl="~/Booking.aspx?PackageID=12" 
                            Text="Book Now" 
                            CssClass="book-btn" />
                    </p>

                </section>

            </article>

        </section>

    </main>

</asp:Content>
