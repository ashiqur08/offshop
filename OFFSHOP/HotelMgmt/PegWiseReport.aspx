<%@ Page Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="PegWiseReport.aspx.cs" Inherits="HotelMgmt.PegWiseReport" Title="Untitled Page" %>
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
                <b>Peg Wise Report</b></td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                                </td>
            <td colspan="2">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                Date From:</td>
            <td>
                <asp:TextBox ID="txtdateFrm" runat="server"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Image/calendar.gif" />
            </td>
            <td>
                Date To:</td>
            <td>
                <asp:TextBox ID="txtDateTo" runat="server"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/Image/calendar.gif" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <b>Bottle Size:</b></td>
            <td>
                <asp:DropDownList ID="ddlSizeOfBottle" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
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
                 <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtdateFrm" PopupButtonID="ImageButton1">
                </asp:CalendarExtender>
                <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtDateTo" PopupButtonID="ImageButton2">
                </asp:CalendarExtender></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
            <div style="overflow: auto; width: 100%; height: 180px">
                <asp:GridView ID="gdvReport" runat="server" CssClass="grid" 
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="780px">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:TemplateField HeaderText="SubCatagoryName">
                            <ItemTemplate>
                                <asp:Label ID="lblSubCat" runat="server" Text='<%# Bind("SubCatagoryName") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Peg">
                            <ItemTemplate>
                                <asp:Label ID="lblPeg" runat="server" Text='<%# Bind("Peg") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                       
                        <asp:TemplateField HeaderText="Amount">
                            <ItemTemplate>
                                <asp:Label ID="lblAmount" runat="server" Text='<%# Bind("Amount") %>'></asp:Label>
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
