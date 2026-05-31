<%@ Page Title="Feedback" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" 
    CodeFile="Feedback.aspx.vb" Inherits="Assignment_2.Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="/style/Feedback.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="feedback-container">
        <h2>Send Us Your Feedback</h2>

        <asp:Label ID="lblMessage" runat="server" ForeColor="Green" />

        <asp:TextBox ID="txtSubject" runat="server" CssClass="input-box" placeholder="Enter subject" />
        <asp:TextBox ID="txtMessage" runat="server" CssClass="input-box" TextMode="MultiLine" Rows="5" placeholder="Enter your message" />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit Feedback" CssClass="submit-btn" />
    </section>
</asp:Content>
