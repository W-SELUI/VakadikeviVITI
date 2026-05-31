<%@ Page Title="Transportation" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Transportation.aspx.vb" Inherits="Assignment_2.Transportation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Transportation.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main>
        <section class="transport-container">

            <!-- Air Travel Services -->
            <article class="transport-card">
                <a href="AirTravel.aspx">

                    <figure>
                        <img src="/Images/AirTravel.jpg" alt="Air Travel Services" />

                        <figcaption>
                            <h1>AIR TRAVEL SERVICES</h1>
                            <p>Fast and comfortable flights connecting Fiji’s beautiful islands.</p>
                        </figcaption>
                    </figure>

                </a>
            </article>

            <!-- Bus Services -->
            <article class="transport-card">
                <a href="Bus.aspx">

                    <figure>
                        <img src="/Images/Bus.jpg" alt="Bus Services" />

                        <figcaption>
                            <h1>BUS SERVICES</h1>
                            <p>Affordable and reliable transportation across major towns and cities.</p>
                        </figcaption>
                    </figure>

                </a>
            </article>

            <!-- Taxi Services -->
            <article class="transport-card">
                <a href="Taxi.aspx">

                    <figure>
                        <img src="/Images/Taxi.jpg" alt="Taxi Services" />

                        <figcaption>
                            <h1>TAXI SERVICES</h1>
                            <p>Convenient taxi rides available anytime for easy travel around Fiji.</p>
                        </figcaption>
                    </figure>

                </a>
            </article>

        </section>
    </main>

</asp:Content>
