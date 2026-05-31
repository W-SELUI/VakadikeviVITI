<%@ Page Title="Admin Dashboard" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Admin.aspx.vb" Inherits="Assignment_2.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Admin Dashboard</title>
    <link href="/style/Admin.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="admin-container">
        <h1>Admin Dashboard</h1>
        <p>Welcome, Admin! Use the links below to manage the site.</p>
        <nav class="admin-links">
            <asp:HyperLink ID="lnkUsers" runat="server" NavigateUrl="ManageUsers.aspx" Text="Manage Users" CssClass="admin-link" />
            <asp:HyperLink ID="lnkBookings" runat="server" NavigateUrl="ManageBooking.aspx" Text="Manage Bookings" CssClass="admin-link" />
            <asp:HyperLink ID="lnkFeedback" runat="server" NavigateUrl="ManageFeedback.aspx" Text="Manage Feedback" CssClass="admin-link" />
            <asp:HyperLink ID="lnkContent" runat="server" NavigateUrl="ManageContent.aspx" Text="Manage Content" CssClass="admin-link" />
        </nav>
    </section>
</asp:Content>
