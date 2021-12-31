<%@ Page Language="C#" MasterPageFile="~/Common.Master" AutoEventWireup="true" CodeBehind="BreakageReportOffshop.aspx.cs" Inherits="HotelMgmt.BreakageReportOffshop" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
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
            <td class="style15" colspan="2">
                <b>Offshop Breakage Report</b></td>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="#99FF66"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                <b>From Date</b></td>
            <td class="style13">
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Height="25px" 
                    Width="160px" BackColor="#FAE4E7"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Image/calendar.gif" />
                <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox1" PopupButtonID="ImageButton1"> 
                </asp:CalendarExtender>  
            </td>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                <b>To Date</b></td>
            <td class="style14">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Height="25px" 
                    Width="160px" BackColor="#FAE4E7"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/Image/calendar.gif" />
                <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox2" PopupButtonID="ImageButton2">
                </asp:CalendarExtender>  
            </td>
            <td>
                <asp:Button ID="btnShow" runat="server" onclick="btnShow_Click" 
                    Text="ShowReport" CssClass="btn" />
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="6" valign="top">
            <div style="OVERFLOW: auto; width:100%; height: 200px">
                <asp:GridView ID="GridView1" runat="server" CssClass="grid" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#E3EAEB" />
                    <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns>
                        <asp:TemplateField HeaderText="BreakageDate">
                            <ItemTemplate>
                                <asp:Label ID="lblBreakageDate" runat="server" 
                                    Text='<%# Bind("Date") %>' ForeColor="Black"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="ProductName">
                            <ItemTemplate>
                                <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("ProductName") %>' 
                                    ForeColor="Black"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="SizeOfBottle">
                            <ItemTemplate>
                                <asp:Label ID="lblSizeOfBottle" runat="server" 
                                    Text='<%# Eval("SizeOfBottle") %>' ForeColor="Black"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="BreakageQty">
                            <ItemTemplate>
                                <asp:Label ID="lblBreakageQty" runat="server" Text='<%# Eval("BreakageQty") %>' 
                                    ForeColor="Black"></asp:Label>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
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
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

                </ContentTemplate>
        </asp:UpdatePanel></td>
            <td>
                &nbsp;</td>
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
