<%@ Page Language="C#" MasterPageFile="~/Master/Outlet.Master" AutoEventWireup="true" CodeBehind="NoOfBottlePerCase.aspx.cs" Inherits="HotelMgmt.Master.NoOfBottlePerCase" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-weight: bold;
        }
        .style3
        {
            height: 26px;
        }
        .style4
        {
            font-weight: bold;
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<script language="javascript" type="text/javascript">
 
        function validation(sob,nob) 
            {
                if (document.getElementById(sob).value == "")
                {
                    alert("Size Of Bottle Can't Left Blank!");
                    document.getElementById(sob).focus();
                    return false;
                }
                 if (document.getElementById(nob).value == "")
                {
                    alert("No Of Bottle Can't Left Blank!");
                    document.getElementById(nob).focus();
                    return false;
                }
                return true;
                }
                </script>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                 <table class="style1">
        <tr>
            <td class="style3">
                <b>No Of Bottle Per Case</b></td>
            <td class="style2">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
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
             <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtNoOfBottle" FilterType="numbers">
                </asp:FilteredTextBoxExtender>
                </td>
            <td class="style4">
                Type</td>
            <td class="style3">
                <asp:DropDownList ID="ddlType" runat="server" CssClass="roundBorder" 
                    onselectedindexchanged="ddlType_SelectedIndexChanged" BackColor="#FAE4E7" 
                    Width="180px">
                    <asp:ListItem>Select Type</asp:ListItem>
                    <asp:ListItem>Bottle</asp:ListItem>
                    <asp:ListItem Value="Can">Can</asp:ListItem>
                </asp:DropDownList>
                            </td>
            <td class="style3">
                </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
              <b>  Size </b></td>
            <td>
                <asp:TextBox ID="txtSizeOfBottle" runat="server" BackColor="#FAE4E7" 
                    CssClass="roundBorder" Width="180px">0</asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
               <b> No Per Case</b></td>
            <td>
                <asp:TextBox ID="txtNoOfBottle" runat="server" BackColor="#FAE4E7" 
                    CssClass="roundBorder" Width="180px">0</asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td colspan="2">
                <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" 
                    CssClass="btn" onclientclick=" ShowMessage(msg)" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                    onclick="btnUpdate_Click" CssClass="btn" />
                <asp:Button ID="btnRefresh" runat="server" Text="Refresh" 
                    onclick="btnRefresh_Click" CssClass="btn" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                    onclick="btnDelete_Click" CssClass="btn" />

                <asp:Button ID="btnExit" runat="server" Text="Exit" onclick="btnExit_Click" CssClass="btn" /></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="5">
            <div style="OVERFLOW: auto; width:100%; height: 180px">
                <asp:GridView ID="gdvNoOfBtl" runat="server" CssClass="grid" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AutoGenerateColumns="False" DataKeyNames="CaseId" 
                    onrowediting="gdvNoOfBtl_RowEditing">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:TemplateField HeaderText="SizeOfBottle">
                            <ItemTemplate>
                                <asp:Label ID="lblSizeOfBtl" runat="server" Text='<%# Bind("SizeOfBottle") %>' 
                                    ForeColor="Black"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="NoOfBottle">
                            <ItemTemplate>
                                <asp:Label ID="lblNoOfBottlePerCase" runat="server" 
                                    Text='<%# Bind("NoOfBottlePerCase") %>' ForeColor="Black"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="imgBtnEdit" runat="server" Height="20px" 
                                    onclick="imgBtnEdit_Click" Width="20px" CommandName="Edit" 
                                    ImageUrl="~/Image/edit.jpg" />
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
