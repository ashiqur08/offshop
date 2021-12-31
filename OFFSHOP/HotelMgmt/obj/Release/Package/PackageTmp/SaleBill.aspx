<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SaleBill.aspx.cs" Inherits="HotelMgmt.SaleBill" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Untitled Document</title>
    <link href="Master/style2.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="Master/script.js"></script>

    <script type="text/javascript" src="script.js"></script>

    <script type="text/javascript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
    </script>

    <style type="text/css">
        .style4
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    </td>
    <div class="nav">
        <ul class="menu" id="menu">
            <li><a href="#" class="menulink" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image1','','images/setup_btn_o.gif',1)">
                <img src="images/setup_btn_n.gif" name="Image1" width="60" height="45" border="0"
                    id="Image1" /></a>
                <ul>
                    <li><a href="">Software Management</a></li>
                    <li><a href="Master/Backup.aspx">Backup Database</a></li>
                </ul>
            </li>
            <li><a href="#" class="menulink" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image2','','images/master_btn_o.gif',1)">
                <img src="images/master_btn_n.gif" name="Image2" width="78" height="45" border="0"
                    id="Image2" /></a>
                <ul>
                    <li>
                        <li><a href="Master/ProductCategoryMaster.aspx">Product Category Master</a></li>
                        <li><a href="Master/ProductSubCategoryMaster.aspx">Product Sub Category Master</a></li>
                        <li><a href="Master/NoOfBottlePerCase.aspx">No Of Bottle Per Case</a></li>
                        <li><a href="Master/ProductMaster.aspx">Product Master</a></li>
                        <li><a href="Master/RollMaster.aspx">Roll Master</a></li>
                        <li><a href="Master/EmployeeMaster.aspx">Employee Master</a></li>
                        <li><a href="Master/Ledger.aspx">Ledger</a></li>
                    </li>
                </ul>
            </li>
            <li><a href="#" class="menulink" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image3','','images/trans_btn_o.gif',1)">
                <img src="images/trans_btn_n.gif" name="Image3" width="121" height="45" border="0"
                    id="Image3" /></a>
                <ul>
                    <%--<li><a href="Master/GodownOpeningStock.aspx">Opening Godown Stock Entry</a></li>
                    <li><a href="DrinksPurchase.aspx">Drinks Purchase Entry</a></li>
                    <li><a href="Breakage.aspx">Breakage Entry</a></li>--%>
                    <li><a href="Master/GodownOpeningStock.aspx">Godown Opening Stock Entry</a></li>
                        <li><a href="DrinksPurchase.aspx">Drinks Purchase Entry</a></li>
                        <li><a href="Requition.aspx">Requition Entry</a></li>
                        <li><a href="Breakage.aspx">Breakage Entry</a></li>
                        <li><a href="Master/OffshopOpeningStock.aspx">Offshop Opening Stock</a></li>
                        <li><a href="BreakageOffshop.aspx">Breakage Offshop</a></li>
                </ul>
            </li>
            <li><a href="#" class="menulink" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image4','','images/bill_btn_o.gif',1)">
                <img src="images/bill_btn_n.gif" name="Image4" width="136" height="45" border="0"
                    id="Image4" /></a>
                <ul>
                    <li><a href="SaleBill.aspx">Bill Entry</a></li>
                    <li><a href="DueReceived.aspx">Due Receive Entry</a></li>
                </ul>
            </li>
            <li><a href="#" class="menulink" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image5','','images/report_btn_o.gif',1)">
                <img src="images/report_btn_n.gif" name="Image5" width="80" height="45" border="0"
                    id="Image5" /></a>
                <ul>
                     <li><a href="DateWiseSaleReport.aspx">Date Wise Sale Report</a></li>
                    <li><a href="DateWiseDueReport.aspx">Date Wise Due Report</a></li>
                    <li><a href="BillwiseMOPReport.aspx">Billwise MOP Report</a></li>
                    <li><a href="CatagoryWiseSaleReport.aspx">Catagory Wise Sale Report</a></li>
                    <li><a href="CreditorsWisePurReport.aspx">Creditors Wise Purchase Report</a></li>
                    <li><a href="PurchaseReport.aspx">Datewise Purchase Report</a></li>
                    <li><a href="GodownStockReport.aspx">Godown Stock Report</a></li>
                    <li><a href="OffshopStockReport.aspx">Offshop Stock Report</a></li>
                    <li><a href="BreakageReport.aspx">Breakage Report</a></li>
                    <li><a href="BreakageReportOffshop.aspx">Breakage Report Offshop</a></li>
                    <li><a href="ExiseReport.aspx">Exise Report</a></li>
                    <li><a href="SubCatagoryWiseReportaspx.aspx">SubCatagory Wise Report</a></li>
                    <li><a href="MeasureWiseReport.aspx">Measure Wise Report</a></li>
                    <li><a href="PegWiseReport.aspx">Peg Wise Report</a></li>
                </ul>
            </li>
            <li><a href="#" class="menulink" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image6','','images/authen_btn_o.gif',1)">
                <img src="images/authen_btn_n.gif" name="Image6" width="141" height="45" border="0"
                    id="Image6" /></a>
                <ul>
                    <li><a href="UserPermision.aspx">User Permission</a></li>
                </ul>
            </li>
            <li><a href="Login/LoginUser.aspx" onclick="return confirm('Are you sure?')" class="menulink" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image7','','images/exit_btn_o.gif',1)">
                <img src="images/exit_btn_n.gif" name="Image7" width="48" height="45" border="0"
                    id="Image7" /></a></li>
        </ul>
    </div>

    <script type="text/javascript">
	var menu=new menu.dd("menu");
	menu.init("menu","menuhover");
    </script>

    <div class="sale">
        <div class="area3">
            <div class="header">
                <h1>
                    Sale Bill Today is 
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> &nbsp;&nbsp;&nbsp;Sujata Sen F.l. Offshop.</h1>
            </div>
            <table class="style4">
                <tr>
                    <td>
                        
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                         <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
                            <ContentTemplate>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="79%" valign="top">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td>
                                                        <table width="100%" border="0" cellspacing="2" cellpadding="0">
                                                            <tr>
                                                                <td style="padding-left: 10px;">
                                                                    <div align="center">
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div align="center">
                                                                        <strong>&nbsp;</strong></div>
                                                                </td>
                                                                <td>
                                                                    <div align="center">
                                                                        <strong>&nbsp;Bill No </strong>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div align="center">
                                                                        <asp:TextBox ID="txtBillNo" runat="server" BackColor="#FAE4E7" CssClass="roundBorder"
                                                                            Width="90px" Enabled="False" Font-Bold="True"></asp:TextBox>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                                <td>
                                                                    <div align="center">
                                                                        <strong>&nbsp;&nbsp;&nbsp;Date</strong></div>
                                                                </td>
                                                                <td>
                                                                    <div align="center">
                                                                        <asp:TextBox ID="txtDate" runat="server" BackColor="#FAE4E7" CssClass="roundBorder"
                                                                            ReadOnly="True"></asp:TextBox>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div align="center">
                                                                        <strong>Time</strong></div>
                                                                </td>
                                                                <td>
                                                                    <div align="center">
                                                                        <asp:TextBox ID="txtTime" runat="server" BackColor="#FAE4E7" CssClass="roundBorder"
                                                                            ReadOnly="True"></asp:TextBox>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <div align="center">
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <%--<tr>
                  <td  style="padding-left:10px;"><div align="center">
                      &nbsp;</div></td>
                  <td><div align="center">
                      &nbsp;</div></td>
                  <td><div align="center">
                      &nbsp;</div></td>
                  <td><div align="center">
                      &nbsp;</div></td>
                  <td><div align="center">
                      &nbsp;</div></td>
                  <td><div align="center">
                      &nbsp;</div></td>
                  <td><div align="center">
                      &nbsp;</div></td>
                  <td><div align="center">
                      &nbsp;</div></td>
                  <td><div align="center">
                      &nbsp;</div></td>
                </tr>--%>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="border-top: 1px solid #000000;" valign="middle">
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td valign="middle" st="st" align="right" height="25" class="style1">
                                                                    <span class="style2">&nbsp;&nbsp;&nbsp; <b>&nbsp;</b></span>
                                                                </td>
                                                                <td valign="top" height="30" align="left" style="color: #800000">
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b style="font-size: x-large">
                                                                        Barcode</b>&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <asp:TextBox ID="txtBarcode" runat="server" Height="20px" Width="200px" CssClass="roundBorder"
                                                                        Style="margin-left: 4px" BackColor="#CCFFFF" Font-Bold="True" Font-Size="X-Large"
                                                                        ForeColor="Blue" AutoPostBack="True" 
                                                                        OnTextChanged="txtBarcode_TextChanged"></asp:TextBox>
                                                                    &nbsp;&nbsp;<asp:ImageButton ID="imgBtnPrint" runat="server" Height="20px" 
                                                                        ImageUrl="~/Image/Print.png" Width="50px" 
                                                                        onclick="imgBtnPrint_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                       <b>Card Pur</b>&nbsp;<asp:TextBox ID="txtCardPur"
                                                                            runat="server" Width="50px">2</asp:TextBox>&nbsp;<b>In Amount</b>&nbsp;<asp:TextBox
                                                                                ID="txtExtraChrgAmount" runat="server" Width="50px">0</asp:TextBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td width="27%" class="purple">
                                                                    <h2>
                                                                        Search Product:</h2>
                                                                </td>
                                                                <td width="37%" class="purple">
                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td width="10%" class="black_br">
                                                                                <h2>
                                                                                    Sl.</h2>
                                                                            </td>
                                                                            <td width="38%" class="black_br">
                                                                                <h2>
                                                                                    Item Name
                                                                                </h2>
                                                                            </td>
                                                                            <td width="16%" class="black_br">
                                                                                <h2>
                                                                                    Rate
                                                                                </h2>
                                                                            </td>
                                                                            <td width="13%" class="black_br">
                                                                                <h2>
                                                                                    Qty</h2>
                                                                            </td>
                                                                            <td width="23%" class="black_br" style="border-right: none;">
                                                                                <h2>
                                                                                    Amount</h2>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                                <td width="36%" class="purple">
                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td width="100%" class="black_br">
                                                                                <h2>
                                                                                    Stock</h2>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="border-right: 1px solid #000000;" valign="top">
                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td>
                                                                                <asp:TextBox ID="txtCode" runat="server" Width="205px" BackColor="White" CssClass="roundBorder"
                                                                                    AutoPostBack="True" OnTextChanged="txtCode_TextChanged"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:ListBox ID="lbxProduct" runat="server" AutoPostBack="True" BackColor="#FAE4E7"
                                                                                    CssClass="roundBorder" Height="250px" OnSelectedIndexChanged="lbxProduct_SelectedIndexChanged"
                                                                                    Width="205px"></asp:ListBox>
                                                                                <label>
                                                                                    &nbsp;</label>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                                <td valign="top" style="border-right: 1px solid #000000;" align="right">
                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="height: 274px">
                                                                        <tr>
                                                                            <td valign="top">
                                                                            <div style="OVERFLOW:auto; width:100%; height: 140px">
                                                                                <asp:GridView ID="gdvItem" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                                                                                    Width="280px" AutoGenerateColumns="False" DataKeyNames="SaveProductDetailsId"
                                                                                    OnRowEditing="gdvItem_RowEditing" OnRowDeleting="gdvItem_RowDeleting" 
                                                                                    TabIndex="2">
                                                                                    <RowStyle BackColor="#E3EAEB" />
                                                                                    <Columns>
                                                                                        <asp:BoundField />
                                                                                        <asp:TemplateField HeaderText="Item">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="lblItem" runat="server" Text='<%# Bind("ProductName") %>' Font-Size="Smaller"
                                                                                                    Font-Bold="True"></asp:Label>
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Rate">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="lblRate" runat="server" Text='<%# Bind("Rate") %>' Font-Bold="True"
                                                                                                    Font-Size="Smaller"></asp:Label>
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Qty">
                                                                                            <ItemTemplate>
                                                                                                <asp:TextBox ID="txtQty" runat="server" Width="35px" AutoPostBack="True" OnTextChanged="txtQty_TextChanged"
                                                                                                    Text='<%# Bind("Qty") %>' Font-Bold="True" Font-Size="X-Small" 
                                                                                                    MaxLength="2"></asp:TextBox>
                                                                                                <asp:Label ID="lblSaveProductDetailsId" runat="server" Font-Size="XX-Small" Text='<%# Bind("SaveProductDetailsId") %>'
                                                                                                    Visible="False"></asp:Label>
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Amount">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="lblAmount" runat="server" Text='<%# Bind("Amount") %>' Font-Bold="True"
                                                                                                    Font-Size="Smaller"></asp:Label>
                                                                                            </ItemTemplate>
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField>
                                                                                            <ItemTemplate>
                                                                                                <asp:ImageButton ID="ImageButton15" runat="server" CommandName="Delete" Height="20px"
                                                                                                    ImageUrl="~/Image/del.jpg" Width="15px" OnClick="ImageButton15_Click" />
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
                                                                               <div style="OVERFLOW:auto; width:100%; height: 150px">
                                                                               <asp:GridView ID="gdvOccupied" runat="server" CellPadding="4" ForeColor="#333333"
                                                                                    GridLines="None" Width="280px" AutoGenerateColumns="False" OnRowEditing="gdvOccupied_RowEditing"
                                                                                    OnRowDeleting="gdvOccupied_RowDeleting">
                                                                                    <RowStyle BackColor="#E3EAEB" />
                                                                                    <Columns>
                                                                                        <asp:TemplateField HeaderText="SaveProductMasterId">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="lblSavePrdctMrId" runat="server" Font-Bold="True" Font-Size="Smaller"
                                                                                                    Text='<%# Bind("SaveProductMasterId") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                                            <ItemStyle HorizontalAlign="Left" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="BillNo">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="lblBillNo" runat="server" Font-Bold="True" Font-Size="Smaller" Text='<%# Bind("BillNo") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                                            <ItemStyle HorizontalAlign="Left" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField>
                                                                                            <ItemTemplate>
                                                                                                <asp:ImageButton ID="imgBtnEdit" runat="server" CommandName="Edit" Height="20px"
                                                                                                    ImageUrl="~/Image/edit.jpg" OnClick="imgBtnEdit_Click" Width="20px" />
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                                            <ItemStyle HorizontalAlign="Left" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField>
                                                                                            <ItemTemplate>
                                                                                                <asp:ImageButton ID="imgDelOccupied" runat="server" CommandName="Delete" Height="20px"
                                                                                                    ImageUrl="~/Image/del.jpg" Width="20px" />
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                                            <ItemStyle HorizontalAlign="Left" />
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
                                                                        <%--<tr>
                       <td></label>
                            </label>
                            
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                            <p>&nbsp;</p>
                          </td>
                      </tr>--%>
                                                                    </table>
                                                                </td>
                                                                <td valign="top">
                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <%-- <tr>
                      <td ></td>
                    </tr>--%>
                                                                        <tr>
                                                                            <td>
                                                                            <div style="OVERFLOW:auto; width:100%; height: 280px">
                                                                                <asp:GridView ID="gdvStock" runat="server" AutoGenerateColumns="False" 
                                                                                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="280px">
                                                                                    <RowStyle BackColor="#E3EAEB" />
                                                                                    <Columns>
                                                                                        <asp:TemplateField HeaderText="ProductName">
                                                                                        <ItemTemplate>
                                                                                            <asp:Label ID="lblProduct" runat="server"  Font-Bold="True" Font-Size="Smaller" Text='<%# Bind("ProductName") %>'></asp:Label>
                                                                                        </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Barcode">
                                                                                        <ItemTemplate>
                                                                                            <asp:Label ID="lblBarcode" runat="server" Font-Bold="True" Font-Size="Smaller" Text='<%# Bind("Barcode") %>'></asp:Label>
                                                                                        </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="SQty">
                                                                                        <ItemTemplate>
                                                                                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Smaller" Text='<%# Bind("Sale") %>'></asp:Label>
                                                                                        </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Left" />
                                                                                        </asp:TemplateField>
                                                                                        <asp:TemplateField HeaderText="Rest">
                                                                                            <ItemTemplate>
                                                                                                <asp:Label ID="lblQty" runat="server" Font-Bold="True" Font-Size="Smaller" 
                                                                                                    Text='<%# Bind("LastQty") %>'></asp:Label>
                                                                                            </ItemTemplate>
                                                                                            <HeaderStyle HorizontalAlign="Left" />
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
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-top: solid #000000 1px;">
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="1">
                                                            <tr>
                                                                <td width="24%" style="border-right: 1px solid #000000;">
                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="5">
                                                                        <tr>
                                                                            <td>
                                                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                                    <tr>
                                                                                        <td width="4%" style="width: 100%">
                                                                                            <b style="font-size: medium">&nbsp;</label> Complementary Reason:</b><br />
                                                                                            <asp:TextBox ID="txtComplemantry_Remarks" runat="server" TextMode="MultiLine" Width="200px"
                                                                                                BackColor="White" CssClass="roundBorder" AutoPostBack="True" OnTextChanged="txtComplemantry_Remarks_TextChanged"></asp:TextBox>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server">
                                                                                </asp:ToolkitScriptManager>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtDiscPer"
                                                                                    FilterType="numbers">
                                                                                </asp:FilteredTextBoxExtender>
                                                                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="txtLS"
                                                                                    FilterType="numbers">
                                                                                </asp:FilteredTextBoxExtender>
                                                                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="txtCash"
                                                                                    FilterType="numbers">
                                                                                </asp:FilteredTextBoxExtender>
                                                                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="txtCard"
                                                                                    FilterType="numbers">
                                                                                </asp:FilteredTextBoxExtender>
                                                                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" TargetControlID="txtDue"
                                                                                    FilterType="numbers">
                                                                                </asp:FilteredTextBoxExtender>
                                                                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" TargetControlID="txtRecieved"
                                                                                    FilterType="numbers">
                                                                                </asp:FilteredTextBoxExtender>
                                                                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" TargetControlID="txtComplemantry_Remarks"
                                                                                    FilterType="Custom,LowercaseLetters,UppercaseLetters" FilterMode="ValidChars"
                                                                                    ValidChars=" ">
                                                                                </asp:FilteredTextBoxExtender>
                                                                                <%--<asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" runat="server" TargetControlID="txtQty1" FilterType="numbers" >
                </asp:FilteredTextBoxExtender>--%>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                                <td width="19%" valign="top" style="border-right: 1px solid #000000; width: 55%;">
                                                                    <%--<table width="100%" border="0" cellspacing="0" cellpadding="2">
                  <tr>
                    <td width="61%">Bar Total:</td>
                    <td width="39%"><input name="textfield14" type="text" id="textfield20" size="1" maxlength="5" /></td>
                  </tr>
                  <tr>
                    <td>Food Total:</td>
                    <td><input name="textfield15" type="text" id="textfield21" size="1" maxlength="5" /></td>
                  </tr>
                  <tr>
                    <td>Brvg Total:</td>
                    <td><input name="textfield16" type="text" id="textfield22" size="1" maxlength="4" /></td>
                  </tr>
                  <tr>
                    <td>Gross Total:</td>
                    <td><input name="textfield17" type="text" id="textfield23" size="1" maxlength="2" /></td>
                  </tr>
                </table></td>
                <td width="21%" valign="top" style="border-right:1px solid #000000;" rowspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="2">
                  <tr>
                    <td width="36%">Wbst:</td>
                    <td width="64%"><input name="textfield18" type="text" id="textfield24" size="1" maxlength="2" />
                    % <input name="textfield20" type="text" id="textfield28" size="1" maxlength="2" /></td>
                  </tr>
                  <tr>
                    <td>Vat:</td>
                    <td><input name="textfield18" type="text" id="textfield25" size="1" maxlength="2" />
                            %
                      <input name="textfield21" type="text" id="textfield29" size="1" maxlength="2" /></td>
                  </tr>
                  <tr>
                    <td>S Tax:</td>
                    <td><input name="textfield18" type="text" id="textfield26" size="1" maxlength="2" />                      
                       % 
                       <input name="textfield22" type="text" id="textfield30" size="1" maxlength="2" /></td>
                  </tr>
                  <tr>
                    <td>Net Amt:</td>
                    <td><input name="textfield18" type="text" id="textfield27" size="1" maxlength="3" /></td>
                  </tr>
                </table></td>--%>
                                                                    <table class="style4">
                                                                        <tr>
                                                                            <td bgcolor="#38060D" rowspan="2" width="10">
                                                                            </td>
                                                                            <td>
                                                                                <asp:ImageButton ID="imgBtnSave" runat="server" Height="50px" ImageUrl="~/Image/Save.PNG"
                                                                                    Width="50px" OnClick="imgBtnSave_Click" AccessKey="p" TabIndex="1" />
                                                                            </td>
                                                                            <td>
                                                                                <asp:ImageButton ID="imgBtnEdit" runat="server" Height="50px" ImageUrl="~/Images for Software/EditNew.png"
                                                                                    Width="50px" OnClick="imgBtnEdit_Click1" />
                                                                            </td>
                                                                            <td rowspan="2" bgcolor="#38060D" colspan="1" width="10">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td>
                                                                                <asp:ImageButton ID="ImageButton3" runat="server" Height="50px" Width="50px" ImageUrl="~/Image/R_Key_1.png" />
                                                                            </td>
                                                                            <td>
                                                                                <asp:ImageButton ID="ImageButton4" runat="server" Height="50px" ImageUrl="~/Image/R_Key_2.png"
                                                                                    Width="50px" />
                                                                            </td>
                                                                            <td>
                                                                                <asp:ImageButton ID="ImageButton5" runat="server" Height="50px" ImageUrl="~/Image/R_Key_3.png"
                                                                                    Width="50px" />
                                                                            </td>
                                                                            <td>
                                                                                <asp:ImageButton ID="ImageButton6" runat="server" Height="50px" ImageUrl="~/Image/R_Key_4.png"
                                                                                    Width="50px" />
                                                                            </td>
                                                                            <td>
                                                                                <asp:ImageButton ID="ImageButton7" runat="server" Height="50px" ImageUrl="~/Image/R_Key_5.png"
                                                                                    Width="50px" />
                                                                            </td>
                                                                            <td>
                                                                                <asp:ImageButton ID="ImageButton8" runat="server" Height="50px" ImageUrl="~/Image/R_Key_6.png"
                                                                                    Width="50px" />
                                                                            </td>
                                                                            <td bgcolor="#38060D" rowspan="2" width="10">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:ImageButton ID="imgBtnOccupy" runat="server" Height="50px" ImageUrl="~/Images for Software/Que.png"
                                                                                    Width="50px" OnClick="imgBtnOccupy_Click" />
                                                                            </td>
                                                                            <td>
                                                                                <asp:ImageButton ID="imgBtnDue" runat="server" Height="50px" ImageUrl="~/Images for Software/Duedetails2.png"
                                                                                    Width="50px" OnClick="imgBtnDue_Click" />
                                                                            </td>
                                                                            <td>
                                                                                <asp:ImageButton ID="ImageButton9" runat="server" Height="50px" ImageUrl="~/Image/LeftArrow.png"
                                                                                    Width="50px" />
                                                                            </td>
                                                                            <td>
                                                                                <asp:ImageButton ID="ImageButton10" runat="server" Height="50px" ImageUrl="~/Image/R_Key_7.png"
                                                                                    Width="50px" />
                                                                            </td>
                                                                            <td>
                                                                                <asp:ImageButton ID="ImageButton11" runat="server" Height="50px" ImageUrl="~/Image/R_Key_8.png"
                                                                                    Width="50px" />
                                                                            </td>
                                                                            <td>
                                                                                <asp:ImageButton ID="ImageButton12" runat="server" Height="50px" ImageUrl="~/Image/R_Key_9.png"
                                                                                    Width="50px" />
                                                                            </td>
                                                                            <td>
                                                                                <asp:ImageButton ID="ImageButton13" runat="server" Height="50px" ImageUrl="~/Image/R_Key_0.png"
                                                                                    Width="50px" />
                                                                            </td>
                                                                            <td>
                                                                                <asp:ImageButton ID="ImageButton14" runat="server" Height="50px" ImageUrl="~/Image/RightArrow.png"
                                                                                    Width="50px" />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="21%" valign="top">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td style="padding: 0 0 1px 10px; border-left: 1px solid #000000; font-size: 12px;
                                                        font-weight: bold;">
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td align="center" style="font-size: 16px">
                                                                    &nbsp;Bill Amount&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox
                                                                        ID="txtBill" runat="server" Width="90px" BackColor="#FAE4E7" CssClass="roundBorder"
                                                                        ReadOnly="True">0</asp:TextBox>
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="font-size: 16px; color: #ab0505;" align="center">
                                                                    <u>Discount</u>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;Total(%)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtDiscPer" runat="server" Width="90px" BackColor="White"
                                                                        CssClass="roundBorder" AutoPostBack="True" OnTextChanged="txtDiscPer_TextChanged">0</asp:TextBox>
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <asp:TextBox ID="txtDisc" runat="server" Width="90px" BackColor="#FAE4E7" CssClass="roundBorder"
                                                                        ReadOnly="True">0</asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp; L.S Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <asp:TextBox ID="txtLS" runat="server" Width="90px" BackColor="White" CssClass="roundBorder"
                                                                        AutoPostBack="True" OnTextChanged="txtLS_TextChanged">0</asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Recievable Amount
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center">
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <asp:TextBox ID="txtRecievable" runat="server" Width="90px" BackColor="#FAE4E7" CssClass="roundBorder"
                                                                        ReadOnly="True">0</asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding: 0 0 1px 10px; border-left: 1px solid #000000; border-top: 1px solid #000000;
                                                        font-size: 12px; font-weight: bold;">
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td style="font-size: 16px; color: #ab0505;" colspan="2">
                                                                    <div align="center">
                                                                        <u>Payment Mode</u></div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Cash
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtCash" runat="server" AutoPostBack="True" BackColor="White" CssClass="roundBorder"
                                                                        OnTextChanged="txtCash_TextChanged" Width="90px">0</asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" colspan="2">
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Card
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtCard" runat="server" AutoPostBack="True" BackColor="White" CssClass="roundBorder"
                                                                        OnTextChanged="txtCard_TextChanged" Width="90px">0</asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" colspan="2">
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style5">
                                                                    Due
                                                                </td>
                                                                <td class="style5">
                                                                    <asp:TextBox ID="txtDue" runat="server" BackColor="White" CssClass="roundBorder"
                                                                        Width="90px" OnTextChanged="txtDue_TextChanged" AutoPostBack="True">0</asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" colspan="2">
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Received Amt
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtRecieved" runat="server" AutoPostBack="True" BackColor="White"
                                                                        CssClass="roundBorder" OnTextChanged="txtRecieved_TextChanged" Width="90px">0</asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" colspan="2">
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    Refund Amt
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtRefund" runat="server" BackColor="#FAE4E7" CssClass="roundBorder"
                                                                        ReadOnly="True" Width="90px">0</asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="center" colspan="2">
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <%--<td>LS Amount</td>
            </tr>
            <tr>
              <td><input name="textfield13" type="text" id="textfield13" size="8" maxlength="5" /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>--%>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:Timer ID="Timer1" runat="server" ontick="Timer1_Tick">
                        </asp:Timer>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="clear" align="center" style="color: #FFFFFF">
    All rights reserved to California Mercantile Pvt Ltd.
    </div>
    </form>
</body>
</html>
