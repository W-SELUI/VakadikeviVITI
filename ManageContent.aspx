<%@ Page Title="Manage Content" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" 
    CodeFile="ManageContent.aspx.vb" Inherits="Assignment_2.ManageContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Manage Content</title>
    <link href="/style/Admin.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="admin-container">
        <h1>Manage Content</h1>

        <asp:Label ID="lblMessage" runat="server" />

        <%-- Add / Edit Form --%>
        <section class="content-form">
            <h2 id="formTitle" runat="server">Add New Package</h2>

            <asp:HiddenField ID="hdnPackageID" runat="server" Value="0" />

            <label>Name</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="input-box" placeholder="Package name" />

            <label>Type</label>
            <asp:TextBox ID="txtType" runat="server" CssClass="input-box" placeholder="e.g. Restaurant, Activity, Transport" />

            <label>Price (FJD)</label>
            <asp:TextBox ID="txtPrice" runat="server" CssClass="input-box" TextMode="Number" placeholder="e.g. 1200" />

            <label>Location</label>
            <asp:TextBox ID="txtLocation" runat="server" CssClass="input-box" placeholder="e.g. Suva, Nadi, Fiji" />

            <label>Description</label>
            <asp:TextBox ID="txtDescription" runat="server" CssClass="input-box" TextMode="MultiLine" Rows="4" placeholder="Package description" />

            <section class="form-buttons">
                <asp:Button ID="btnSave" runat="server" Text="Save Package" CssClass="btn-activate" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn-deactivate" CausesValidation="False" />
            </section>
        </section>

        <%-- Packages Table --%>
        <asp:GridView ID="gvPackages" runat="server" AutoGenerateColumns="False"
            DataKeyNames="PackageID" CssClass="admin-table"
            OnRowCommand="gvPackages_RowCommand">
            <Columns>
                <asp:BoundField DataField="PackageID" HeaderText="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Type" HeaderText="Type" />
                <asp:BoundField DataField="Price" HeaderText="Price (FJD)" DataFormatString="${0}" />
                <asp:BoundField DataField="Location" HeaderText="Location" />
                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                        <asp:Button runat="server"
                            CommandName="EditPackage"
                            CommandArgument='<%# Eval("PackageID") %>'
                            Text="Edit"
                            CssClass="btn-activate" />
                        <asp:Button runat="server"
                            CommandName="DeletePackage"
                            CommandArgument='<%# Eval("PackageID") %>'
                            Text="Delete"
                            CssClass="btn-deactivate"
                            OnClientClick="return confirm('Are you sure you want to delete this package?');" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </section>
</asp:Content>
