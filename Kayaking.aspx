<%@ Page Title="Kayaking in Fiji" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Kayaking.aspx.vb" Inherits="Assignment_2.Kayaking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Kayaking.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="kayaking-background">

        <section class="kayaking-overlay">

            <article class="kayaking-content">

                <section>
                    <h1>Kayaking in Fiji</h1>
                </section>

                <section class="kayaking-info">

                    <h2>Introduction</h2>
                    <p>
                        Kayaking in Fiji is a peaceful way to explore the ocean, rivers, and coastal areas.
                        It gives you the freedom to move across calm waters while enjoying stunning island views.
                    </p>

                    <h2>Why Kayak in Fiji</h2>
                    <p>
                        Kayaking is beginner-friendly, eco-friendly, and lets you reach hidden spots that bigger boats cannot access.
                        It’s perfect for both relaxation and light adventure.
                    </p>

                    <h2>Popular Kayaking Locations</h2>
                    <p>
                        Popular kayaking areas include the Navua River, Coral Coast, and the Mamanuca Islands.
                        These spots offer calm waters, scenic routes, and rich natural surroundings.
                    </p>

                     <p class="book-button">
                         <asp:HyperLink ID="btnBook" runat="server" 
                             NavigateUrl="~/Booking.aspx?PackageID=5" 
                             Text="Book Now" 
                             CssClass="book-btn" />
                     </p>

                </section>

            </article>

        </section>

    </main>

</asp:Content>
