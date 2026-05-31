<%@ Page Title="Tours in Fiji" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Tours.aspx.vb" Inherits="Assignment_2.Tours" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Tours.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main>

        <section class="tours-container">

            <!-- Islands Hopping -->
            <article class="tour-card">

                <a href="IslandsHopping.aspx">

                    <figure>
                        <img src="/Images/Islands.jpg" alt="Islands Hopping" />

                        <figcaption>
                            <h1>ISLANDS HOPPING</h1>
                            <p>Explore Fiji’s beautiful islands, crystal-clear waters, and hidden tropical beaches.</p>
                        </figcaption>
                    </figure>

                </a>

            </article>

            <!-- Village Tours -->
            <article class="tour-card">

                <a href="Village.aspx">

                    <figure>
                        <img src="/Images/Village.jpg" alt="Village Tours" />

                        <figcaption>
                            <h1>VILLAGE TOURS</h1>
                            <p>Experience authentic Fijian culture, traditions, and daily village life.</p>
                        </figcaption>
                    </figure>

                </a>

            </article>

        </section>

    </main>

</asp:Content>
