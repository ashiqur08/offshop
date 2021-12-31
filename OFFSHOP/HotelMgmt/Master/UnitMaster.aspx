<%@ Page Language="C#" MasterPageFile="~/Master/Outlet.Master" AutoEventWireup="true" CodeBehind="UnitMaster.aspx.cs" Inherits="HotelMgmt.Master.UnitMaster" Title="Untitled Page" %>
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
 
        function validation(UnitName) 
            {
                if (document.getElementById(UnitName).value == "")
                {
                    alert("Unit Name Can't be Blank");
                    document.getElementById(UnitName).focus();
                    return false;
                }
                return true;        
            }
        
        function RefreshParent() 
            {
                window.opener.location.href = "../Master/UnitMster.aspx";
                window.close();
            }
    
    </script>
    
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label1" runat="server" Text="Unit Master" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label2" runat="server" Text="Unit Name"></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="txtUnit" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnExit" runat="server" Text="Exit" onclick="btnExit_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnRefresh" runat="server" Text="Refresh" 
                    onclick="btnRefresh_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDelete" runat="server" Text="Delete" 
                    onclick="btnDelete_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                    onclick="btnUpdate_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnInsert" runat="server" Text="Insert" 
                    onclick="btnInsert_Click" />
            </td>
            
        </tr>
        <tr>
            <td  colspan="2">
            </td>
        </tr>
        <tr>
            <td colspan="2">
             <div style="OVERFLOW: auto; width:100%; height: 200px">
                <asp:GridView ID="dgvUnit" runat="server" CssClass="grid" AutoGenerateColumns="False" 
                    CellPadding="4" GridLines="None" 
                    OnRowEditing="dgvUnitName_RowEditing" Width="100%" DataKeyNames="UnitId" 
                    ForeColor="#333333">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:BoundField DataField="UnitId" HeaderText="UnitId" Visible="False" />
                        <asp:TemplateField HeaderText="Unit Name">
                            <ItemTemplate>
                                <asp:Label ID="lblUnitName" runat="server" Text='<%# Bind("UnitName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
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
    </table>
    </form>
</asp:Content>
