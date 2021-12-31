<%@ Page Language="C#" MasterPageFile="~/Master/Outlet.Master" AutoEventWireup="true" CodeBehind="DueDetails.aspx.cs" Inherits="HotelMgmt.Master.DueDetails" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style12
        {
            width: 100%;
        }
        .style13
        {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <form id="form1" runat="server">
    <table class="style12">
        <tr>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                <table class="style1">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3" align="center">
                &nbsp;</td>
            <td class="style3" align="center">
                <b>Due Details</b></td>
            <td class="style11" align="center">
                <b>Existing Guest</b></td>
            <td class="style9" colspan="2">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
        </tr>
                    <tr>
                        <td class="style5">
                            &nbsp;</td>
                        <td align="center" class="style3">
                            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                            </asp:ToolkitScriptManager>
                        </td>
                        <td align="Left" class="style3">
                            <asp:Label ID="lblError" runat="server" style="font-weight: 700" 
                                ForeColor="#99FF66"></asp:Label>
                        </td>
                        <td align="center" class="style11">
                 <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtDueAmount" FilterType="numbers">
                </asp:FilteredTextBoxExtender>
                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="txtGuestName" FilterType="Custom,LowercaseLetters,UppercaseLetters" FilterMode="ValidChars"  ValidChars=" ">
                </asp:FilteredTextBoxExtender>
                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" TargetControlID="txtAddress" FilterType="Custom,LowercaseLetters,UppercaseLetters" FilterMode="ValidChars"  ValidChars=" ">
                </asp:FilteredTextBoxExtender>
                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" TargetControlID="txtSearchGuest" FilterType="Custom,LowercaseLetters,UppercaseLetters" FilterMode="ValidChars"  ValidChars=" ">
                </asp:FilteredTextBoxExtender>
                            </td>
                        <td class="style9" colspan="2">
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                    </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6" align="right">
                <b>BillNo:</b>&nbsp;</td>
            <td class="style4">
                <asp:TextBox ID="txtBillNo" runat="server" Width="200px" BackColor="#FAE4E7" 
                    ontextchanged="txtBillNo_TextChanged"></asp:TextBox>
            </td>
            <td colspan="3" align="left">
                <asp:TextBox ID="txtSearchGuest" runat="server" Width="180px" 
                    BackColor="#FAE4E7"></asp:TextBox>
                </td>
            <td class="style10">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style7" align="right">
                <b>DueAmount:</b>&nbsp;</td>
            <td class="style4">
                <asp:TextBox ID="txtDueAmount" runat="server" Width="200px" BackColor="#FAE4E7"></asp:TextBox>
            </td>
            <td align="left" colspan="2" rowspan="6" valign="top">
               <asp:ListBox ID="lbExistingGuest" runat="server" Height="206px" Width="181px" 
                    onselectedindexchanged="lbExistingGuest_SelectedIndexChanged" 
                    AutoPostBack="True" BackColor="#FAE4E7">
                </asp:ListBox>
            
            </td>
            <td align="left" colspan="2" rowspan="6" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style13" align="right">
                DueDate:&nbsp;</td>
            <td class="style4">
                <asp:TextBox ID="txtDueDate" runat="server" Width="200px" BackColor="#FAE4E7"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6" align="right">
                <b>GuestName:</b>&nbsp;
                </td>
            <td class="style4">
                <asp:TextBox ID="txtGuestName" runat="server" Width="200px" BackColor="#FAE4E7"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6" align="right">
                <b>Address:</b>&nbsp;</td>
            <td class="style4">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Width="200px" 
                    Height="50px" BackColor="#FAE4E7"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6" align="right">
                <b>ContactNo:</b>&nbsp;</td>
            <td class="style4">
                <asp:TextBox ID="txtContactNo" runat="server" Width="200px" BackColor="#FAE4E7"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6" align="right">
                <b>Remarks:</b>&nbsp;</td>
            <td class="style4">
                <asp:TextBox ID="txtRemarks" runat="server" Width="200px" BackColor="#FAE4E7"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                <asp:Button ID="btnRefresh" runat="server" CssClass="btn" 
                    onclick="btnRefresh_Click" Text="Refresh" Width="100px" />
            </td>
            <td class="style4">
                <asp:Button ID="btnSave" runat="server" Text="Save" Width="100px" 
                    onclick="btnSave_Click" CssClass="btn" />
                <asp:Button ID="btnExit" runat="server" Text="Exit" CssClass="btn" 
                    onclick="btnExit_Click" />
            </td>
            <td class="style11">
                &nbsp;</td>
            <td class="style9" colspan="2">
                &nbsp;</td>
            <td class="style10">
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
