<%@ Page Title="Booking" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" 
    CodeFile="Booking.aspx.vb" Inherits="Assignment_2.Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Booking</title>
    <link href="/style/Booking.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="booking-container">
        <h1>Book a Package</h1>

        <asp:Label ID="lblMessage" runat="server" />

        <%-- Package Details (pre-filled from DB) --%>
        <section class="package-summary">
            <h2>Package Details</h2>
            <p><strong>Name:</strong> <asp:Label ID="lblName" runat="server" /></p>
            <p><strong>Type:</strong> <asp:Label ID="lblType" runat="server" /></p>
            <p><strong>Location:</strong> <asp:Label ID="lblLocation" runat="server" /></p>
            <p><strong>Price:</strong> $<asp:Label ID="lblPrice" runat="server" /> FJD</p>
            <p><strong>Description:</strong> <asp:Label ID="lblDescription" runat="server" /></p>
        </section>

        <%-- Booking Form --%>
        <section class="booking-form">
            <h2>Your Booking</h2>

            <label>Booking Date</label>
            <asp:TextBox ID="txtBookingDate" runat="server" TextMode="Date" CssClass="input-box" />

            <label>Number of People</label>
            <asp:TextBox ID="txtNumberOfPeople" runat="server" TextMode="Number" CssClass="input-box" Text="1" />

            <label>Special Requests</label>
            <asp:TextBox ID="txtSpecialRequests" runat="server" TextMode="MultiLine" Rows="4" CssClass="input-box" placeholder="Any special requests? (optional)" />

            <asp:Button ID="btnBook" runat="server" Text="Confirm Booking" CssClass="book-btn" />
        </section>
    </section>
</asp:Content>