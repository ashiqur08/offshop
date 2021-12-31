<%@ Page Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="Measure_AllBrand_Wise_SaleReport.aspx.cs" Inherits="HotelMgmt.Measure_AllBrand_Wise_SaleReport" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td colspan="2">
                <b>Measure_AllBrand_Wise_SaleReport</b></td>
            <td colspan="2">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="right">
                Date From:</td>
            <td>
                <asp:TextBox ID="txtDtFrm" runat="server"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/calendar.gif" />
            </td>
            <td align="right">
                Date To:</td>
            <td>
                <asp:TextBox ID="txtDtTo" runat="server"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/calendar.gif" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                 <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDtFrm" PopupButtonID="ImageButton1">
                </asp:CalendarExtender>
                 <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtDtTo" PopupButtonID="ImageButton2">
                </asp:CalendarExtender>
                 <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td align="right">
                Size Of Bottle:</td>
            <td>
                <asp:DropDownList ID="ddlSize" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Show" CssClass="btn" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="5">
            <div style="overflow: auto; width: 100%; height: 180px">
                <asp:GridView ID="gdvReport" runat="server" CssClass="grid" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#E3EAEB" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
    </form>
</asp:Content>
