<%@ Page Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="Brand_Qty_wise_saleReport.aspx.cs" Inherits="HotelMgmt.Brand_Qty_wise_saleReport" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td colspan="3">
                <b>Brand Qty Wise Sale Report&nbsp; </b> <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtDtTo" PopupButtonID="ImageButton2">
                </asp:CalendarExtender></td>
            <td colspan="2">
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDtFrm" PopupButtonID="ImageButton1">
                </asp:CalendarExtender></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Date From:</td>
            <td>
                <asp:TextBox ID="txtDtFrm" runat="server"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Image/calendar.gif" />
            </td>
            <td>
                Date To:</td>
            <td>
                <asp:TextBox ID="txtDtTo" runat="server"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/Image/calendar.gif" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                </td>
            <td class="style2">
                </td>
            <td class="style2">
                 
                &nbsp;&nbsp;</td>
            <td class="style2">
                </td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Text="Show" CssClass="btn" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
            <div style="overflow: auto; width: 100%; height: 180px">
                <asp:GridView ID="gdvReport" runat="server" CssClass="grid" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" 
                    Width="780px">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:TemplateField HeaderText="SubCatagory">
                            <ItemTemplate>
                                <asp:Label ID="lblSubCat" runat="server" Text='<%# Bind("SubCategoryName") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Product NAme">
                            <ItemTemplate>
                                <asp:Label ID="lblProductName" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Qty In Btl">
                            <ItemTemplate>
                                <asp:Label ID="lblQty" runat="server" Text='<%# Bind("Qty_In_Bottle") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Size Of Btl">
                            <ItemTemplate>
                                <asp:Label ID="lblSize" runat="server" Text='<%# Bind("SizeOfBottle") %>'></asp:Label>
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
            <td colspan="5">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager></td>
        </tr>
    </table>
    </form>
</asp:Content>
