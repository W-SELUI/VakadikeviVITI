<%@ Page Title="Manage Feedback" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" 
    CodeFile="ManageFeedback.aspx.vb" Inherits="Assignment_2.ManageFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Manage Feedback</title>
    <link href="/style/Admin.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="admin-container">
        <h1>Manage Feedback</h1>

        <asp:Label ID="lblMessage" runat="server" ForeColor="Green" />

        <asp:GridView ID="gvFeedback" runat="server" AutoGenerateColumns="False"
            DataKeyNames="FeedbackID" CssClass="admin-table"
            OnRowCommand="gvFeedback_RowCommand">
            <Columns>
                <asp:BoundField DataField="FeedbackID" HeaderText="ID" />
                <asp:BoundField DataField="Name" HeaderText="User" />
                <asp:BoundField DataField="Subject" HeaderText="Subject" />
                <asp:BoundField DataField="Message" HeaderText="Message" />
                <asp:BoundField DataField="SubmittedDate" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy hh:mm tt}" />
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Label runat="server"
                            Text='<%# If(Convert.ToBoolean(Eval("IsRead")), "Read", "Unread") %>'
                            ForeColor='<%# If(Convert.ToBoolean(Eval("IsRead")), Drawing.Color.Gray, Drawing.Color.Green) %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button runat="server"
                            CommandName="MarkRead"
                            CommandArgument='<%# Eval("FeedbackID") %>'
                            Text="Mark as Read"
                            CssClass="btn-activate"
                            Visible='<%# Not Convert.ToBoolean(Eval("IsRead")) %>' />
                        <asp:Button runat="server"
                            CommandName="Delete"
                            CommandArgument='<%# Eval("FeedbackID") %>'
                            Text="Delete"
                            CssClass="btn-deactivate"
                            OnClientClick="return confirm('Are you sure you want to delete this feedback?');" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </section>
</asp:Content>
