<%@ Page Title="About" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="Assignment_2.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/About.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="tikos-background">

        <section class="tikos-overlay">

            <article class="tikos-content">

                <section>
                    <h1>About the Developers</h1>
                </section>

                <section class="about-grid">

                    
<article class="developer">
    <figure class="profile">
        <img src="/Images/d1.jpg" alt="Developer 1" class="profile-pic" />
    </figure>
    <section class="dev-info">
        <h2>William Selui</h2>
        <p>Email: williamselui@gmail.com</p>
        <p>Short Bio: Enjoys building and structuring backend systems that make web applications run smoothly.</p>
        <p>Preferences: Backend development, databases, server-side logic</p>
    </section>
</article>

<!-- Developer 2 -->
<article class="developer">
    <figure class="profile">
        <img src="/Images/d2.jpg" alt="Developer 2" class="profile-pic" />
    </figure>
    <section class="dev-info">
        <h2>Elizabeth Taufa</h2>
        <p>Email: elizabethtaufa06@gmail.com</p>
        <p>Short Bio: Focused on backend development and managing data-driven systems.</p>
        <p>Preferences: Backend development, SQL, APIs</p>
    </section>
</article>

<!-- Developer 3 -->
<article class="developer">
    <figure class="profile">
        <img src="/Images/d3.jpg" alt="Developer 3" class="profile-pic" />
    </figure>
    <section class="dev-info">
        <h2>Sulieti Nau</h2>
        <p>Email: nsulieti@gmail.com</p>
        <p>Short Bio: Passionate about creating clean and interactive user interfaces.</p>
        <p>Preferences: Frontend development, UI design, Figma</p>
    </section>
</article>

<!-- Developer 4 -->
<article class="developer">
    <figure class="profile">
        <img src="/Images/d4.jpg" alt="Developer 4" class="profile-pic" />
    </figure>
    <section class="dev-info">
        <h2>Elisapeta Tauheluhelu</h2>
        <p>Email: litatauheluhelu06@gmail.com</p>
        <p>Short Bio: Enjoys designing smooth and visually appealing user experiences.</p>
        <p>Preferences: Frontend development, UI/UX design, creative tools</p>
    </section>
</article>

                </section>

            </article>

        </section>

    </main>

</asp:Content>



