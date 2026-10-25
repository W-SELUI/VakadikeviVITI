<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="BookingCard.ascx.vb" Inherits="Assignment_2.BookingCard" %>
<%-- Booking box shown beside the text on detail pages.
     Usage on a page:  <uc:BookingCard ID="BookingCard1" runat="server" PackageIDs="3" />
     (several deals:   PackageIDs="8,9")
     Name, location and price come straight from the Packages table,
     so changes made in Manage Content show up here automatically. --%>
<aside class="side-card">
    <p class="side-card-label"><%: Heading %></p>

    <asp:Repeater ID="rptPackages" runat="server">
        <ItemTemplate>
            <div class="side-card-item">
                <h3><%# Eval("Name") %></h3>
                <p class="side-card-meta"><%# Eval("Location") %></p>
                <p class="side-card-price"><span>FJD</span> $<%# Eval("Price", "{0:0.##}") %></p>
                <a class="side-card-btn" href='Booking.aspx?PackageID=<%# Eval("PackageID") %>'>Book Now</a>
            </div>
        </ItemTemplate>
    </asp:Repeater>

    <p class="side-card-note">You'll be asked to log in before booking.</p>
</aside>
