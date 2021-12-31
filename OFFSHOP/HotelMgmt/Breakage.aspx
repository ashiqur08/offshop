<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Breakage.aspx.cs" Inherits="HotelMgmt.Breakage"
    EnableEventValidation="false" %>

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
   
 function ValidateForm()
{
if(document.getElementById("txtDate"))
{
if(validateInputDate(document.getElementById("txtDate").value)==false)
{
alert("Please input purchase date in the format mm-dd-yyyy.");
return false;
}
}
} 
}
//-->
    </script>

    <style type="text/css">
        .style17
        {
            width: 100%;
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
                        <li><a href="Master/GodownOpeningStock.aspx">Godown Opening Stock</a></li>
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
                    Breakage Details&nbsp;&nbsp;&nbsp;Sujata Sen F.l. Offshop.</h1>
            </div>
            <table class="style17">
                <tr>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="79%" valign="top">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td>
                                                        <table width="100%" border="0" cellspacing="2" cellpadding="0">
                                                            <tr>
                                                                <td align="right" style="padding-left: 10px;" class="style12">
                                                                    &nbsp;&nbsp;&nbsp;&nbsp; <b>Barcode</b>
                                                                </td>
                                                                <td class="style7" colspan="2">
                                                                    <%--<asp:TextBox ID="txtBarCode" runat="server" BackColor="#FAE4E7" Width="180px"></asp:TextBox>--%>
                                                                    <asp:TextBox ID="txtBarCode" runat="server" Height="20px" Width="150px" CssClass="roundBorder"
                                                                        Style="margin-left: 4px" BackColor="#CCFFFF" Font-Bold="True" Font-Size="Large"
                                                                        ForeColor="Blue" AutoPostBack="True"></asp:TextBox>
                                                                </td>
                                                                <td colspan="2" class="style11">
                                                                    <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="#99FF66"></asp:Label>
                                                                    <%--<asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" TargetControlID="txtDate" FilterType="numbers">
                </asp:FilteredTextBoxExtender>--%>
                                                                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                                                    </asp:ToolkitScriptManager>
                                                                </td>
                                                                <%--<td class="style10">
                                                                    
                                                                </td>--%>
                                                                <td valign="top">
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding-left: 10px;" class="style8">
                                                                    <div align="right">
                                                                        <strong>Product Name</strong></div>
                                                                </td>
                                                                <td class="style7" colspan="2">
                                                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                                        <ContentTemplate>
                                                                            <asp:DropDownList ID="ddlProduct" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProduct_SelectedIndexChanged"
                                                                                BackColor="#FAE4E7" Width="180px">
                                                                            </asp:DropDownList>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                </td>
                                                                <td class="style11">
                                                                    <div align="right">
                                                                        <%--<strong>Size of Bottle</strong></div>--%>
                                                                        <strong>Size of Bottle</strong></div>
                                                                </td>
                                                                <td class="style10">
                                                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                                        <ContentTemplate>
                                                                            <asp:DropDownList ID="ddlBottleSize" runat="server" AutoPostBack="True" BackColor="#FAE4E7"
                                                                                OnSelectedIndexChanged="ddlBottleSize_SelectedIndexChanged1" Width="180px">
                                                                            </asp:DropDownList>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                </td>
                                                                <td rowspan="2" valign="top">
                                                                    &nbsp;
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
                                                            <tr>
                                                                <td align="right" style="padding-left: 10px;" class="style13">
                                                                    <b>Rate<b>
                                                                </td>
                                                                <td align="left" class="style14" colspan="2">
                                                                    <strong>
                                                                        <asp:TextBox ID="txtRate" runat="server" BackColor="#FFFFCC" ReadOnly="True" Width="180px"></asp:TextBox>
                                                                        <asp:FilteredTextBoxExtender ID="txtRate_FilteredTextBoxExtender" runat="server"
                                                                            FilterType="numbers" TargetControlID="txtRate">
                                                                        </asp:FilteredTextBoxExtender>
                                                                    </strong>
                                                                </td>
                                                                <td align="right" class="style15">
                                                                    <b>GodownQty</b>
                                                                </td>
                                                                <td align="left" class="style16">
                                                                    <strong>
                                                                        <asp:TextBox ID="txtGodownQty" runat="server" BackColor="#FFFFCC" ReadOnly="True"
                                                                            Width="180px"></asp:TextBox>
                                                                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="numbers"
                                                                            TargetControlID="txtGodownQty">
                                                                        </asp:FilteredTextBoxExtender>
                                                                    </strong>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="right" style="padding-left: 10px;" class="style12">
                                                                    <b>Breakage Qty</b>&nbsp;
                                                                </td>
                                                                <td align="left" class="style7">
                                                                    <asp:TextBox ID="txtBreakageQty" runat="server" BackColor="#FAE4E7" Width="180px"></asp:TextBox>
                                                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="numbers"
                                                                        TargetControlID="txtBreakageQty">
                                                                    </asp:FilteredTextBoxExtender>
                                                                </td>
                                                                <td align="left" class="style7">
                                                                    &nbsp;
                                                                </td>
                                                                <td align="right" class="style11">
                                                                    <b>Date</b>
                                                                </td>
                                                                <td align="left" class="style10">
                                                                    <strong>
                                                                        <asp:TextBox ID="txtDate" runat="server" BackColor="#FAE4E7" Width="180px"></asp:TextBox>
                                                                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="ImageButton4"
                                                                            TargetControlID="txtDate">
                                                                        </asp:CalendarExtender>
                                                                        <strong>
                                                                            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Image/calendar.gif" />
                                                                        </strong></strong>
                                                                </td>
                                                                <td valign="top">
                                                                    &nbsp;
                                                                </td>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="border-top: 1px solid #000000;">
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td width="37%" class="purple">
                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td width="100%" class="black_br">
                                                                                &nbsp;
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="top" style="border-right: 1px solid #000000;">
                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="height: 148px">
                                                                        <tr>
                                                                            <td valign="top" class="style4">
                                                                                <div style="overflow: auto; width: 100%; height: 180px">
                                                                                    <asp:GridView ID="gvDetails" runat="server" CssClass="grid" CellPadding="4" ForeColor="#333333"
                                                                                        GridLines="None" AutoGenerateColumns="False" DataKeyNames="BreakageId" OnRowEditing="gvDetails_RowEditing"
                                                                                        Width="980px">
                                                                                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                                                        <RowStyle BackColor="#E3EAEB" />
                                                                                        <Columns>
                                                                                            <asp:TemplateField HeaderText="ProductName">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("ProductName") %>' ForeColor="Black"></asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="SizeOfBottle">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="lblBottleSize" runat="server" Text='<%# Eval("SizeOfBottle") %>' ForeColor="Black"></asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField HeaderText="BreakageQty">
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="lblBreakageQty" runat="server" Text='<%# Eval("BreakageQty") %>' ForeColor="Black"></asp:Label>
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:ImageButton ID="imgEdit" runat="server" CommandName="Edit" Height="20px" ImageUrl="~/Image/edit.jpg"
                                                                                                        OnClick="imgEdit_Click" Width="20px" />
                                                                                                </ItemTemplate>
                                                                                            </asp:TemplateField>
                                                                                            <asp:TemplateField>
                                                                                                <ItemTemplate>
                                                                                                    <asp:Label ID="lblBreakageId" runat="server" Text='<%# Bind("BreakageId") %>' Visible="False"></asp:Label>
                                                                                                </ItemTemplate>
                                                                                                <EditItemTemplate>
                                                                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("BreakageId") %>'></asp:TextBox>
                                                                                                </EditItemTemplate>
                                                                                            </asp:TemplateField>
                                                                                        </Columns>
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
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td valign="top" style="border-top: solid #000000 1px;">
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="1">
                                                            <tr>
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
                                                                    <asp:ImageButton ID="ImgSave" runat="server" Height="66px" ImageUrl="~/Image/Save1.PNG"
                                                                        Width="84px" OnClick="ImgSave_Click" />
                                                                    <asp:ImageButton ID="ImgUpdate" runat="server" Height="66px" ImageUrl="~/Image/Update.png"
                                                                        Width="84px" OnClick="ImgUpdate_Click" />
                                                                    <asp:ImageButton ID="ImgDelete" runat="server" Height="66px" ImageUrl="~/Image/Delete.png"
                                                                        Width="84px" OnClick="ImgDelete_Click" />
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
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
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
