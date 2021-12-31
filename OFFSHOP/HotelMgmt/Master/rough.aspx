<%@ Page Language="C#" MasterPageFile="~/Master/Outlet.Master" AutoEventWireup="true" CodeBehind="rough.aspx.cs" Inherits="HotelMgmt.Master.rough" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
        }
        .style5
        {
            width: 186px;
        }
        .style6
        {
            width: 95px;
        }
        .style7
        {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class ="style1">
    
    </table>
    <table class="style1">
        <tr>
            <td colspan="4">
                <b>Occational&nbsp; Rate</b></td>
            <td colspan="4">
                <asp:RadioButtonList ID="rdbType" runat="server" AutoPostBack="True" 
                    RepeatDirection="Horizontal" Font-Bold="True" Font-Size="Smaller" 
                   >
                    <asp:ListItem Value="1">FOOD</asp:ListItem>
                    <asp:ListItem Value="2">Drinks</asp:ListItem>
                    <asp:ListItem Value="3">Beverages</asp:ListItem>
                    <asp:ListItem Value="4">Misc.</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <b>Outlet</b>&nbsp;</td>
            <td class="style3" colspan="2">
                <asp:DropDownList ID="ddlOutlet" runat="server" Width="185px">
                </asp:DropDownList>
                            </td>
            <td class="style3" colspan="2">
                <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sale Product&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlSaleProduct0" runat="server" Width="185px">
                </asp:DropDownList>
                </b>
                            </td>
            <td colspan="3">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <b>Initial Date <b>Ini</b></td>
            <td class="style5">
                <asp:TextBox ID="txtdtfrm" runat="server" Width="160px"></asp:TextBox><asp:CalendarExtender ID="CalendarExtender1"
                    runat="server" TargetControlID="txtdtfrm" PopupButtonID="Image1">
                </asp:CalendarExtender>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/calendar.gif" />
                            </td>
            <td colspan="3">
               <b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Final Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtTo" runat="server" Width="160px"></asp:TextBox>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/calendar.gif" />
                </b></td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <b>Initial Time</b></td>
            <td class="style5">
                <asp:TextBox ID="txtTimeFrm" runat="server" Width="160px"></asp:TextBox>
                            </td>
            <td colspan="3">
               <b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Final Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtTimeTo" runat="server" Width="160px"></asp:TextBox>
                            </b></td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <b>Original Rate</b>&nbsp;</td>
            <td class="style5">
                <asp:TextBox ID="txtOctnlrate0" runat="server" Width="160px"></asp:TextBox>
            </td>
            <td colspan="6">
               <b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Occational Rate 
                <asp:TextBox ID="txtOctnlrate" runat="server" Width="160px"></asp:TextBox>
                </b></td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Button ID="btnSave" runat="server" Text="Save" />
                &nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" />
                &nbsp;<asp:Button ID="btnRefresh" runat="server" Text="Refresh" />
                &nbsp;<asp:Button ID="btnDelete" runat="server" Text="Delete" />
                &nbsp;<asp:Button ID="btnExit" runat="server" Text="Exit" />
            </td>
            <td colspan="4">
                <b>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server">
                </asp:ToolkitScriptManager>
                </b></td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
       
        <tr>
            <td colspan="12">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="777px">
                    <RowStyle BackColor="#E3EAEB" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
       
        </table>
    </form>
</asp:Content>
