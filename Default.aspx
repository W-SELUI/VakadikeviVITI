<%@ Page Title="Home" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Assignment_2.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Home.css?v=999" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <section class="first-part">
            <h2>DISCOVER PARADISE</h2>
            <p>Experience the pristine beauty and rich culture of Fiji's Island</p>
            <p class="boxed-text">Start Your Journey</p>
        </section>

        <section class="second-part">
            <h2>WELCOME TO FIJI</h2>
            <p>The Jewel of the South Pacific, where crystal-clear waters meet pristine white sands</p>
        </section>

        <section class="first-image">
            <section class="text-content">
                <h2>Island of Wonder</h2>
                <p>Fiji is an archipelago of more than 300 islands, each offering its own unique charm...</p>
            </section>
            <section class="image-content">
                <figure>
                    <img src="/Images/First_Picture.jpg" alt="Fiji Landscape" width="600" height="450" />
                </figure>
            </section>
        </section>

        <section class="second-image">
            <section class="image-content">
                <figure>
                    <img src="/Images/culture.jpg" alt="Fiji Culture" />
                </figure>
            </section>
            <section class="content">
                <h2>Rich Culture & Traditions</h2>
                <p>Immerse yourself in the warmth of Fijian hospitality...</p>
            </section>
        </section>

        <section class="reasons">
            <h2>Why Choose FIJI</h2>
            <ul>
                <li>
                    <figure><img src="/Images/beach.jpg" alt="Beach icon" width="60" height="70" /></figure>
                    <h3>Pristine Beaches</h3>
                    <p>Over 300 islands with world-class beaches and turquoise waters</p>
                </li>
                <li>
                    <figure><img src="/Images/marine.jpg" alt="Marine Icon" width="80" height="70" /></figure>
                    <h3>Marine Adventures</h3>
                    <p>Explore vibrant coral reefs and dive with majestic sea creatures</p>
                </li>
                <li>
                    <figure><img src="/Images/flower.jpg" alt="Flower Icon" width="60" height="70" /></figure>
                    <h3>Warm Hospitality</h3>
                    <p>Experience genuine Fijian culture and legendary friendliness</p>
                </li>
            </ul>
        </section>
    </main>
</asp:Content>






