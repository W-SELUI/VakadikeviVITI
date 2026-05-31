<%@ Page Title="Accommodation" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Accommodation.aspx.vb" Inherits="Assignment_2.Accommodation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Accommodation.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main>

        <section class="accommodation-intro">

            <h1>Accommodation in Fiji</h1>

            <p>
                Fiji offers a wide range of accommodation options for visitors seeking comfort and relaxation.
                From luxury resorts to historic hotels, travelers can enjoy beautiful ocean views,
                tropical surroundings, and warm Fijian hospitality during their stay.
            </p>

        </section>

        <section class="accommodation-container">

            <!-- Grand Pacific Hotel -->
            <article class="accommodation-card">

                <a href="GrandPacific.aspx">

                    <figure>
                        <img src="/Images/grand.jpg" alt="Grand Pacific Hotel" />

                        <figcaption>
                            <h2>GRAND PACIFIC HOTEL</h2>
                            <p>A historic luxury hotel in Suva known for elegance and waterfront views.</p>
                        </figcaption>
                    </figure>

                </a>

            </article>

            <!-- Outrigger Resort -->
            <article class="accommodation-card">

                <a href="Outtrigger.aspx">

                    <figure>
                        <img src="/Images/Outtrigger.jpg" alt="Outrigger Fiji Beach Resort" />

                        <figcaption>
                            <h2>OUTRIGGER FIJI BEACH RESORT</h2>
                            <p>A tropical beachfront resort offering relaxation, activities, and island hospitality.</p>
                        </figcaption>
                    </figure>

                </a>

            </article>

        </section>

    </main>

</asp:Content>
