<%@ Page Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="CreditorsWisePurReport.aspx.cs" Inherits="HotelMgmt.CreditorsWisePurReport" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 35px;
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
                CreditorsWisePur.Report</td>
            <td>
                &nbsp;</td>
            <td>
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
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDateFrm" PopupButtonID="ImageButton1">
                </asp:CalendarExtender>
                &nbsp;</td>
            <td>
                <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtDateTo" PopupButtonID="ImageButton2">
                </asp:CalendarExtender>
                &nbsp;<asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="#99FF66"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: 700" class="style2">
                Date From</td>
            <td class="style2">
                <asp:TextBox ID="txtDateFrm" runat="server" BackColor="#FAE4E7" 
                    CssClass="roundBorder" Height="23px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Image/calendar.gif" />
            </td>
            <td style="font-weight: 700" class="style2">
                Date To</td>
            <td class="style2">
                <asp:TextBox ID="txtDateTo" runat="server" BackColor="#FAE4E7" 
                    CssClass="roundBorder" Height="23px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/Image/calendar.gif" />
            </td>
            <td class="style2">
                <asp:Button ID="btnReport" runat="server" Text="Show Report" 
                    onclick="btnReport_Click" CssClass="btn" />
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
        <tr>
            <td colspan="5">
            <div style="OVERFLOW: auto; width:100%; height: 200px">
                <asp:GridView ID="gdvPurReport" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" CssClass="grid" AutoGenerateColumns="False">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:TemplateField HeaderText="Creditors Name">
                            <ItemTemplate>
                                <asp:Label ID="lblCreditorsName" runat="server" Text='<%# Bind("Ledger_Nm") %>' 
                                    ForeColor="Black" ></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Product Name">
                            <ItemTemplate>
                                <asp:Label ID="lblProductName" runat="server" Text='<%# Bind("ProductName") %>' 
                                    ForeColor="Black" ></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total Bottle">
                            <ItemTemplate>
                                <asp:Label ID="lblTotalBottle" runat="server" Text='<%# Bind("TotalBtl") %>' 
                                    ForeColor="Black" ></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total MRP">
                            <ItemTemplate>
                                <asp:Label ID="lblTotalMrp" runat="server" Text='<%# Bind("TotalMRP") %>' 
                                    ForeColor="Black" ></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total Amount">
                            <ItemTemplate>
                                <asp:Label ID="lblTotalAmount" runat="server" Text='<%# Bind("TotalAmount") %>' 
                                    ForeColor="Black" ></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Left" />
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
    </table>

                </ContentTemplate>
    </asp:UpdatePanel></td>
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
