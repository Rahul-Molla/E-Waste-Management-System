<%@ Page Language="C#" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="History" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="hist" OnCheckedChanged="RadioButton1_CheckedChanged" Text="View Approved Product" AutoPostBack="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="hist" Text="View Picked Up Order" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged" />
&nbsp;<asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
            <asp:View ID="View1" runat="server">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Pid" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="100%">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="ProCat" HeaderText="ProCat" SortExpression="ProCat" />
                        <asp:BoundField DataField="ProBrand" HeaderText="ProBrand" SortExpression="ProBrand" />
                        <asp:BoundField DataField="ProSNo" HeaderText="ProSNo" SortExpression="ProSNo" />
                        <asp:BoundField DataField="ProQty" HeaderText="ProQty" SortExpression="ProQty" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="User_Phone_No" HeaderText="User_Phone_No" SortExpression="User_Phone_No" />
                        <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
                        <asp:BoundField DataField="PickedUp" HeaderText="PickedUp" SortExpression="PickedUp" />
                        <asp:BoundField DataField="ProFile" HeaderText="ProFile" SortExpression="ProFile" />
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <table class="auto-style1">
                                    <tr>
                                        <td style="text-align: center">
                                            <asp:Image ID="Image3" runat="server" Height="131px" ImageUrl='<%# Eval("ProFile") %>' Width="129px" />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="PickUp Confirmation">
                            <ItemTemplate>
                                <table class="auto-style1">
                                    <tr>
                                        <td style="text-align: center">
                                            <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" Text="PickedUp Confirmed" />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
            </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Pid" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ProCat" HeaderText="ProCat" SortExpression="ProCat" />
                    <asp:BoundField DataField="ProBrand" HeaderText="ProBrand" SortExpression="ProBrand" />
                    <asp:BoundField DataField="ProSNo" HeaderText="ProSNo" SortExpression="ProSNo" />
                    <asp:BoundField DataField="ProQty" HeaderText="ProQty" SortExpression="ProQty" />
                    <asp:BoundField DataField="ProFile" HeaderText="ProFile" SortExpression="ProFile" />
                    <asp:BoundField DataField="User_Phone_No" HeaderText="User_Phone_No" SortExpression="User_Phone_No" />
                    <asp:BoundField DataField="Expected_Pickup_Date" HeaderText="Expected_Pickup_Date" SortExpression="Expected_Pickup_Date" />
                    <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
                    <asp:BoundField DataField="Granted_Reward" HeaderText="Granted_Reward" SortExpression="Granted_Reward" />
                    <asp:TemplateField HeaderText="Product Image">
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td style="text-align: center">
                                        <asp:Image ID="Image4" runat="server" Height="167px" ImageUrl='<%# Eval("ProFile") %>' Width="164px" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [ProCat], [ProBrand], [ProSNo], [ProQty], [ProFile], [User_Phone_No], [Expected Pickup Date] AS Expected_Pickup_Date, [Pid], [Granted Reward] AS Granted_Reward FROM [Upload] WHERE ([PickedUp] = @PickedUp)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Yes" Name="PickedUp" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:View>
        </asp:MultiView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [ProCat], [ProBrand], [ProSNo], [ProQty], [Status], [User_Phone_No], [Pid], [PickedUp], [ProFile] FROM [Upload] WHERE ([Status] = @Status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Approved" Name="Status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />

    
    </div>
    </form>
</body>
</html>
