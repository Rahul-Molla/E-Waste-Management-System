<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reward.aspx.cs" Inherits="Reward" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">Your Total Achieved E-Coin🪙:
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    <span class="auto-style4" style="text-decoration: blink">** FOR EACH COIN YOU CAN AVAIL DISCOUNT OF ₹10**</span><br />
                    <br />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="REDEEM E-COINS" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <div class="auto-style3">
                        <br />
                        <strong>YOUR REWARDS</strong></div>
                    <asp:MultiView ID="MultiView1" runat="server">
                        <asp:View ID="View1" runat="server">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Pid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="ProCat" HeaderText="ProCat" SortExpression="ProCat" />
                                    <asp:BoundField DataField="ProBrand" HeaderText="ProBrand" SortExpression="ProBrand" />
                                    <asp:BoundField DataField="ProSNo" HeaderText="ProSNo" SortExpression="ProSNo" />
                                    <asp:BoundField DataField="ProQty" HeaderText="ProQty" SortExpression="ProQty" />
                                    <asp:BoundField DataField="ProFile" HeaderText="ProFile" SortExpression="ProFile" />
                                    <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
                                    <asp:BoundField DataField="Expected_Pickup_Date" HeaderText="Expected_Pickup_Date" SortExpression="Expected_Pickup_Date" />
                                    <asp:BoundField DataField="Granted_Reward" HeaderText="Granted_Reward" SortExpression="Granted_Reward" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                <RowStyle BackColor="#F7F7DE" />
                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                <SortedAscendingHeaderStyle BackColor="#848384" />
                                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                <SortedDescendingHeaderStyle BackColor="#575357" />
                            </asp:GridView>
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [ProCat], [ProBrand], [ProSNo], [ProQty], [ProFile], [Pid], [Expected Pickup Date] AS Expected_Pickup_Date, [Granted Reward] AS Granted_Reward FROM [Upload] WHERE (([User_Phone_No] = @User_Phone_No) AND ([Granted Reward] &lt;&gt; @Granted_Reward))">
                        <SelectParameters>
                            <asp:SessionParameter Name="User_Phone_No" SessionField="ph" Type="String" />
                            <asp:Parameter DefaultValue="0" Name="Granted_Reward" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
