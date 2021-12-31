<%@ Page Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="ExiseReport.aspx.cs" Inherits="HotelMgmt.ExiseReport" Title="Untitled Page" %>
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
                <b>Exise Report</b></td>
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
            <div style="OVERFLOW: auto; width:100%; height: 280px">
                <asp:GridView ID="gdvExise" runat="server" CssClass="grid" 
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" >
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:TemplateField HeaderText="SlNo">
                            <ItemTemplate>
                                <asp:Label ID="lblSlNo" runat="server" Text='<%# Bind("SlNo") %>' 
                                    Font-Bold="True" Font-Size="Smaller"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="KindOfFl">
                            <ItemTemplate>
                                <asp:Label ID="lblFl" runat="server" Text='<%# Bind("Fl") %>' Font-Bold="True" 
                                    Font-Size="Smaller"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Current Mnth Sale">
                            <ItemTemplate>
                                <asp:Label ID="lblSaleInMnthOfCurrentYear" runat="server" 
                                    Text='<%# Bind("SaleInMnthOfCurrentYear") %>' Font-Bold="True" 
                                    Font-Size="Smaller"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PreviousYear">
                            <ItemTemplate>
                                <asp:Label ID="lblSaleInMnthOfPrevYear" runat="server" 
                                    Text='<%# Bind("SaleInMnthOfPrevYea") %>' Font-Bold="True" 
                                    Font-Size="Smaller"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Growth Rate">
                            <ItemTemplate>
                                <asp:Label ID="lblGrowthRate" runat="server" Text='<%# Bind("GrowthRate") %>' 
                                    Font-Bold="True" Font-Size="Smaller"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="UpToMonthOfCurntYear">
                            <ItemTemplate>
                                <asp:Label ID="lblSaleUpToMnthOfCurrentYear" runat="server" 
                                    Text='<%# Bind("SaleUpToMnthOfCurrentYear") %>' Font-Bold="True" 
                                    Font-Size="Smaller"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="SaleUpto MonthOfPreviousYear">
                            <ItemTemplate>
                                <asp:Label ID="lblSaleUpToMnthOfCurrentYear" runat="server" 
                                    Text='<%# Bind("SaleUpToMnthOfCurrentYear") %>' Font-Bold="True" 
                                    Font-Size="Smaller"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Growth Rate">
                            <ItemTemplate>
                                <asp:Label ID="lblGrowthRate0" runat="server" Text='<%# Bind("GrowthRate1") %>' 
                                    Font-Bold="True" Font-Size="Smaller"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Center" />
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
