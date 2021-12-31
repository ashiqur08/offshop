<%@ Page Language="C#" MasterPageFile="~/Master/Outlet.Master" AutoEventWireup="true" CodeBehind="ProductMaster.aspx.cs" Inherits="HotelMgmt.Master.ProductMaster" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 28px;
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
                <td class="style3">
                   <b> Product Master</b></td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblError" runat="server" ForeColor="#99FF66" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
          
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                   <b> CateGory</b></td>
                <td>
                    <asp:DropDownList ID="ddlCategory" runat="server" Width="230px" 
                        DataTextField="CategoryName" DataValueField="CategoryId" 
                        onselectedindexchanged="ddlCategory_SelectedIndexChanged" 
                        BackColor="#FAE4E7">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <b>Sub Category</b></td>
                <td>
                    <asp:DropDownList ID="ddlSubCategory" runat="server" Width="230px" 
                        DataTextField="SubCategoryName" DataValueField="SubCategoryId" 
                        BackColor="#FAE4E7">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    <b>Brand Name</b></td>
                <td>
                    <asp:TextBox ID="txtProductName" runat="server" Width="230px" 
                        BackColor="#FAE4E7"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    <b>Size Of Bottle /Can</b></td>
                <td valign="middle">
                    <asp:DropDownList ID="ddlUnit" runat="server" Width="230px" 
                        onselectedindexchanged="ddlUnit_SelectedIndexChanged" BackColor="#FAE4E7">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
              <tr>
                <td class="style2">
                    </td>
                <td class="style2">
                    <%--<b>Sale Rate</b>--%></td>
                <td class="style2">
                    <asp:TextBox ID="txtRate" runat="server" Width="230px" BackColor="#FAE4E7">0</asp:TextBox>
                  </td>
                <td class="style2">
                    </td>
                <td class="style2">
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnInsert" runat="server" Text="Insert" 
                        onclick="btnInsert_Click" CssClass="btn" />
                    &nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" 
                        onclick="btnUpdate_Click" style="height: 26px" CssClass="btn" />
                    &nbsp;<asp:Button ID="btnRefresh" runat="server" Text="Refresh" onclick="btnRefresh_Click" CssClass="btn" />
                    &nbsp;<asp:Button ID="btnDelete" runat="server" Text="Delete" onclick="btnDelete_Click" CssClass="btn" />
                    &nbsp;<asp:Button ID="btnExit" runat="server" Text="Exit" onclick="btnExit_Click" CssClass="btn" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" colspan="5">
                    <div style="OVERFLOW: auto; width:100%; height: 130px">
                    <asp:GridView ID="gdvProduct" runat="server" CssClass="grid" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" 
                        onrowediting="gdvProduct_RowEditing"  
                        DataKeyNames="ProductId">
                        <RowStyle BackColor="#E3EAEB" />
                        <Columns>
                            <asp:TemplateField HeaderText="Product Name">
                                <ItemTemplate>
                                    <asp:Label ID="lblProductName" runat="server" Text='<%# bind("ProductName") %>' 
                                        ForeColor="Black"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Left" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Size Of Bottle">
                                <ItemTemplate>
                                    <asp:Label ID="lblSizeOfBtl" runat="server" Text='<%# Bind("SizeOfBottle") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Left" />
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
                    </asp:GridView></div>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                   <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager></td>
                <td class="style4">
                    &nbsp;</td>
                <td>
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
