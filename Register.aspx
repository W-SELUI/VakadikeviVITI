<%@ Page Title="Register" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Assignment_2.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Register.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="register-page">

        <section class="register-wrapper">

            <article class="register-card">

                <section class="register-header">

                    <img src="/Images/logo.jpg" alt="Logo" class="register-logo" />

                    <h1 class="site-name">VakadikeviVITI</h1>

                </section>

                <section class="register-form">

                    <p class="label-text">Full Name</p>
                    <asp:TextBox ID="txtFullName" runat="server"
                        CssClass="input-box"
                        placeholder="e.g. John Doe" />

                    <p class="label-text">Email</p>
                    <asp:TextBox ID="txtEmail" runat="server"
                        CssClass="input-box"
                        placeholder="e.g. johndoe@email.com" />

                    <p class="label-text">Username</p>
                    <asp:TextBox ID="txtUsername" runat="server"
                        CssClass="input-box"
                        placeholder="e.g. johndoe" />

                    <p class="label-text">Password</p>
                    <asp:TextBox ID="txtPassword" runat="server"
                        TextMode="Password"
                        CssClass="input-box"
                        placeholder="Enter your password" />

                    <p class="label-text">Confirm Password</p>
                    <asp:TextBox ID="txtConfirmPassword" runat="server"
                        TextMode="Password"
                        CssClass="input-box"
                        placeholder="Re-enter your password" />

                    <asp:Button ID="btnRegister" runat="server"
                        Text="Register"
                        CssClass="register-btn-main" 
                        OnClick="btnRegister_Click"/>

                </section>

               <section class="register-footer">

                    <p class="login-text">Already have an account?</p>

                    <a href="Login.aspx" class="login-btn-link">Login Here</a>

              </section>

            </article>

        </section>

    </main>

</asp:Content>
