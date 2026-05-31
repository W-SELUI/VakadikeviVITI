<%@ Page Title="Manage Bookings" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" 
    CodeFile="ManageBooking.aspx.vb" Inherits="Assignment_2.ManageBookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Manage Bookings</title>
    <link href="/style/Admin.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="admin-container">
        <h1>Manage Bookings</h1>

        <asp:Label ID="lblMessage" runat="server" />

        <asp:GridView ID="gvBookings" runat="server" AutoGenerateColumns="False"
            DataKeyNames="BookingID" CssClass="admin-table"
            OnRowCommand="gvBookings_RowCommand">
            <Columns>
                <asp:BoundField DataField="BookingID" HeaderText="ID" />
                <asp:BoundField DataField="Name" HeaderText="User" />
                <asp:BoundField DataField="PackageName" HeaderText="Package" />
                <asp:BoundField DataField="BookingDate" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="NumberOfPeople" HeaderText="People" />
                <asp:BoundField DataField="SpecialRequests" HeaderText="Special Requests" />
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button runat="server"
                            CommandName="Delete"
                            CommandArgument='<%# Eval("BookingID") %>'
                            Text="Delete"
                            CssClass="btn-deactivate"
                            OnClientClick="return confirm('Are you sure you want to delete this booking?');" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </section>
</asp:Content>
