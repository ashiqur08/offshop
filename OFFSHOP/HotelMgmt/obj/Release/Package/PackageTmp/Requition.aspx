<%@ Page Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="Requition.aspx.cs" Inherits="HotelMgmt.Requition" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 103%;
        }
        .style2
        {
            height: 20px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <b>Requisition</b></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td valign="top">
                <asp:Panel ID="Panel1" runat="server">
                    <table class="style1">
                        <tr>
                            <td align="right">
                                <b>Name:</b></td>
                            <td >
                                <asp:TextBox ID="txtProductName" runat="server" Width="100px"></asp:TextBox>
                                </td>
                            <td>
                                <b>Barcode</b></td>
                            <td>
                                <asp:TextBox ID="txtBarcode" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td rowspan="2">
                                <asp:Button ID="btnSave" runat="server" Font-Bold="True" 
                                    Font-Names="Wingdings 3" Font-Size="XX-Large" Height="50px" 
                                    onclick="btnSave_Click" Text="I" Width="35px" BackColor="#33CCFF" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>BtlSize:</b></td>
                            <td align="right">
                                <asp:TextBox ID="txtBtlSize" runat="server" Width="100px"></asp:TextBox>
                            </td>
                            <td style="margin-left: 40px">
                                <b>Issued:</b></td>
                            <td align="right">
                                <b>
                                <asp:TextBox ID="txtIssued" runat="server" Width="100px"></asp:TextBox>
                                </b></td>
                        </tr>
                        <tr>
                            <td align="left" colspan="5" valign="top">
                                
                                <div style="OVERFLOW: auto; width:95%; height: 120px">
                                    <asp:GridView ID="gdvProduct" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" CssClass="grid" DataKeyNames="Offshop_GodownStockId" 
                                        ForeColor="#333333" GridLines="None" onrowediting="gdvProduct_RowEditing" 
                                        Width="400px">
                                        <RowStyle BackColor="#E3EAEB" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Product Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblPrductNm" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Barcode">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblBarcode" runat="server" Text='<%# Bind("Barcode") %>'></asp:Label>
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
                                                    <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Edit" 
                                                        Height="20px" ImageUrl="~/Image/del.jpg" Width="20px" />
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
                        <td colspan="5">
                            <div style="OVERFLOW: auto; width:95%; height: 100px">
                                <asp:GridView ID="gdvDateWise" runat="server" CellPadding="4" CssClass="grid" 
                                    ForeColor="#333333" GridLines="None" Width="400px" 
                                    AutoGenerateColumns="False" >
                                    <RowStyle BackColor="#E3EAEB" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDate" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                                        </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Quantity">
                                        <ItemTemplate>
                                            <asp:Label ID="lblQty" runat="server" Text='<%# Bind("TotalRequisition") %>'></asp:Label>
                                        </ItemTemplate>
                                            <HeaderStyle HorizontalAlign="Left" />
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" 
                                                        ImageUrl="~/Image/edit.jpg" Width="20px" 
                                                    onclick="ImageButton1_Click" />
                                            </asp:ImageButton>
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
                            <td class="style2">
                                </td>
                            <td class="style2">
                                </td>
                            <td class="style2">
                                </td>
                            <td class="style2">
                                </td>
                            <td class="style2">
                                </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td valign = "top">
                <asp:Panel ID="Panel2" runat="server">
                    <table class="style1">
                        <tr>
                            <td valign="top">
                                <div style="OVERFLOW: auto; width:100%; height: 250px">
                                    <asp:GridView ID="gdvStockDisp" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" CssClass="grid" ForeColor="#333333" GridLines="None" 
                                        Width="350px" DataKeyNames="ProductId" 
                                        onrowediting="gdvStockDisp_RowEditing1" 
                                        onselectedindexchanging="gdvStockDisp_SelectedIndexChanging">
                                        <RowStyle BackColor="#E3EAEB" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Product Name">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblProduct" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Barcode">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblBarcode1" runat="server" Text='<%# Bind("BarCode") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="SizeOfBtl">
                                            <ItemTemplate>
                                                <asp:Label ID="lblSizeOfBtl" runat="server" Text='<%# Bind("SizeOfBottle") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Qty">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblQty1" runat="server" Text='<%# Bind("LastQty") %>'></asp:Label>
                                                </ItemTemplate>
                                                <HeaderStyle HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="imgEdit" runat="server" Height="25px" 
                                                        ImageUrl="~/Image/edit.jpg" Width="20px" CommandName="Edit" />
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
                            <td>
                                &nbsp;&nbsp;&nbsp;<asp:Button ID="btnRefresh" runat="server" Text="Refresh" CssClass="btn" 
                                    onclick="btnRefresh_Click"/>
                                &nbsp;<asp:Button ID="btnExit" runat="server" Text="Exit" CssClass="btn" 
                                    onclick="btnExit_Click"/>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
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
