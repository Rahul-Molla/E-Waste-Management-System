<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Home.aspx.cs" Inherits="Admin_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
            text-align: center;
        }
        .auto-style3 {
            text-decoration: underline;
        }
        .auto-style4 {
            height: 26px;
            width: 426px;
            text-align: center;
        }
        .auto-style5 {
            height: 26px;
            width: 619px;
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="3" style="text-align: center"><strong>Welcome <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    </strong>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center"><span class="auto-style3"><strong>Select the Action You Want to Take<br />
                    </strong></span><br />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" GroupName="a" OnCheckedChanged="RadioButton1_CheckedChanged" Text="View All Registered User" style="font-weight: 700" />
                </td>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" GroupName="a" OnCheckedChanged="RadioButton2_CheckedChanged1" Text="View Product Pending Requests" style="font-weight: 700" />
                </td>
                <td class="auto-style2">
                    <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" GroupName="a" OnCheckedChanged="RadioButton3_CheckedChanged2" Text="View the Approval History" style="font-weight: 700" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style4">
                    <br />
                    <br />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" PostBackUrl="~/HOME..aspx" Text="Log Out" />
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:MultiView ID="MultiView1" runat="server">
                        <asp:View ID="View1" runat="server">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Phone_No" DataSourceID="SqlDataSource1" Width="100%">
                                <Columns>
                                    <asp:CommandField ShowEditButton="True" ShowSelectButton="True" ShowDeleteButton="True" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                    <asp:BoundField DataField="Phone_No" HeaderText="Phone_No" ReadOnly="True" SortExpression="Phone_No" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                    <asp:BoundField DataField="Pin_Code" HeaderText="Pin_Code" SortExpression="Pin_Code" />
                                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                                    <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                                    <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
                                </Columns>
                                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#330099" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                <SortedDescendingHeaderStyle BackColor="#7E0000" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" DeleteCommand="DELETE FROM [Regis] WHERE [Phone_No] = @Phone_No" InsertCommand="INSERT INTO [Regis] ([Name], [Gender], [Phone_No], [Email], [Address], [Pin_Code], [Password], [Question], [Answer]) VALUES (@Name, @Gender, @Phone_No, @Email, @Address, @Pin_Code, @Password, @Question, @Answer)" SelectCommand="SELECT * FROM [Regis]" UpdateCommand="UPDATE [Regis] SET [Name] = @Name, [Gender] = @Gender, [Email] = @Email, [Address] = @Address, [Pin_Code] = @Pin_Code, [Password] = @Password, [Question] = @Question, [Answer] = @Answer WHERE [Phone_No] = @Phone_No">
                                <DeleteParameters>
                                    <asp:Parameter Name="Phone_No" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Name" Type="String" />
                                    <asp:Parameter Name="Gender" Type="String" />
                                    <asp:Parameter Name="Phone_No" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="Address" Type="String" />
                                    <asp:Parameter Name="Pin_Code" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                    <asp:Parameter Name="Question" Type="String" />
                                    <asp:Parameter Name="Answer" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Name" Type="String" />
                                    <asp:Parameter Name="Gender" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="Address" Type="String" />
                                    <asp:Parameter Name="Pin_Code" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                    <asp:Parameter Name="Question" Type="String" />
                                    <asp:Parameter Name="Answer" Type="String" />
                                    <asp:Parameter Name="Phone_No" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Pid" DataSourceID="SqlDataSource2"  Width="100%" AllowPaging="True" AllowSorting="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                    <asp:BoundField DataField="ProCat" HeaderText="ProCat" SortExpression="ProCat" />
                                    <asp:BoundField DataField="ProBrand" HeaderText="ProBrand" SortExpression="ProBrand" />
                                    <asp:BoundField DataField="ProSNo" HeaderText="ProSNo" SortExpression="ProSNo" />
                                    <asp:BoundField DataField="ProQty" HeaderText="ProQty" SortExpression="ProQty" />
                                    <asp:BoundField DataField="ProDes" HeaderText="ProDes" SortExpression="ProDes" />
                                    <asp:BoundField DataField="ProFile" HeaderText="ProFile" SortExpression="ProFile" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                    <asp:BoundField DataField="User_Phone_No" HeaderText="User_Phone_No" SortExpression="User_Phone_No" />
                                    <asp:BoundField DataField="Pid" HeaderText="Pid" InsertVisible="False" ReadOnly="True" SortExpression="Pid" />
                                    <asp:TemplateField HeaderText="Product Image">
                                        <ItemTemplate>
                                            <table class="auto-style1">
                                                <tr>
                                                    <td style="text-align: center">
                                                        <asp:Image ID="Image2" runat="server" BorderStyle="None" BorderWidth="0px" Height="171px" ImageUrl='<%# Eval("ProFile") %>' Width="169px" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">Click to Approve</asp:LinkButton>
                                            &nbsp;&nbsp;
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Rejection">
                                        <ItemTemplate>
                                            <table class="auto-style1">
                                                <tr>
                                                    <td>
                                                        <asp:Button ID="Reject" runat="server" OnClick="Reject_Click" Text="Reject" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EmptyDataTemplate>
                                    <table class="auto-style1">
                                        <tr>
                                            <td style="text-align: center">
                                                <asp:Image ID="Image1" runat="server" Height="154px" ImageUrl='<%# Eval("ProFile") %>' Width="147px" />
                                            </td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                <SortedDescendingHeaderStyle BackColor="#93451F" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [Upload] WHERE ([Status] = @Status2)" DeleteCommand="DELETE FROM [Upload] WHERE [User_Phone_No] = @User_Phone_No" InsertCommand="INSERT INTO [Upload] ([ProCat], [ProBrand], [ProSNo], [ProQty], [ProDes], [ProFile], [Status], [User_Phone_No]) VALUES (@ProCat, @ProBrand, @ProSNo, @ProQty, @ProDes, @ProFile, @Status, @User_Phone_No)" UpdateCommand="UPDATE [Upload] SET [ProCat] = @ProCat, [ProBrand] = @ProBrand, [ProSNo] = @ProSNo, [ProQty] = @ProQty, [ProDes] = @ProDes, [ProFile] = @ProFile, [Status] = @Status, [Pid] = @Pid WHERE [User_Phone_No] = @User_Phone_No">
                                <DeleteParameters>
                                    <asp:Parameter Name="User_Phone_No" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="ProCat" Type="String" />
                                    <asp:Parameter Name="ProBrand" Type="String" />
                                    <asp:Parameter Name="ProSNo" Type="String" />
                                    <asp:Parameter Name="ProQty" Type="Int32" />
                                    <asp:Parameter Name="ProDes" Type="String" />
                                    <asp:Parameter Name="ProFile" Type="String" />
                                    <asp:Parameter Name="Status" Type="String" />
                                    <asp:Parameter Name="User_Phone_No" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Pending" Name="Status2" Type="String" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="ProCat" Type="String" />
                                    <asp:Parameter Name="ProBrand" Type="String" />
                                    <asp:Parameter Name="ProSNo" Type="String" />
                                    <asp:Parameter Name="ProQty" Type="Int32" />
                                    <asp:Parameter Name="ProDes" Type="String" />
                                    <asp:Parameter Name="ProFile" Type="String" />
                                    <asp:Parameter Name="Status" Type="String" />
                                    <asp:Parameter Name="Pid" Type="Int32" />
                                    <asp:Parameter Name="User_Phone_No" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
