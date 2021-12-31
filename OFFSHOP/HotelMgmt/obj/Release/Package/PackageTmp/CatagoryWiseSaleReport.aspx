<%@ Page Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="CatagoryWiseSaleReport.aspx.cs" Inherits="HotelMgmt.CatagoryWiseSaleReport" Title="Untitled Page" %>
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
       <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
    <table class="style1">
    <tr>
            <td>
                &nbsp;</td>
            <td colspan="4">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <b>Date From :</b></td>
            <td>
                <asp:TextBox ID="txtDateFrm" runat="server" Width="170px"></asp:TextBox>
                <asp:ImageButton
                    ID="ImageButton1" runat="server" ImageUrl="~/Image/calendar.gif" />
                                </td>
            <td colspan="3" rowspan="12" valign="top">
            <div style="OVERFLOW: auto; width:100%; height: 300px">
                <asp:GridView ID="gdvReport" runat="server" CssClass="grid" Width="450px" 
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:TemplateField HeaderText="Product Name">
                            <ItemTemplate>
                                <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Bottle Size">
                            <ItemTemplate>
                                <asp:Label ID="lblBtlSize" runat="server" Text='<%# Eval("SizeOfBottle") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity">
                            <ItemTemplate>
                                <asp:Label ID="lblQuantity" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Amount">
                            <ItemTemplate>
                                <asp:Label ID="lblAmount" runat="server" Text='<%# Eval("Amount") %>'></asp:Label>
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
            <td align="right">
                <b>Date To :</b></td>
            <td>
                <asp:TextBox ID="txtDateTo" runat="server" Width="170px"></asp:TextBox>
                <asp:ImageButton
                    ID="ImageButton2" runat="server" ImageUrl="~/Image/calendar.gif" />
            </td>
        </tr>
        <tr>
            <td align="right">
                <b>Catagory :</b></td>
            <td>
                <asp:DropDownList ID="ddlCatagory" runat="server" Width="170px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right">
                <b>SubCatagory :</b></td>
            <td>
                <asp:DropDownList ID="ddlSubCatagory" runat="server" Width="170px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right">
                <b>Product :</b></td>
            <td>
                <asp:DropDownList ID="ddlProduct" runat="server" Width="170px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnShow" runat="server" Text="Show" CssClass="btn" 
                    onclick="btnShow_Click"/>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
              <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDateFrm" PopupButtonID="ImageButton1">
                </asp:CalendarExtender>  &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtDateTo" PopupButtonID="ImageButton2">
                </asp:CalendarExtender></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
         <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
         <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
                 <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
        </tr>
    </table>
    </form>
</asp:Content>
