<%@ Page Language="C#" MasterPageFile="~/Master/Outlet.Master" AutoEventWireup="true" CodeBehind="Creditor.aspx.cs" Inherits="HotelMgmt.Master.Creditor" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
        .style7
        {
            font-weight: bold;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    
    <form id="form1" runat="server">
    <table class="style6">
        <tr>
            <td>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                <table class="style1">
        <tr>
            <td class="style7">
                Creditor Master</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td colspan="2" align="center">
                                <b>Creditor&#39;s Address</b></td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style7" align="right">
                <b>Creditor Name</b></td>
            <td class="style2">
                &nbsp;</td>
                            <td class="style5">
                                <asp:TextBox ID="TextBox1" runat="server" Width="180px" BackColor="#FAE4E7" CssClass="roundBorder"></asp:TextBox>
                            </td>
                            <td colspan="2" align="left" rowspan="4" valign="top">
                                <table class="style1">
                    <tr>
                        <td valign="top">
                            <asp:TextBox ID="TextBox2" runat="server" Height="90px" TextMode="MultiLine" 
                                Width="325px" BackColor="#FAE4E7" CssClass="roundBorder"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                                </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td class="style7" align="right">
                                <b>PhoneNo</b></td>
                            <td class="style2">
                                &nbsp;</td>
            <td class="style5">
                <asp:TextBox ID="TextBox4" runat="server" Width="180px" BackColor="#FAE4E7" CssClass="roundBorder"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style7" align="right">
                <b>Fax</b></td>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                <asp:TextBox ID="TextBox5" runat="server" Width="180px" BackColor="#FAE4E7" CssClass="roundBorder"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style7" align="right">
                <b>Email Id</b></td>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                <asp:TextBox ID="TextBox6" runat="server" Width="180px" BackColor="#FAE4E7" CssClass="roundBorder"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style5" colspan="3">
                <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn" />
                &nbsp;<asp:Button ID="Button2" runat="server" Text="Button" CssClass="btn" />
                &nbsp;<asp:Button ID="Button3" runat="server" Text="Button" CssClass="btn" />
                &nbsp;<asp:Button ID="Button4" runat="server" Text="Button" CssClass="btn" />
                &nbsp;<asp:Button ID="Button5" runat="server" Text="Button" CssClass="btn"/>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="6">
                <table class="style6">
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" CssClass="grid" 
                                GridLines="None">
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
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
                </ContentTemplate>
                </asp:UpdatePanel>
                </td>
        </tr>
    </table>
    </form>
</asp:Content>
