<%@ Page Title="Manage Users" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" 
    CodeFile="ManageUsers.aspx.vb" Inherits="Assignment_2.ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Manage Users</title>
    <link href="/style/Admin.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="admin-container">
        <h1>Manage Users</h1>

        <asp:Label ID="lblMessage" runat="server" ForeColor="Green" />

        <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="False"
            DataKeyNames="UserID" CssClass="admin-table"
            OnRowCommand="gvUsers_RowCommand">
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Username" HeaderText="Username" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Role" HeaderText="Role" />
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Label runat="server" 
                            Text='<%# If(Convert.ToBoolean(Eval("IsActive")), "Active", "Inactive") %>'
                            ForeColor='<%# If(Convert.ToBoolean(Eval("IsActive")), Drawing.Color.Green, Drawing.Color.Red) %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button runat="server" 
                            CommandName='<%# If(Convert.ToBoolean(Eval("IsActive")), "Deactivate", "Activate") %>'
                            CommandArgument='<%# Eval("UserID") %>'
                            Text='<%# If(Convert.ToBoolean(Eval("IsActive")), "Deactivate", "Activate") %>'
                            CssClass='<%# If(Convert.ToBoolean(Eval("IsActive")), "btn-deactivate", "btn-activate") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </section>
</asp:Content>
