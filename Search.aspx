<%@ Page Title="Search Results" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Assignment_2.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Search.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main class="search-page">
        <h2 class="search-title">Results for: <asp:Label ID="lblQuery" runat="server" CssClass="search-query" /></h2>

        <asp:Repeater ID="rptResults" runat="server">
            <ItemTemplate>
                <article class="search-result-card">
                    <h3><%# Eval("Name") %></h3>
                    <p><%# Eval("Description") %></p>
                </article>
            </ItemTemplate>
        </asp:Repeater>

        <asp:Label ID="lblNoResults" runat="server" CssClass="no-results" Visible="false"
            Text="No results found. Try a different search." />
    </main>

</asp:Content>
