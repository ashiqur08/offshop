<%@ Page Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="MeasureWiseReport.aspx.cs"
    Inherits="HotelMgmt.MeasureWiseReport" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 20px;
        }
        .style3
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td colspan="3">
                <h4>
                    Measure Wise Sale Report</h4>
            </td>
            <td colspan="2">
               <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
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
                <b>Catagory:</b>
            </td>
            <td>
                <asp:DropDownList ID="ddlCatagory" runat="server" Width="180px" AutoPostBack="True"
                    OnSelectedIndexChanged="ddlCatagory_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                <b>SubCatagory:</b>
            </td>
            <td>
                <asp:DropDownList ID="ddlSubCatagory" runat="server" Width="180px" AutoPostBack="True"
                    OnSelectedIndexChanged="ddlSubCatagory_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style3">
                <b>Product Name:</b>
            </td>
            <td class="style3">
                <asp:DropDownList ID="ddlProductName" runat="server" Width="180px" AutoPostBack="True"
                    OnSelectedIndexChanged="ddlProductName_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="style3">
                <b>Bottle Size:</b>
            </td>
            <td class="style3">
                <asp:DropDownList ID="ddlBtlSize" runat="server" Width="180px" AutoPostBack="True"
                    OnSelectedIndexChanged="ddlBtlSize_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style3">
                <b>Date From:</b>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtdateFrm" runat="server" Width="180px"></asp:TextBox>
            &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Image/calendar.gif" />
            </td>
            <td class="style3">
                <b>Date To:</b>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtDateTo" runat="server" Width="180px"></asp:TextBox>
            &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/Image/calendar.gif" />
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
                <asp:Button ID="btnShow" runat="server" Text="Show" CssClass="btn" OnClick="btnShow_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtdateFrm" PopupButtonID="ImageButton1">
                </asp:CalendarExtender>
                <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtDateTo" PopupButtonID="ImageButton2">
                </asp:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="5">
            <div style="overflow: auto; width: 100%; height: 120px">
                <asp:GridView ID="gdvReport" runat="server" CssClass="grid" CellPadding="4" ForeColor="#333333"
                    GridLines="None" Width="800px" AutoGenerateColumns="False">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:TemplateField HeaderText="SubCatagory">
                            <ItemTemplate>
                                <asp:Label ID="lblSubCatagory" runat="server" Text='<%# Bind("SubCategoryName") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Size">
                            <ItemTemplate>
                                <asp:Label ID="lblSize" runat="server" Text='<%# Bind("SizeOfBottle") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:Label ID="lblQty" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
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
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                Total Qty:
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                Total Amount Without Disc. :
                <asp:Label ID="lblTotalAmount" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
