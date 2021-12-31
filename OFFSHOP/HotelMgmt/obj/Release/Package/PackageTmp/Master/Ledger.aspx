<%@ Page Language="C#" MasterPageFile="~/Master/Outlet.Master" AutoEventWireup="true"
    CodeBehind="Ledger.aspx.cs" Inherits="HotelMgmt.Master.Ledger" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtPhNo"
                            FilterType="numbers">
                        </asp:FilteredTextBoxExtender>
                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="txtLedger"
                            FilterType="Custom,LowercaseLetters,UppercaseLetters" FilterMode="ValidChars"
                            ValidChars=" ">
                        </asp:FilteredTextBoxExtender>
                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="txtOpeningBl"
                            FilterType="numbers">
                        </asp:FilteredTextBoxExtender>
                        <table class="style1">
                            <tr>
                                <td>
                                    <b>Ledger</b>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="#99FF66"></asp:Label>
                                </td>
                                <td align="center">
                                    Remark
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td style="color: #000066">
                                    Ledger Group
                                </td>
                                <td valign="top">
                                    <asp:DropDownList ID="ddlLedgerGroup" runat="server" Width="180px" BackColor="#FAE4E7"
                                        AutoPostBack="True" OnSelectedIndexChanged="ddlLedgerGroup_SelectedIndexChanged"
                                        CssClass="roundBorder">
                                    </asp:DropDownList>
                                </td>
                                <td rowspan="6" valign="top">
                                    <asp:TextBox ID="txtRemarks" runat="server" Height="140px" TextMode="MultiLine" Width="436px"
                                        BackColor="#FAE4E7" Font-Bold="True" Font-Size="Large" ForeColor="#660033" CssClass="roundBorder"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    Ledger Name
                                </td>
                                <td valign="top">
                                    <asp:TextBox ID="txtLedger" runat="server" BackColor="#FAE4E7" Width="180px" CssClass="roundBorder"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    Phone No
                                </td>
                                <td valign="top">
                                    <asp:TextBox ID="txtPhNo" runat="server" Width="180px" BackColor="#FAE4E7" CssClass="roundBorder"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    Address1
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAddress" runat="server" BackColor="#FAE4E7" Width="180px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    Address2
                                </td>
                                <td valign="top">
                                    <asp:TextBox ID="txtAddress2" runat="server" BackColor="#FAE4E7" Width="180px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style3" colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Opening Balance
                                </td>
                                <td class="style3" valign="top">
                                    <asp:TextBox ID="txtOpeningBl" runat="server" Width="180px" BackColor="#FAE4E7" CssClass="roundBorder"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                </td>
                                <td class="style4">
                                </td>
                                <td colspan="2" class="style4">
                                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn" OnClick="btnSave_Click" />
                                    &nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn" OnClick="btnUpdate_Click" />
                                    &nbsp;<asp:Button ID="btnRefresh" runat="server" Text="Refresh" CssClass="btn" OnClick="btnRefresh_Click" />
                                    &nbsp;<asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn" OnClick="btnDelete_Click" />
                                    &nbsp;<asp:Button ID="btnExit" runat="server" Text="Exit" CssClass="btn" OnClick="btnExit_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style2" colspan="4">
                                    <div style="overflow: auto; width: 100%; height: 100px">
                                        <asp:GridView ID="gdvLedger" runat="server" CssClass="grid" CellPadding="4" ForeColor="#333333"
                                            GridLines="None" AutoGenerateColumns="False" DataKeyNames="Ledger_Id" OnRowEditing="gdvLedger_RowEditing">
                                            <RowStyle BackColor="#E3EAEB" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="Ledger Group">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblLedgerGroup" runat="server" Text='<%# Bind("Ledger_Group_Nm") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Ledger Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblLedgerName" runat="server" Text='<%# bind("Ledger_Nm") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="imgEdit" runat="server" CommandName="Edit" Height="20px" ImageUrl="~/Image/edit.jpg"
                                                            Width="20px" OnClick="imgEdit_Click" />
                                                    </ItemTemplate>
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
                                <td colspan="4">
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
