<%@ Page Language="C#" MasterPageFile="~/Master/Outlet.Master" AutoEventWireup="true" CodeBehind="ProductSubCategoryMaster.aspx.cs" Inherits="HotelMgmt.Master.DrinksSubCategory" Title="Untitled Page" %>

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
    
<script language="javascript" type="text/javascript">
 
        function validation(ProductSubCategoryMasterName) 
            {
                if (document.getElementById(ProductSubCategoryMasterName).value == "")
                {
                    alert("Product Sub Category Name Can't be Blank");
                    document.getElementById(ProductSubCategoryMasterName).focus();
                    return false;
                }
                return true;        
            }
            </Script>

    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                <table class="style1">
        <tr>
            <td>
                <b>ProductSubCategoryMaster</b></td>
            <td>
                <asp:Label ID="lblError" runat="server" ForeColor="#99FF66" Font-Bold="True"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:RadioButtonList ID="rdbProductSubCategory" runat="server" 
                    AutoPostBack="True" Font-Bold="True" 
                    onselectedindexchanged="rdbProductSubCategory_SelectedIndexChanged" 
                    RepeatDirection="Horizontal" Visible="False">
                    <asp:ListItem Value="1">Food</asp:ListItem>
                    <asp:ListItem Value="2">Drinks</asp:ListItem>
                    <asp:ListItem Value="3">Bvg</asp:ListItem>
                    <asp:ListItem Value="4">Misc</asp:ListItem>
                </asp:RadioButtonList>
                            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
               <b> SubCategoryName                 
                <asp:TextBox ID="txtSubCategory" 
                    runat="server" BackColor="#FAE4E7"></asp:TextBox>
                </b></td>
            <td>
                &nbsp;</td>
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
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnInsert" runat="server" Text="Insert" 
                    onclick="btnInsert_Click" CssClass="btn" />
                &nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" 
                    onclick="btnUpdate_Click" CssClass="btn" />
                &nbsp;<asp:Button ID="btnRefresh" runat="server" Text="Refresh" 
                    onclick="btnRefresh_Click" CssClass="btn" />
                &nbsp;<asp:Button ID="btnDelete" runat="server" Text="Delete" 
                    onclick="btnDelete_Click" CssClass="btn" />
                &nbsp;<asp:Button ID="btnExit" runat="server" Text="Exit" 
                    onclick="btnExit_Click"  CssClass="btn"/>
            </td>
            <td>
                &nbsp;</td>
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
        <tr>
            <td colspan="5">
                <div style="OVERFLOW: auto; width:100%; height: 180px">
                
                  <div style="OVERFLOW: auto; width:100%; height:200"> 
                <asp:GridView ID="gdvSubCategory" runat="server" CssClass="grid" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AutoGenerateColumns="False" 
                    DataKeyNames="SubCategoryId" onrowediting="GridView1_RowEditing">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:TemplateField HeaderText="ProductSubCategoryName">
                            <ItemTemplate>
                                <asp:Label ID="lblSubCategory" runat="server" 
                                    Text='<%# Bind("SubCategoryName") %>' ForeColor="Black"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="imgBtnEdit" runat="server" CommandName="Edit" 
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
                
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager></td>
            <td>
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
