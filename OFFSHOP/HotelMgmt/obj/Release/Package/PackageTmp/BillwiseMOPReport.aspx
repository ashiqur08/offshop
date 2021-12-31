<%@ Page Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="BillwiseMOPReport.aspx.cs"
    Inherits="HotelMgmt.BillwiseMOPReport" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                <td colspan="2">
                                    <b>Billwise Payment Mode Report</b>
                                </td>
                                <td colspan="3">
                                    <asp:Label ID="lblError" runat="server" Style="font-weight: 700" ForeColor="#99FF66"></asp:Label>
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
                                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                    </asp:ToolkitScriptManager>
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
                                        <asp:GridView ID="gdvSaleReport" runat="server" CssClass="grid" AutoGenerateColumns="False"
                                            CellPadding="4" ForeColor="#333333" GridLines="None">
                                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                            <RowStyle BackColor="#E3EAEB" />
                                            <Columns>
                                                <asp:BoundField DataField="BillNo" HeaderText="BillNo">
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle ForeColor="Black" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="BillDate" HeaderText="BillDate">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Gross" HeaderText="Gross" />
                                                <asp:BoundField DataField="Disc" HeaderText="Discount" />
                                                <asp:BoundField DataField="ReceivableAmt" HeaderText="Rcv Amount">
                                                    <HeaderStyle HorizontalAlign="Left" />
                                                    <ItemStyle ForeColor="Black" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Cash" HeaderText="Cash" />
                                                <asp:BoundField DataField="Card" HeaderText="Card" />
                                                <asp:BoundField DataField="Due" HeaderText="Due" />
                                            </Columns>
                                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                            <EditRowStyle BackColor="#7C6F57" />
                                            <AlternatingRowStyle BackColor="White" />
                                        </asp:GridView>
                                    </div>
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
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
