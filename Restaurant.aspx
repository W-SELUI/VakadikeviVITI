<%@ Page Title="Restaurant" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Restaurant.aspx.vb" Inherits="Assignment_2.Restaurant" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Restaurant.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main>
        <section class="restaurant-container">

            <!-- Tiko's Floating Restaurant -->
            <article class="restaurant-card">
                <a href="Tikos.aspx">

                    <figure>
                        <img src="/Images/Restaurant1.jpg" alt="Tiko's Floating Restaurant" />

                        <figcaption>
                            <h1>TIKO'S FLOATING RESTAURANT</h1>
                        </figcaption>
                    </figure>

                </a>
            </article>

            <!-- An Pho -->
            <article class="restaurant-card">
                <a href="AnPho.aspx">

                    <figure>
                        <img src="/Images/Restaurant2.jpg" alt="An Pho" />

                        <figcaption>
                            <h1>AN PHO RESTAURANT</h1>
                        </figcaption>
                    </figure>

                </a>
            </article>

        </section>
    </main>

</asp:Content>
