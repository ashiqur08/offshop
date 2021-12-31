<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExiseReport.aspx.cs" Inherits="HotelMgmt.ExiseReport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .grid
{
	Width:777px;
	/*width:300px;*/
	
	
}
.grid th
{
    
    border: solid 1px ;
    background-color:Green;
   
}

        .style2
        {
            height: 30px;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
    <div>
    <table class="style1">
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
                <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td colspan="5">
             <div style="overflow: auto; width: 100%; height: 180px">
                <asp:GridView ID="gdvExise" runat="server" CssClass="grid" 
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                    GridLines="None"  
                    Width="1000px" >
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:TemplateField HeaderText="SlNo">
                            <ItemTemplate>
                                <asp:Label ID="lblSlNo" runat="server" Text='<%# Bind("SlNo") %>' 
                                    Font-Bold="True" Font-Size="Smaller"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Kind Of Fl">
                            <ItemTemplate>
                                <asp:Label ID="lblFl" runat="server" Text='<%# Bind("Fl") %>' Font-Bold="True" 
                                    Font-Size="Smaller"></asp:Label>
                                &nbsp;
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Left" Width="100px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sale In The Month Of Current Year">
                            <ItemTemplate>
                                <asp:Label ID="lblSaleInMnthOfCurrentYear" runat="server" 
                                    Text='<%# Bind("SaleInMnthOfCurrentYear") %>' Font-Bold="True" 
                                    Font-Size="Smaller"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sale In The Month Of Previous Year">
                            <ItemTemplate>
                                <asp:Label ID="lblSaleInMnthOfPrevYear" runat="server" 
                                    Text='<%# Bind("SaleInMnthOfPrevYea") %>' Font-Bold="True" 
                                    Font-Size="Smaller"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Growth Rate">
                            <ItemTemplate>
                                <asp:Label ID="lblGrowthRate" runat="server" Text='<%# Bind("GrowthRate") %>' 
                                    Font-Bold="True" Font-Size="Smaller"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sale UpTo Month Of Current Year">
                            <ItemTemplate>
                                <asp:Label ID="lblSaleUpToMnthOfCurrentYear" runat="server" 
                                    Text='<%# Bind("SaleUpToMnthOfCurrentYear") %>' Font-Bold="True" 
                                    Font-Size="Smaller"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sale UpTo Month Of Previous Year">
                            <ItemTemplate>
                                <asp:Label ID="lblSaleUpToMnthOfCurrentYear0" runat="server" 
                                    Text='<%# Bind("SaleUpToMnthOfPrevYear") %>' Font-Bold="True" 
                                    Font-Size="Smaller"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Growth Rate">
                            <ItemTemplate>
                                <asp:Label ID="lblGrowthRate0" runat="server" Text='<%# Bind("GrowthRate1") %>' 
                                    Font-Bold="True" Font-Size="Smaller"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
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
        <tr>
            <td colspan="5">
            <div style="overflow: auto; width: 100%; height: 180px">
                <asp:GridView ID="GridView1" runat="server" CssClass="grid" 
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="1000px">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:TemplateField HeaderText="Sl No">
                            <ItemTemplate>
                                <asp:Label ID="lblSlNo" runat="server" Text="Label"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Kind Of Fl">
                            <ItemTemplate>
                                <asp:Label ID="lblFl" runat="server" Text="Label"></asp:Label>
                            </ItemTemplate>
                            <FooterStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Opening Balance In The Month Of Current Year">
                            <ItemTemplate>
                                <asp:Label ID="lblOpeningBlnce" runat="server" Text="Label"></asp:Label>
                            </ItemTemplate>
                            <FooterStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Received During The Month Of Current Year">
                            <ItemTemplate>
                                <asp:Label ID="lblReceived" runat="server" Text="Label"></asp:Label>
                            </ItemTemplate>
                            <FooterStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Closing Balance In Current Month">
                            <ItemTemplate>
                                <asp:Label ID="lblClosing" runat="server" Text="Label"></asp:Label>
                            </ItemTemplate>
                            <FooterStyle HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sale In The Current Month">
                            <ItemTemplate>
                                <asp:Label ID="lblSale" runat="server" Text="Label"></asp:Label>
                            </ItemTemplate>
                            <FooterStyle HorizontalAlign="Left" />
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
        <tr>
            <td class="style2">
                </td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Back To Home" />
                </td>
            <td class="style2">
                </td>
            <td class="style2">
                </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
