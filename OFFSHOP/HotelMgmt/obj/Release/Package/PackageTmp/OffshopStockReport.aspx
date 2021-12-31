<%@ Page Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="OffshopStockReport.aspx.cs" Inherits="HotelMgmt.WebForm1" Title="Untitled Page" %>
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
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <table class="style1">
                            <tr>
                                <td colspan="3">
                                    <b>OffShop Stock Report</b>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                    </asp:ToolkitScriptManager>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDateFrm"
                                        PopupButtonID="ImageButton1">
                                    </asp:CalendarExtender>
                                    &nbsp;
                                </td>
                                <td>
                                    <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtDateTo"
                                        PopupButtonID="ImageButton2">
                                    </asp:CalendarExtender>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="font-weight: 700">
                                    Date From
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDateFrm" runat="server" CssClass="txtSmall" BackColor="#FAE4E7"></asp:TextBox>
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/calendar.gif"
                                        Width="16px" />
                                </td>
                                <td style="font-weight: 700">
                                    Date To
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDateTo" runat="server" CssClass="txtSmall" BackColor="#FAE4E7"></asp:TextBox>
                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/calendar.gif"
                                        Width="16px" />
                                </td>
                                <td>
                                    <asp:Button ID="btnReport" runat="server" Text="Show Report" OnClick="btnReport_Click"
                                        CssClass="btn" ForeColor="Black" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <div style="overflow: auto; width: 100%; height: 200px">
                                        <asp:GridView ID="gdvSaleReport" runat="server" CellPadding="4" ForeColor="#333333"
                                            GridLines="None" CssClass="grid" AutoGenerateColumns="False">
                                            <RowStyle BackColor="#E3EAEB" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="Product Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblProductName" runat="server" Text='<%# Bind("ProductName") %>' ForeColor="Black"></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Bottle Size">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblSize" runat="server" Text='<%# Bind("SizeOfBottle") %>' ForeColor="Black"></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Opening Qty">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblOpQty" runat="server" Text='<%# Bind("OpQty") %>' ForeColor="Black"></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Receive Qty">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblRcvQty" runat="server" Text='<%# Bind("RcvQty") %>' ForeColor="Black"></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Sale Qty">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblSaleQty" runat="server" Text='<%# Bind("SaleQty") %>' ForeColor="Black"></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Damage Qty">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblDmgQty" runat="server" Text='<%# Bind("DmgQty") %>' ForeColor="Black"></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Closing Qty">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblClsQty" runat="server" Text='<%# Bind("ClsQty") %>' ForeColor="Black"></asp:Label>
                                                    </ItemTemplate>
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                </asp:TemplateField>
                                            </Columns>
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
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
