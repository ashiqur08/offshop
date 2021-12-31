<%@ Page Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="DateWiseDueReport.aspx.cs" Inherits="HotelMgmt.DateWiseDueReport" Title="Untitled Page" %>
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
            <td style="font-weight: 700">
                DateWiseDueReport</td>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtFromdate" PopupButtonID="ImageButton1">
                </asp:CalendarExtender>
                &nbsp;</td>
            <td class="style2">
                <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtToDate" PopupButtonID="ImageButton2">
                </asp:CalendarExtender>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: 700">
                From Date</td>
            <td>
                <asp:TextBox ID="txtFromdate" runat="server" CssClass="txtSmall" 
                    BackColor="#FAE4E7"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Image/calendar.gif" />
            </td>
            <td class="style2">
                To Date</td>
            <td>
                <asp:TextBox ID="txtToDate" runat="server" CssClass="txtSmall" 
                    BackColor="#FAE4E7"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/Image/calendar.gif" />
            </td>
            <td>
                <asp:Button ID="btnReport" runat="server" Text="Show Report" onclick="btnReport_Click" CssClass="btn"/>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblError" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
            <div style="OVERFLOW: auto; width:100%; height: 170px">
                <asp:GridView ID="gdvDueReport" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" CssClass="grid" AutoGenerateColumns="False">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:TemplateField HeaderText="BillNo">
                            <ItemTemplate>
                                <asp:Label ID="lblBillNo" runat="server" Text='<%# Bind("BillNo") %>' 
                                    ForeColor="Black"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="GuestName">
                            <ItemTemplate>
                                <asp:Label ID="lblGuestName" runat="server" Text='<%# Bind("GuestName") %>' 
                                    ForeColor="Black"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DueAmount">
                            <ItemTemplate>
                                <asp:Label ID="lblDueAmount" runat="server" Text='<%# Bind("DueAmount") %>' 
                                    ForeColor="Black"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DueDate">
                            <ItemTemplate>
                                <asp:Label ID="lblDueDate" runat="server" Text='<%# Bind("DueDate") %>' 
                                    ForeColor="Black"></asp:Label>
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
            <td class="style2" style="font-weight: 700">
                Total :                 <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="font-weight: 700">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
                </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>
