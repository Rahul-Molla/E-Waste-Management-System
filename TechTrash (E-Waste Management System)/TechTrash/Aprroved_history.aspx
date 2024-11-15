<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Aprroved_history.aspx.cs" Inherits="Aprroved_history" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2"><strong>
                    <br />
                    Products that are approved till date<br />
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" DataSourceID="SqlDataSource1" Height="324px" RepeatColumns="7" RepeatDirection="Horizontal" Width="240px">
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td style="text-align: center">
                                        <asp:Image ID="Image1" runat="server" Height="191px" ImageUrl='<%# Eval("ProFile") %>' Width="195px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">Pid:
                                        <asp:Label ID="PidLabel" runat="server" Text='<%# Eval("Pid") %>' />
                                        <br />
                                        ProCat:
                                        <asp:Label ID="ProCatLabel" runat="server" Text='<%# Eval("ProCat") %>' />
                                        <br />
                                        ProBrand:
                                        <asp:Label ID="ProBrandLabel" runat="server" Text='<%# Eval("ProBrand") %>' />
                                        <br />
                                        ProSNo:
                                        <asp:Label ID="ProSNoLabel" runat="server" Text='<%# Eval("ProSNo") %>' />
                                        <br />
                                        ProQty:
                                        <asp:Label ID="ProQtyLabel" runat="server" Text='<%# Eval("ProQty") %>' />
                                        <br />
                                        User_Phone_No:
                                        <asp:Label ID="User_Phone_NoLabel" runat="server" Text='<%# Eval("User_Phone_No") %>' />
                                        <br />
                                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Picked Up Confirmed" />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [ProCat], [Pid], [ProQty], [ProBrand], [ProSNo], [ProFile], [User_Phone_No] FROM [Upload] WHERE ([Status] = @Status)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Approved" Name="Status" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" PostBackUrl="~/Admin_Home.aspx" Text="Admin Home" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" PostBackUrl="~/HOME..aspx" Text="Log Out" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
