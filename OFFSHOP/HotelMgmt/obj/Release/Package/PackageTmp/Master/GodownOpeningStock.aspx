<%@ Page Language="C#" MasterPageFile="~/Master/Outlet.Master" AutoEventWireup="true" CodeBehind="GodownOpeningStock.aspx.cs" Inherits="HotelMgmt.Master.GodownOpeningStock" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {        margin-left: 120px;
    }
        .style3
        {
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
            <td colspan="3">
                <b>Godown Opening Stock</b></td>
            <td colspan="3">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
                    <tr>
                        <td colspan="3">
                 <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtQty" FilterType="numbers">
                </asp:FilteredTextBoxExtender>
                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="txtPurchaseRate" FilterType="numbers">
                </asp:FilteredTextBoxExtender>
                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="txtMrp" FilterType="numbers">
                </asp:FilteredTextBoxExtender>
                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="txtTotalAmount" FilterType="numbers">
                </asp:FilteredTextBoxExtender>
                  </td>
                        <td colspan="3">
                            <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="#99FF66"></asp:Label></td>
                    </tr>
         <tr>
            <td colspan="2">
                &nbsp;</td>
            <td align="right">
                <b style="font-size: 18px; color: #FFFFCC; font-weight: bold;">Barcode</b></td>
            <td colspan="2">
                <asp:TextBox ID="txtBarcode" runat="server" CssClass="roundBorder" 
                    Width="180px" Height="25px" BackColor="#CCFFFF" Font-Bold="True" 
                    Font-Size="Larger" ForeColor="Blue"></asp:TextBox>
             </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" align="right">
                <b>Category</b></td>
            <td align="right" class="style3">
                &nbsp;</td>
            <td class="style2">
                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="roundBorder" 
                    Width="180px" Height="25px" BackColor="#FAE4E7" AutoPostBack="True" 
                    onselectedindexchanged="ddlCategory_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td style="font-weight: 700" align="right">
                <b>Qty</b></td>
            <td align="right" style="font-weight: 700">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtQty" runat="server" CssClass="roundBorder" Width="180px" 
                    Height="22px" BackColor="#FAE4E7" ontextchanged="txtQty_TextChanged">0</asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" align="right">
                <b>SubCatagory</b></td>
            <td align="right" class="style3">
                &nbsp;</td>
            <td class="style2" >
                                <asp:DropDownList ID="ddlSubCategory" runat="server" CssClass="roundBorder" 
                    Width="180px" Height="25px" BackColor="#FAE4E7" AutoPostBack="True" 
                    
    onselectedindexchanged="ddlSubCategory_SelectedIndexChanged">
                </asp:DropDownList>
            
            </td>
            <td align="right">
                <b>Purchase Rate</b></td>
            <td align="right">
                &nbsp;</td>
            <td>
               <asp:TextBox ID="txtPurchaseRate" runat="server" CssClass="roundBorder" Width="180px" 
                    Height="22px" BackColor="#FAE4E7">0</asp:TextBox> &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" align="right">
                <b>ProductName</b></td>
            <td align="right" class="style3">
                &nbsp;</td>
            <td class="style2" >
                                <asp:DropDownList ID="ddlProduct" runat="server" CssClass="roundBorder" 
                    Width="180px" Height="25px" BackColor="#FAE4E7" 
                    onselectedindexchanged="ddlProduct_SelectedIndexChanged" 
                    AutoPostBack="True">
                </asp:DropDownList>
            </td>
            <td align="right">
                <b>MRP</b></td>
            <td align="right">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtMrp" runat="server" CssClass="roundBorder" Width="180px" 
                    Height="22px" BackColor="#FAE4E7" AutoPostBack="True" 
                    ontextchanged="txtMrp_TextChanged">0</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                <b>SizeOfBottle</b></td>
            <td align="right">
                &nbsp;</td>
            <td>
                                <asp:DropDownList ID="ddlSizeOfBottle" runat="server" CssClass="roundBorder" 
                    Width="180px" Height="25px" BackColor="#FAE4E7" AutoPostBack="True" 
                    
    onselectedindexchanged="ddlSizeOfBottle_SelectedIndexChanged">
                </asp:DropDownList>
            
            </td>
            <td align="right">
                <b>Total Amount</b></td>
            <td align="right">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtTotalAmount" runat="server" Width="180px" CssClass="roundBorder" 
                    Height="22px" BackColor="#FAE4E7" ReadOnly="True">0</asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td class="style2" colspan="4" align="center">
              <asp:Button ID="butnSave" runat="server" CssClass="btn" Text="Save" 
                    onclick="butnSave_Click" />
                &nbsp;<asp:Button ID="btnUpdae" runat="server" CssClass="btn" Text="Update" 
                    onclick="btnUpdae_Click" />
                &nbsp;<asp:Button ID="btnRefresh" runat="server" CssClass="btn" Text="Refresh" 
                    oncommand="btnRefresh_Command" />
                &nbsp;<asp:Button ID="btnDelete" runat="server" CssClass="btn" Text="Delete" 
                    onclick="btnDelete_Click" />
                &nbsp;<asp:Button ID="btnExit" runat="server" CssClass="btn" Text="Exit" 
                    onclick="btnExit_Click" />
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="6">
             <div style="OVERFLOW: auto; width:100%; height: 120px">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                     CellPadding="4" CssClass="grid" DataKeyNames="GodownStockId" 
                     ForeColor="#333333" GridLines="None" onrowediting="GridView1_RowEditing" 
                     onselectedindexchanged="GridView1_SelectedIndexChanged">
                     <RowStyle BackColor="#E3EAEB" />
                     <Columns>
                         <asp:TemplateField HeaderText="Product Name">
                             <ItemTemplate>
                                 <asp:Label ID="lblProductName" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                             </ItemTemplate>
                             <HeaderStyle HorizontalAlign="Left" />
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Size">
                             <ItemTemplate>
                                 <asp:Label ID="lblSize" runat="server" Text='<%# Bind("SizeOfBottle") %>'></asp:Label>
                             </ItemTemplate>
                             <HeaderStyle HorizontalAlign="Left" />
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="Qty">
                             <ItemTemplate>
                                 <asp:Label ID="lblQty" runat="server" Text='<%# Bind("Qty") %>'></asp:Label>
                             </ItemTemplate>
                             <HeaderStyle HorizontalAlign="Left" />
                         </asp:TemplateField>
                         <asp:TemplateField>
                             <ItemTemplate>
                                 <asp:ImageButton ID="imgEdit" runat="server" CommandName="Edit" Height="20px" 
                                     ImageUrl="~/Image/edit.jpg" Width="20px" onclick="imgEdit_Click" />
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
                </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
    
    </form>
</asp:Content>
