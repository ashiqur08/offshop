<%@ Page Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="DueReceived.aspx.cs" Inherits="HotelMgmt.DueReceived" Title="Untitled Page" %>

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
                
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                <table class="style1">
        <tr>
            <td rowspan="3" valign="top" width="300">
                <table class="style1">
                    <tr>
                        <td class="style3" colspan="4">
                            Due Details</td>
                    </tr>
                    <tr>
                        <td class="style3" colspan="2">
                            Bill No</td>
                        <td colspan="2">
                            <asp:TextBox ID="txtBillNo" runat="server" Width="180px" BackColor="#FAE4E7"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3" colspan="2">
                            Guest Name</td>
                        <td colspan="2">
                            <asp:TextBox ID="txtGuestName" runat="server" Width="180px" BackColor="#FAE4E7"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3" colspan="2">
                            Address</td>
                        <td colspan="2">
                            <asp:TextBox ID="txtAddress" runat="server" Width="180px" BackColor="#FAE4E7"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3" colspan="2">
                            Phone</td>
                        <td colspan="2">
                            <asp:TextBox ID="txtPhone" runat="server" Width="180px" BackColor="#FAE4E7"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3" colspan="2">
                            Bill Date</td>
                        <td colspan="2">
                            <asp:TextBox ID="txtBillDate" runat="server" Width="180px" BackColor="#FAE4E7"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" colspan="2">
                            Bill Amt</td>
                        <td colspan="2">
                            <asp:TextBox ID="txtBillAmount" runat="server" Width="180px" 
                                BackColor="#FAE4E7"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" colspan="2">
                            Due Amt</td>
                        <td colspan="2">
                            <asp:TextBox ID="txtDueAmount" runat="server" Width="180px" BackColor="#FAE4E7"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" colspan="4">
                            Payment Mode</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;Cash</td>
                        <td class="style2">
                            <asp:TextBox ID="txtCash" runat="server" Width="70px" BackColor="#FAE4E7">0</asp:TextBox>
                        </td>
                        <td class="style2">
                            Card</td>
                        <td class="style2">
                            <asp:TextBox ID="txtCheque" runat="server" Width="70px" BackColor="#FAE4E7">0</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" colspan="4">
                            <asp:ImageButton ID="imgbtReset" runat="server" Height="70px" 
                                ImageUrl="~/Image/Reset.png" Width="70px" onclick="imgbtReset_Click" />
                            <asp:ImageButton ID="imgbtDelete" runat="server" Height="70px" 
                                ImageUrl="~/Image/Delete.png" Width="70px" onclick="imgbtDelete_Click" />
                            <asp:ImageButton ID="imgbtUpdate" runat="server" Height="70px" 
                                ImageUrl="~/Image/Update.png" Width="70px" onclick="imgbtUpdate_Click" />
                            <asp:ImageButton ID="imgbtSave" runat="server" Height="70px" 
                                ImageUrl="~/Image/Save.PNG" Width="70px" onclick="imgbtSave_Click" />
                                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtGuestName" FilterType="Custom,LowercaseLetters,UppercaseLetters" FilterMode="ValidChars"  ValidChars=" ">
                            </asp:FilteredTextBoxExtender>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="txtPhone" FilterType="numbers">
                            </asp:FilteredTextBoxExtender>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="txtBillAmount" FilterType="numbers">
                            </asp:FilteredTextBoxExtender>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="txtDueAmount" FilterType="numbers">
                            </asp:FilteredTextBoxExtender>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" TargetControlID="txtCash" FilterType="numbers">
                            </asp:FilteredTextBoxExtender>
                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" TargetControlID="txtCheque" FilterType="numbers">
                            </asp:FilteredTextBoxExtender>
                            
                            
                        </td>
                    </tr>
                    </table>
                    
            </td>
            <td valign="top" width="500" class="style9">
                Due List</td>
        </tr>
        <tr>
            <td valign="top" width="500" class="style8">
            <div style="OVERFLOW: auto; width:100%; height: 150px">
                <asp:GridView ID="gvDuelist" runat="server"  CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="495px" AutoGenerateColumns="False" 
                    DataKeyNames="DueId" onrowediting="gvDuelist_RowEditing" CssClass="grid" 
                    PageSize="3">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:TemplateField HeaderText="BillNo">
                            <ItemTemplate>
                                <asp:Label ID="lblBillNo" runat="server" Text='<%# Eval("BillNo") %>' 
                                    ForeColor="Black"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="GuestName">
                            <ItemTemplate>
                                <asp:Label ID="lblGuestName" runat="server" Text='<%# Eval("GuestName") %>' 
                                    ForeColor="Black"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DueAmount">
                            <ItemTemplate>
                                <asp:Label ID="lblDueAmt" runat="server" Text='<%# Eval("DueAmount") %>' 
                                    ForeColor="Black"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Edit" 
                                    Height="20px" ImageUrl="~/Image/edit.jpg" Width="20px" />
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
            <td valign="top">
                <table class="style1">
                    <tr>
                        <td>
                            <b>Due Search</b></td>
                    </tr>
                    <tr>
                        <td valign="top">
                        <div style="OVERFLOW: auto; width:100%; height: 100px">
                            <asp:GridView ID="gvDueSearch" runat="server" CellPadding="4" 
                                ForeColor="#333333" GridLines="None" Width="490px" 
                                AutoGenerateColumns="False" DataKeyNames="DueDetailsId" 
                                onrowediting="gvDueSearch_RowEditing" CssClass="grid">
                                <RowStyle BackColor="#E3EAEB" />
                                <Columns>
                                    <asp:TemplateField HeaderText="BillNo">
                                        <ItemTemplate>
                                            <asp:Label ID="lblBillNo" runat="server" Text='<%# Eval("BillNo") %>' 
                                                ForeColor="Black"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="GuestName">
                                        <ItemTemplate>
                                            <asp:Label ID="lblGuestName" runat="server" Text='<%# Eval("GuestName") %>' 
                                                ForeColor="Black"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="PaidAmt">
                                        <ItemTemplate>
                                            <asp:Label ID="lblPaidAmt" runat="server" Text='<%# Eval("PaidAmt") %>' 
                                                ForeColor="Black"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" 
                                                ImageUrl="~/Image/edit.jpg" Width="20px" CommandName="Edit" 
                                                onclick="ImageButton2_Click" />
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
                </table>
            </td>
        </tr>
        </table>

                </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
        </form>
</asp:Content>
