<%@ Page Title="Login" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Assignment_2.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Login.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="login-page">

        <section class="login-wrapper">

            <article class="login-card">

                <section class="login-header">

                    <img src="/Images/logo.jpg" alt="Logo" class="login-logo" />

                    <h1 class="site-name">VakadikeviVITI</h1>

                </section>

                <section class="login-form">

                    <p class="label-text">Username / Email</p>
                    <asp:TextBox ID="txtEmail" runat="server"
                        CssClass="input-box"
                        placeholder="e.g. johndoe@email.com" />

                    <p class="label-text">Password</p>
                    <asp:TextBox ID="txtPassword" runat="server"
                        TextMode="Password"
                        CssClass="input-box"
                        placeholder="Enter your password" />

                    <asp:Button ID="btnLogin" runat="server"
                        Text="Login"
                        CssClass="login-btn" 
                        OnClick="btnLogin_Click"/>


                </section>

                <section>

                    <p class="register-text">Don't have an account?</p>

                    <a href="Register.aspx" class="register-btn">Register Here</a>

                </section>

            </article>

        </section>

    </main>

</asp:Content>