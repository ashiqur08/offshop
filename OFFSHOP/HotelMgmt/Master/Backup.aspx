<%@ Page Language="C#" MasterPageFile="~/Master/Outlet.Master" AutoEventWireup="true"
    CodeBehind="Backup.aspx.cs" Inherits="HotelMgmt.Master.Backup" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <b>Backup Database</b>
            </td>
            <td>
                <asp:Label ID="lblError" runat="server" Style="font-weight: 700" ForeColor="#99FF66"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnBackup" runat="server" Text="Database Backup" OnClick="btnBackup_Click"
                    CssClass="btn" ForeColor="Black" />
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
