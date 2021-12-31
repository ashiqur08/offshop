<%@ Page Language="C#" MasterPageFile="~/Master/Outlet.Master" AutoEventWireup="true" CodeBehind="ProductCategoryMaster.aspx.cs" Inherits="HotelMgmt.Master.DrinksCategoryMaster" Title="Untitled Page" %>

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
 
        function validation(ProductCategoryMasterName) 
            {
                if (document.getElementById(ProductCategoryMasterName).value == "")
                {
                    alert("Category Name Can't be Blank");
                    document.getElementById(ProductCategoryMasterName).focus();
                    return false;
                }
                return true;        
            }
            </Script>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                 <table class="style1">
        <tr>
            <td>
               <b> Drinks Category Master</b></td>
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
                <asp:RadioButtonList ID="rdbCategory" runat="server" AutoPostBack="True" 
                    Font-Bold="True" onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                    RepeatDirection="Horizontal" Visible="False">
                    <asp:ListItem Value="1">Food</asp:ListItem>
                    <asp:ListItem Value="2">Drinks</asp:ListItem>
                    <asp:ListItem Value="3">Beverages</asp:ListItem>
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
               <b> &nbsp; Category Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><asp:TextBox ID="txtCategoryName" runat="server" 
                    BackColor="#FAE4E7" CssClass="roundBorder"></asp:TextBox>
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
                &nbsp;<asp:Button ID="btnExit" runat="server" Text="Exit" CssClass="btn" 
                    onclick="btnExit_Click1" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5">
             <div style="OVERFLOW: auto; width:100%; height: 190px">
                <asp:GridView ID="gdvCategory" runat="server" CssClass="grid" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AutoGenerateColumns="False" 
                    DataKeyNames="CategoryId" onrowediting="gdvCategory_RowEditing" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:TemplateField HeaderText="CategoryName">
                            <ItemTemplate>
                                <asp:Label ID="lblCategoryName" runat="server" 
                                    Text='<%# Bind("CategoryName") %>' ForeColor="Black"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Edit" 
                                    Height="15px" onclick="ImageButton1_Click" Width="15px" 
                                    ImageUrl="~/Image/images.jpg" />
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
