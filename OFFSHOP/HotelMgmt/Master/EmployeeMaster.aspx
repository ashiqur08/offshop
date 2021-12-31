<%@ Page Language="C#" MasterPageFile="~/Master/Outlet.Master" AutoEventWireup="true"
    CodeBehind="EmployeeMaster.aspx.cs" Inherits="HotelMgmt.Master.EmployeeMaster"
    Title="Untitled Page" %>

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
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <table class="style1" align="right">
                            <tr>
                                <td colspan="2">
                                    <b>EmployeeMaster</b>
                                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                    </asp:ToolkitScriptManager>
                                </td>
                                <td>
                                    &nbsp;
                                    </td>
                                <td colspan="4">
                                    <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="#99FF66"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    First Name
                                </td>
                                <td>
                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" 
                                        FilterType="numbers" TargetControlID="txtPhno">
                                    </asp:FilteredTextBoxExtender>
                                    <asp:TextBox ID="txtFnm" runat="server" BackColor="#FAE4E7" 
                                        CssClass="roundBorder" Width="120px"></asp:TextBox>
                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" 
                                        FilterMode="ValidChars" FilterType="Custom,LowercaseLetters,UppercaseLetters" 
                                        TargetControlID="txtFnm" ValidChars=" ">
                                    </asp:FilteredTextBoxExtender>
                                </td>
                                <td align="right">
                                    Last Name
                                </td>
                                <td>
                                    <asp:TextBox ID="txtLnm" runat="server" BackColor="#FAE4E7" 
                                        CssClass="roundBorder" Width="120px"></asp:TextBox>
                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" 
                                        FilterMode="ValidChars" FilterType="Custom,LowercaseLetters,UppercaseLetters" 
                                        TargetControlID="txtLnm" ValidChars=" ">
                                    </asp:FilteredTextBoxExtender>
                                </td>
                                <td align="right">
                                    Login Name</td>
                                <td>
                                    <asp:TextBox ID="txtLoginName" runat="server" BackColor="#FAE4E7" 
                                        CssClass="roundBorder" Width="120px" TabIndex="2"></asp:TextBox>
                                    <asp:FilteredTextBoxExtender ID="txtLoginName_FilteredTextBoxExtender" 
                                        runat="server" FilterMode="ValidChars" 
                                        FilterType="Custom,LowercaseLetters,UppercaseLetters" TargetControlID="txtLoginName" 
                                        ValidChars=" ">
                                    </asp:FilteredTextBoxExtender>
                                </td>
                                <td rowspan="5" valign="top">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:CheckBoxList ID="CheckBoxListHotel" runat="server" AutoPostBack="True">
                                                </asp:CheckBoxList>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    Address</td>
                                <td>
                                    <asp:TextBox ID="txtAddr" runat="server" BackColor="#FAE4E7" 
                                        CssClass="roundBorder" Width="120px" TabIndex="3"></asp:TextBox>
                                </td>
                                <td align="right">
                                    Address
                                </td>
                                <td>
                                    <asp:TextBox ID="txtaddr2" runat="server" BackColor="#FAE4E7" 
                                        CssClass="roundBorder" Width="120px" TabIndex="4"></asp:TextBox>
                                    <br />
                                </td>
                                <td align="right">
                                    Phone Number
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPhno" runat="server" Width="120px" BackColor="#FAE4E7" 
                                        CssClass="roundBorder" TabIndex="5"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    Pin</td>
                                <td class="style2">
                                    <asp:TextBox ID="txtPin" runat="server" BackColor="#FAE4E7" 
                                        CssClass="roundBorder" Width="120px" TabIndex="6"></asp:TextBox>
                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" 
                                        FilterType="numbers" TargetControlID="txtPin">
                                    </asp:FilteredTextBoxExtender>
                                </td>
                                <td class="style2" align="right">
                                    City</td>
                                <td>
                                    <asp:TextBox ID="txtCity" runat="server" BackColor="#FAE4E7" 
                                        CssClass="roundBorder" Width="120px" TabIndex="7"></asp:TextBox>
                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" 
                                        FilterMode="ValidChars" FilterType="Custom,LowercaseLetters,UppercaseLetters" 
                                        TargetControlID="txtCity" ValidChars=" ">
                                    </asp:FilteredTextBoxExtender>
                                </td>
                                <td align="right" class="style2">
                                    State</td>
                                <td class="style2">
                                    <asp:TextBox ID="txtState" runat="server" BackColor="#FAE4E7" 
                                        CssClass="roundBorder" Width="120px" TabIndex="8"></asp:TextBox>
                                    <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" 
                                        FilterMode="ValidChars" FilterType="Custom,LowercaseLetters,UppercaseLetters" 
                                        TargetControlID="txtState" ValidChars=" ">
                                    </asp:FilteredTextBoxExtender>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    Country</td>
                                <td>
                                    <asp:TextBox ID="txtCountry" runat="server" BackColor="#FAE4E7" 
                                        CssClass="roundBorder" Width="120px" TabIndex="9"></asp:TextBox>
                                </td>
                                <td align="right">
                                    Role</td>
                                <td>
                                    <asp:DropDownList ID="ddlRole" runat="server" AutoPostBack="True" 
                                        BackColor="#FAE4E7" CssClass="roundBorder" 
                                        OnSelectedIndexChanged="ddlRole_SelectedIndexChanged" Width="120px" 
                                        TabIndex="10">
                                    </asp:DropDownList>
                                </td>
                                <td align="right">
                                    Type</td>
                                <td>
                                    <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="True" 
                                        BackColor="#FAE4E7" CssClass="roundBorder" 
                                        OnSelectedIndexChanged="ddlRole_SelectedIndexChanged" 
                                        Width="120px" TabIndex="11">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    Password</td>
                                <td class="style2">
                                    <asp:TextBox ID="txtPass" runat="server" BackColor="#FAE4E7" 
                                        CssClass="roundBorder" Width="120px" TabIndex="12"></asp:TextBox>
                                </td>
                                <td class="style2" colspan="4">
                                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn" 
                                        OnClick="btnSave_Click" TabIndex="13" />
                                    &nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn" OnClick="btnUpdate_Click" />
                                    &nbsp;<asp:Button ID="btnRefresh" runat="server" Text="Refresh" CssClass="btn" OnClick="btnRefresh_Click" />
                                    &nbsp;<asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn" OnClick="btnDelete_Click" />
                                    &nbsp;<asp:Button ID="btnExit" runat="server" Text="Exit" CssClass="btn" OnClick="btnExit_Click" />
                                </td>
                            </tr>
                            
                            <tr>
                                <td colspan="7">
                                    <div style="overflow: auto; width: 100%; height: 130px">
                                        <asp:GridView ID="gdvEmployee" runat="server" CssClass="grid" CellPadding="4" ForeColor="#333333"
                                            GridLines="None" AutoGenerateColumns="False" DataKeyNames="EmployeeId" 
                                            OnRowEditing="gdvEmployee_RowEditing" TabIndex="1" 
                                            onselectedindexchanged="gdvEmployee_SelectedIndexChanged">
                                            <RowStyle BackColor="#E3EAEB" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="First Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblFnm" runat="server" Text='<%# Bind("FirstName") %>' ForeColor="Black"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Last Name">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblLnm" runat="server" Text='<%# bind("LastName") %>' ForeColor="Black"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Designation">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblRole" runat="server" Text='<%# Bind("RoleDescription") %>' ForeColor="Black"></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="imgEdit" runat="server" CommandName="Edit" Height="20px" ImageUrl="~/Image/edit.jpg"
                                                            Width="20px"  />
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
