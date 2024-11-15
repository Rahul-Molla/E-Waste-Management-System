<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 123px;
        }
        .auto-style12 {
            width: 100%;
        }
        .auto-style46 {
        }
        .auto-style48 {
            width: 469px;
        }
        .auto-style51 {
            width: 469px;
            height: 26px;
        }
        .auto-style52 {
            height: 26px;
        }
        .auto-style53 {
            width: 279px;
        }
        .auto-style54 {
            height: 26px;
            width: 279px;
        }
        .auto-style55 {
            width: 469px;
            height: 60px;
        }
        .auto-style56 {
            height: 60px;
        }
        .form {
    border: 2px solid #ccc;
    border-radius: 10px;
    padding: 20px;
}
        .auto-style57 {
            width: 469px;
            height: 29px;
        }
        .auto-style58 {
            height: 29px;
        }
        .auto-style59 {
            width: 279px;
            height: 29px;
        }
    </style>
</head>
<body style="height: auto; display:flexbox">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td style="display:flexbox">
                    <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl="~/Photo/reg_banner.jpg" Width="100%" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
        <table class="auto-style12">
            <tr>
                <td class="auto-style48">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style53">
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Names="Bookman Old Style" ForeColor="#333399" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_cust_name" runat="server" BackColor="#CCCCCC" BorderColor="#666699" BorderStyle="Solid" Width="289px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style48">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style53">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style48">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style53">
                    <asp:Label ID="Label35" runat="server" Font-Bold="True" Font-Names="Bookman Old Style" ForeColor="#333399" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="rdb_cust_male" runat="server" GroupName="Gender" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Male" AutoPostBack="true" />
            
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rdb_cust_female" runat="server" GroupName="Gender" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Female" AutoPostBack="true" />
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
                    <asp:RadioButton ID="rdb_cust_other" runat="server" GroupName="Gender" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Other" AutoPostBack="true" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style48">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style53">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style57"></td>
                <td class="auto-style58"></td>
                <td class="auto-style59">
                    <asp:Label ID="Label33" runat="server" Font-Bold="True" Font-Names="Bookman Old Style" ForeColor="#333399" Text="Phone No."></asp:Label>
                </td>
                <td class="auto-style58">
                    <asp:TextBox ID="txt_cust_ph" runat="server" BackColor="#CCCCCC" BorderColor="#666699" BorderStyle="Solid" Width="289px" TextMode="Phone"></asp:TextBox>
                </td>
                <td class="auto-style58"></td>
                <td class="auto-style58"></td>
            </tr>
            <tr>
                <td class="auto-style48">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style53">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style57"></td>
                <td class="auto-style58"></td>
                <td class="auto-style59">
                    <asp:Label ID="Label34" runat="server" Font-Bold="True" Font-Names="Bookman Old Style" ForeColor="#333399" Text="Email"></asp:Label>
                </td>
                <td class="auto-style58">
                    <asp:TextBox ID="txt_cust_email" runat="server" BackColor="#CCCCCC" BorderColor="#666699" BorderStyle="Solid" Width="289px" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style58"></td>
                <td class="auto-style58"></td>
            </tr>
            <tr>
                <td class="auto-style48">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style53">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style48">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style53">
                    <asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Names="Bookman Old Style" ForeColor="#333399" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_cust_add" runat="server" BackColor="#CCCCCC" BorderColor="#666699" BorderStyle="Solid" Width="289px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51"></td>
                <td class="auto-style52"></td>
                <td class="auto-style54">
                    </td>
                <td class="auto-style52">
                    </td>
                <td class="auto-style52"></td>
                <td class="auto-style52"></td>
            </tr>
            <tr>
                <td class="auto-style48">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style53">
                    <asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Names="Bookman Old Style" ForeColor="#333399" Text="Pin Code"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_cust_pin" runat="server" BackColor="#CCCCCC" BorderColor="#666699" BorderStyle="Solid" Width="289px" TextMode="Number"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51"></td>
                <td class="auto-style52"></td>
                <td class="auto-style54">
                </td>
                <td class="auto-style52">
                </td>
                <td class="auto-style52"></td>
                <td class="auto-style52"></td>
            </tr>
            <tr>
                <td class="auto-style51"></td>
                <td class="auto-style52"></td>
                <td class="auto-style54">
                    <asp:Label ID="Label38" runat="server" Font-Bold="True" Font-Names="Bookman Old Style" ForeColor="#333399" Text="Security Question"></asp:Label>
                </td>
                <td class="auto-style52">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Question" DataValueField="Question">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [Question] FROM [Question]"></asp:SqlDataSource>
                    <br />
                </td>
                <td class="auto-style52" rowspan="4"></td>
                <td class="auto-style52" rowspan="4"></td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style54">
                    &nbsp;</td>
                <td class="auto-style52">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51"></td>
                <td class="auto-style52"></td>
                <td class="auto-style54">
                    <asp:Label ID="Label39" runat="server" Font-Bold="True" Font-Names="Bookman Old Style" ForeColor="#333399" Text="Security Answer"></asp:Label>
                </td>
                <td class="auto-style52">
                    <asp:TextBox ID="txt_cust_sec_ans" runat="server" BackColor="#CCCCCC" BorderColor="#666699" BorderStyle="Solid" Width="289px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style54">
                    <asp:Label ID="Label36" runat="server" Font-Bold="True" Font-Names="Bookman Old Style" ForeColor="#FF3300" Text="Set Password"></asp:Label>
                </td>
                <td class="auto-style52">
                    <asp:TextBox ID="txt_cust_password" runat="server" BackColor="#CCCCCC" BorderColor="#666699" BorderStyle="Solid" Width="289px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style51">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style54">
                    <asp:Label ID="Label37" runat="server" Font-Bold="True" Font-Names="Bookman Old Style" ForeColor="#FF3300" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style52">
                    <asp:TextBox ID="txt_cust_confirm_password" runat="server" BackColor="#CCCCCC" BorderColor="#666699" BorderStyle="Solid" Width="289px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style52">&nbsp;</td>
                <td class="auto-style52">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style55"></td>
                <td class="auto-style56"></td>
                <td class="auto-style56" colspan="2">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_warn" runat="server" ForeColor="#FF3300" style="text-align: center"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                </td>
                <td class="auto-style56"></td>
                <td class="auto-style56"></td>
            </tr>
            <tr>
                <td class="auto-style55">&nbsp;</td>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style56" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_cust_reg" runat="server" OnClick="cust_reg_Click" Text="Register" BackColor="#FFFF99" Font-Bold="True" Font-Names="Century Gothic" />
                </td>
                <td class="auto-style56">&nbsp;</td>
                <td class="auto-style56">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style48">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style53">&nbsp;</td>
                <td>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style12">
            <tr>
                <td class="auto-style46" style="border-color: #E6E6E6; background-color: #E6E6E6">
        <table class="auto-style12">
            <tr>
                <td class="auto-style46" style="border-color: #E6E6E6; background-color: #E6E6E6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HOME..aspx">HOME</asp:HyperLink>
&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/About.aspx">ABOUT US</asp:HyperLink>
&nbsp;
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ContactUs.aspx">CONTACT US</asp:HyperLink>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Century Schoolbook" Font-Size="Large" Font-Underline="False" ForeColor="Gray" style="text-align: center" Text="TECHTRASH - Tech In The Bin, Help Earth Win!"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
            </tr>
        </table>
                </td>
            </tr>
        </table>
    </form>
    </body>
</html>

