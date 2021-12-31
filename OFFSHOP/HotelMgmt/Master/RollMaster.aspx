<%@ Page Language="C#" MasterPageFile="~/Master/Outlet.Master" AutoEventWireup="true" CodeBehind="RollMaster.aspx.cs" Inherits="HotelMgmt.Master.RollMaster" Title="Untitled Page" %>

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
   <%-- <script language="javascript" type="text/javascript">
       
    function validation(RollId) 
    {
        if (document.getElementById(RollId).value=="") {
            alert("Designation can't left blank!");
            document.getElementById(txtRole).focus();
            return false;
        }        
        
           
        return true;
    }
    </script>--%>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
               
              <script language="javascript" type="text/javascript">
//                   Sys.WebForms.PageRequestManager.getInstance().add_pageLoaded(validation(RollId))
                function load()

                {
                   Sys.WebForms.PageRequestManager.getInstance().add_endRequest(validation(RollId));
                }
                function validation() 
                 {
                 var RollId = document.getElementById(txtRole.ClientID).value;
                    if (RollId=="") 
                    {
                        alert("Designation can't left blank!");
                        document.getElementById(RollId).focus();
                        return false;
                     }        
        
           
                 return true;
                 }
                 
    }</script>
                <table class="style1">
        <tr>
            <td>
               <b> Role Master</b></td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblError" runat="server" ForeColor="#99FF66" Font-Bold="True"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
            <td align="right">
                <b>Role</b></td>
            <td>
                <asp:TextBox ID="txtRole" runat="server" Width="380px" BackColor="#FAE4E7"></asp:TextBox>
            </td>
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
                &nbsp;</td>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn" 
                    onclick="btnSave_Click" onclientclick="ShowMessage(msg)" />
                &nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn" 
                    onclick="btnUpdate_Click"/>
                &nbsp;<asp:Button ID="btnRefresh" runat="server" Text="Refresh" CssClass="btn" 
                    onclick="btnRefresh_Click"/>
                &nbsp;<asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn" 
                    onclick="btnDelete_Click"/>
                &nbsp;<asp:Button ID="btnExit" runat="server" Text="Exit" CssClass="btn" 
                    onclick="btnExit_Click"/>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="TxtRole" FilterType="Custom,LowercaseLetters,UppercaseLetters" FilterMode="ValidChars"  ValidChars=" ">
                </asp:FilteredTextBoxExtender>
            </td>
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
            <div style="OVERFLOW: auto; width:100%; height: 200px">
                <asp:GridView ID="gdvRole" runat="server" CssClass="grid" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AutoGenerateColumns="False" DataKeyNames="RoleId" 
                    onrowediting="gdvRole_RowEditing">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:TemplateField HeaderText="Role Description">
                            <ItemTemplate>
                                <asp:Label ID="lblRole" runat="server" Text='<%# Bind("RoleDescription") %>' 
                                    ForeColor="Black"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:ImageButton ID="imgEdit" runat="server" CommandName="Edit" Height="20px" 
                                    ImageUrl="~/Image/edit.jpg" onclick="imgEdit_Click" Width="20px" />
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
            <td>
               <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" 
                    onload="ToolkitScriptManager1_Load">
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
