<%@ Page Title="Activities" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Activities.aspx.vb" Inherits="Assignment_2.Activities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Activities.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main>

        <section class="activities-container">

            <!-- Top Row -->
            <div class="top-row">

                <!-- Hiking -->
                <article class="activity-card">
                    <a href="Hiking.aspx">

                        <figure>
                            <img src="/Images/Hiking.jpg" alt="Hiking" />

                            <figcaption>
                                <h1>HIKING</h1>
                            </figcaption>
                        </figure>

                    </a>
                </article>

                <!-- Snorkeling -->
                <article class="activity-card">
                    <a href="Snorkeling.aspx">

                        <figure>
                            <img src="/Images/snorkeling.jpg" alt="Snorkeling" />

                            <figcaption>
                                <h1>SNORKELING</h1>
                            </figcaption>
                        </figure>

                    </a>
                </article>

            </div>

            <!-- Bottom Center -->
            <div class="bottom-row">

                <!-- Kayaking -->
                <article class="activity-card kayaking-card">
                    <a href="Kayaking.aspx">

                        <figure>
                            <img src="/Images/Kayaking.jpg" alt="Kayaking" />

                            <figcaption>
                                <h1>KAYAKING</h1>
                            </figcaption>
                        </figure>

                    </a>
                </article>

            </div>

        </section>

    </main>

</asp:Content>
