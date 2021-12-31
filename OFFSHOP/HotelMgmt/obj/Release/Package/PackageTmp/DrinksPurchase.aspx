<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DrinksPurchase.aspx.cs"
    Inherits="HotelMgmt.DrinksPurchase" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Untitled Document</title>
    <link href="Master/style2.css" rel="stylesheet" type="text/css" />

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
        .style9
        {
            width: 100%;
        }
        .style10
        {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                <li><a href="#" class="menulink" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image3','','images/trans_btn_o.gif',1)">
                    <img src="images/trans_btn_n.gif" name="Image3" width="121" height="45" border="0"
                        id="Image3" /></a>
                    <ul>
                       <%-- <li><a href="Master/GodownOpeningStock.aspx">Opening Godown Stock Entry</a></li>
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
                <li><a href="#" class="menulink" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image4','','Master/images/bill_btn_o.gif',1)">
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
                    Drinks Purchase 
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;&nbsp;Sujata Sen F.l. Offshop.</h1></h1>
            </div>
            <table class="style9">
                <tr>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtpurDate"
                                    PopupButtonID="ImageButton1">
                                </asp:CalendarExtender>
                                <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtInvDate"
                                    PopupButtonID="ImageButton2">
                                </asp:CalendarExtender>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="79%" valign="top">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td class="style3">
                                                        &nbsp;
                                                    </td>
                                                    <td class="style27">
                                                        &nbsp;
                                                    </td>
                                                    <td class="style28">
                                                        &nbsp;
                                                    </td>
                                                    <td class="style26" align="right">
                                                        &nbsp;
                                                    </td>
                                                    <td class="style3" align="right">
                                                        <asp:ImageButton ID="ImageButton8" runat="server" Height="60px" ImageUrl="~/Image/Update.png"
                                                            OnClick="ImageButton8_Click" Width="60px" />
                                                        <asp:ImageButton ID="ImageButton3" runat="server" Height="60px" ImageUrl="~/Image/Delete.png"
                                                            Width="60px" ToolTip="Delete Record" OnClick="ImageButton3_Click" />
                                                        <asp:ImageButton ID="ImageButton4" runat="server" Height="60px" ImageUrl="~/Image/Reset.png"
                                                            Width="60px" ToolTip="Reset All" OnClick="ImageButton4_Click" />
                                                        <asp:ImageButton ID="ImageButton5" runat="server" Height="60px" ImageUrl="~/Image/Search.png"
                                                            Width="60px" ToolTip="Search Records" OnClick="ImageButton5_Click" />
                                                        <asp:ImageButton ID="ImageButton6" runat="server" Height="60px" ImageUrl="~/Image/Save.PNG"
                                                            Width="60px" ToolTip="Save Record" OnClick="ImageButton6_Click" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="border-top: 1px solid #000000;" colspan="5">
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td valign="top" st="st">
                                                                    <table width="100%" border="0">
                                                                        <caption>
                                                                            <asp:Label ID="lblError" runat="server" ForeColor="#66FF33" Font-Bold="True"></asp:Label>
                                                                            <br />
                                                                            <tr>
                                                                                <td class="style10">
                                                                                    Purchase Date
                                                                                </td>
                                                                                <td class="style8">
                                                                                    <asp:TextBox ID="txtpurDate" runat="server" BackColor="#FAE4E7" Width="100px"></asp:TextBox>
                                                                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/calendar.gif" />
                                                                                </td>
                                                                                <td align="right">
                                                                                    <span class="style32"><b>Creditor&#39;s</b> </span>&nbsp;
                                                                                </td>
                                                                                <td align="left">
                                                                                    <asp:DropDownList ID="ddlCreditor" runat="server" BackColor="#FAE4E7" Style="text-align: center"
                                                                                        Width="250px">
                                                                                    </asp:DropDownList>
                                                                                </td>
                                                                                <td class="style23">
                                                                                    <span class="style10">I</span><span class="style10">nvoice No</span>
                                                                                </td>
                                                                                <td class="style31">
                                                                                    <asp:TextBox ID="txtInvNo" runat="server" BackColor="#FAE4E7"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="style6">
                                                                                    I<b>nvoice Date</b>
                                                                                </td>
                                                                                <td class="style33">
                                                                                    <asp:TextBox ID="txtInvDate" runat="server" BackColor="#FAE4E7" Width="100px"></asp:TextBox>
                                                                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/calendar.gif" />
                                                                                </td>
                                                                                <td class="style34" colspan="2">
                                                                                </td>
                                                                                <td class="style10">
                                                                                    Ex.Pass No
                                                                                </td>
                                                                                <td class="style35">
                                                                                    <asp:TextBox ID="txtPassNo" runat="server" BackColor="#FAE4E7"></asp:TextBox>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="style38">
                                                                                </td>
                                                                                <td class="style39">
                                                                                </td>
                                                                                <td class="style2" colspan="2">
                                                                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtGrossTotal"
                                                                                        FilterType="numbers">
                                                                                    </asp:FilteredTextBoxExtender>
                                                                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="txtDiscRebate"
                                                                                        FilterType="numbers">
                                                                                    </asp:FilteredTextBoxExtender>
                                                                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="txtSaleTaxPer"
                                                                                        FilterType="numbers">
                                                                                    </asp:FilteredTextBoxExtender>
                                                                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" TargetControlID="txtSpclDisc"
                                                                                        FilterType="numbers">
                                                                                    </asp:FilteredTextBoxExtender>
                                                                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" TargetControlID="txtTcsPer"
                                                                                        FilterType="numbers">
                                                                                    </asp:FilteredTextBoxExtender>
                                                                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" TargetControlID="txtSurchargePer"
                                                                                        FilterType="numbers">
                                                                                    </asp:FilteredTextBoxExtender>
                                                                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" TargetControlID="txtPurcase"
                                                                                        FilterType="numbers">
                                                                                    </asp:FilteredTextBoxExtender>
                                                                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" runat="server" TargetControlID="txtPerBtl"
                                                                                        FilterType="numbers">
                                                                                    </asp:FilteredTextBoxExtender>
                                                                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender9" runat="server" TargetControlID="txtRebCase"
                                                                                        FilterType="numbers">
                                                                                    </asp:FilteredTextBoxExtender>
                                                                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender10" runat="server" TargetControlID="txtRebBtl"
                                                                                        FilterType="numbers">
                                                                                    </asp:FilteredTextBoxExtender>
                                                                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender11" runat="server" TargetControlID="txtMrp"
                                                                                        FilterType="numbers">
                                                                                    </asp:FilteredTextBoxExtender>
                                                                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender12" runat="server" TargetControlID="txtRatePerCase"
                                                                                        FilterType="numbers">
                                                                                    </asp:FilteredTextBoxExtender>
                                                                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender13" runat="server" TargetControlID="txtDiscPerCase"
                                                                                        FilterType="numbers">
                                                                                    </asp:FilteredTextBoxExtender>
                                                                                </td>
                                                                                <td class="style38">
                                                                                </td>
                                                                                <td class="style40">
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="style1" colspan="6">
                                                                                    &nbsp;
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td class="style1" colspan="6">
                                                                                    <div class="scroll">
                                                                                        <table class="style9" class="roundBorder">
                                                                                            <tr>
                                                                                                <td align="center" class="style10" style="font-size:smaller">
                                                                                                    BarCode
                                                                                                </td>
                                                                                                <td align="center" class="style10" style="font-size:smaller">
                                                                                                    Product Name
                                                                                                </td>
                                                                                                <td align="center" class="style10" style="font-size:smaller">
                                                                                                    Btl
                                                                                                </td>
                                                                                                <td align="center" class="style10" style="font-size:smaller">
                                                                                                    BatchNo
                                                                                                </td>
                                                                                                <td align="center" class="style21" style="font-size:smaller">
                                                                                                    <b>PurCase</b>
                                                                                                </td>
                                                                                                <td align="center" class="style10" style="font-size:smaller">
                                                                                                    Pur Btl
                                                                                                </td>
                                                                                                <td align="center" class="style22" style="font-size:smaller">
                                                                                                    <b>Reb.Case</b>
                                                                                                </td>
                                                                                                <td align="center" class="style10" style="font-size:smaller">
                                                                                                    RebBtl
                                                                                                </td>
                                                                                                <td align="center" class="style10" style="font-size:smaller">
                                                                                                    MRP
                                                                                                </td>
                                                                                                <td align="center" class="style5" style="font-size:smaller">
                                                                                                    <b>Rate/Case</b>
                                                                                                </td>
                                                                                                <td align="center" class="style10" style="font-size:smaller">
                                                                                                    Disc/Case
                                                                                                </td>
                                                                                                <td rowspan="2">
                                                                                                    <asp:ImageButton ID="ImageButton7" runat="server" Height="40px" ImageUrl="~/Image/Save1.PNG"
                                                                                                        OnClick="ImageButton7_Click" Width="40px" />
                                                                                                </td>
                                                                                            </tr>
                                                                                            <tr>
                                                                                                <td class="style10">
                                                                                                    <%--<asp:TextBox ID="txtBarcode" runat="server" BackColor="#FAE4E7" Width="140px"></asp:TextBox>--%>
                                                                                                    <asp:TextBox ID="txtBarcode" runat="server" Height="20px" Width="136px" CssClass="roundBorder"
                                                                        Style="margin-left: 4px" BackColor="#CCFFFF" Font-Bold="True" Font-Size="Large"
                                                                        ForeColor="Blue" AutoPostBack="True"></asp:TextBox>
                                                                                                </td>
                                                                                                <td class="style11">
                                                                                                    <asp:DropDownList ID="ddlProductName" runat="server" BackColor="#FAE4E7" Width="120px">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                                <td class="style12">
                                                                                                    <asp:DropDownList ID="ddlBtl" runat="server" AutoPostBack="True" BackColor="#FAE4E7"
                                                                                                        OnSelectedIndexChanged="ddlBtl_SelectedIndexChanged" Width="60px">
                                                                                                    </asp:DropDownList>
                                                                                                </td>
                                                                                                <td class="style15">
                                                                                                    <asp:TextBox ID="txtBatchNo" runat="server" BackColor="#FAE4E7" Width="80px"></asp:TextBox>
                                                                                                </td>
                                                                                                <td class="style14">
                                                                                                    <asp:TextBox ID="txtPurcase" runat="server" BackColor="#FAE4E7" Width="50px">0</asp:TextBox>
                                                                                                </td>
                                                                                                <td class="style12">
                                                                                                    <asp:TextBox ID="txtPerBtl" runat="server" BackColor="#FAE4E7" Width="50px">0</asp:TextBox>
                                                                                                </td>
                                                                                                <td class="style16">
                                                                                                    <asp:TextBox ID="txtRebCase" runat="server" BackColor="#FAE4E7" Width="50px">0</asp:TextBox>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtRebBtl" runat="server" BackColor="#FAE4E7" Width="50px">0</asp:TextBox>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtMrp" runat="server" BackColor="#FAE4E7" OnTextChanged="txtMrp_TextChanged"
                                                                                                        Width="50px">0</asp:TextBox>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtRatePerCase" runat="server" BackColor="#FAE4E7" Width="50px">0</asp:TextBox>
                                                                                                </td>
                                                                                                <td>
                                                                                                    <asp:TextBox ID="txtDiscPerCase" runat="server" BackColor="#FAE4E7" Width="50px">0</asp:TextBox>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                        <asp:GridView ID="gdvPurchaseDetails" runat="server" AutoGenerateColumns="False"
                                                                                            CellPadding="4" DataKeyNames="PurchaseDetailsId" ForeColor="#333333" GridLines="Horizontal"
                                                                                            Height="180px" OnRowDeleting="gdvPurchaseDetails_RowDeleting" Width="770px">
                                                                                            <RowStyle BackColor="#E3EAEB" />
                                                                                            <Columns>
                                                                                                <asp:TemplateField HeaderText="BarCode">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lblBarcode" runat="server" Text='<%# bind("BarCode") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle HorizontalAlign="Justify" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="PrdttName">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lblProductName" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle HorizontalAlign="Justify" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Btl">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lblBtl" runat="server" Text='<%# Bind("SizeOfBottle") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle HorizontalAlign="Justify" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="BatchNo">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lblBatchNo" runat="server" Text='<%# Bind("BatchNo") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle HorizontalAlign="Justify" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="MRP/Btl">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lblMrpPerBtl" runat="server" Text='<%# Bind("MRPBottle") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle HorizontalAlign="Justify" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Rate/Case">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lblRatePerCase" runat="server" Text='<%# Bind("RateCase") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle HorizontalAlign="Justify" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Disc/Case">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lblDiscPerCase" runat="server" Text='<%# Bind("DiscCase") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                    <HeaderStyle HorizontalAlign="Justify" />
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="TotBtl">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lblTotBtl" runat="server" Text='<%# Bind("TotPurchaseBtl") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="RbtBtl">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lblRbtBtl" runat="server" Text='<%# Bind("TotRebateBtl") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="TotMRP">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lblTotMRP" runat="server" Text='<%# Bind("TotalMRP") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="TotDisc">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lblTotDisc" runat="server" Text='<%# Bind("TotalDiscount") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField HeaderText="Amnt">
                                                                                                    <ItemTemplate>
                                                                                                        <asp:Label ID="lblAmount" runat="server" Text='<%# Bind("TotalAmount") %>'></asp:Label>
                                                                                                    </ItemTemplate>
                                                                                                </asp:TemplateField>
                                                                                                <asp:TemplateField>
                                                                                                    <ItemTemplate>
                                                                                                        <asp:ImageButton ID="ImgDel" runat="server" CommandName="Delete" Height="20px" ImageUrl="~/Image/del.jpg"
                                                                                                            OnClick="ImgDel_Click" Width="20px" />
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
                                                                        </caption>
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
                                                                <td class="style36">
                                                                    <asp:TextBox ID="txtTotalBtl" runat="server" Width="60px" BackColor="#FFF5E1" Enabled="False"
                                                                        Font-Bold="True">0</asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <caption>
                                                                Total Btl
                                                            </caption>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style36">
                                                        Total MRP
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style36">
                                                        <asp:TextBox ID="txtTotalMrp" runat="server" Width="60px" Enabled="False" BackColor="#FFF5E1"
                                                            Font-Bold="True">0</asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style36">
                                                        Gross Total
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style36">
                                                        <asp:TextBox ID="txtGrossTotal" runat="server" Width="60px" Enabled="False" BackColor="#FAE4E7">0</asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style36">
                                                        Disc.Rebet
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style36">
                                                        <asp:TextBox ID="txtDiscRebate" runat="server" Width="60px" Enabled="False" BackColor="#FAE4E7">0</asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style37">
                                                        SalesTax onTotal MRP
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style36">
                                                        <asp:TextBox ID="txtSaleTaxPer" runat="server" Width="60px" AutoPostBack="True" OnTextChanged="txtSaleTaxPer_TextChanged"
                                                            BackColor="#FAE4E7">0</asp:TextBox>
                                                        <span class="style30">%</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style36">
                                                        <asp:TextBox ID="txtSalTax" runat="server" Width="60px" Enabled="False" BackColor="#FFF5E1"
                                                            Font-Bold="True">0</asp:TextBox>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style36">
                                                        Spcl Disct
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style36">
                                                        <asp:TextBox ID="txtSpclDisc" runat="server" Width="60px" AutoPostBack="True" OnTextChanged="txtSpclDisc_TextChanged"
                                                            BackColor="#FAE4E7">0</asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style36">
                                                        Bill Total
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 0 0 1px 10px; border-left: 1px solid #000000; border-top: 1px solid #000000;
                                            font-size: 12px; font-weight: bold;">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="txtBill" runat="server" Width="60px" Enabled="False" BackColor="#FAE4E7">0</asp:TextBox>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        TCS 1%
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="txtTcsPer" runat="server" Width="60px" Enabled="False" OnTextChanged="txtTcsPer_TextChanged"
                                                            BackColor="#FAE4E7">0</asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style25">
                                                        Surcharge
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="txtSurchargePer" runat="server" Width="60px" AutoPostBack="True"
                                                            OnTextChanged="txtSurchargePer_TextChanged">0</asp:TextBox>
                                                        %
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="txtSurcharge" runat="server" Width="60px" BackColor="#FFF5E1" Enabled="False"
                                                            Font-Bold="True" OnTextChanged="txtSurcharge_TextChanged">0.00</asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Net Amt
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="txtNetAmount" runat="server" Width="60px" Enabled="False" BackColor="#FFF5E1"
                                                            Font-Bold="True">0</asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;
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
                                </table>
                                </td> </tr> </table><asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                </asp:ToolkitScriptManager>
                            </ContentTemplate>
                        </asp:UpdatePanel>
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
