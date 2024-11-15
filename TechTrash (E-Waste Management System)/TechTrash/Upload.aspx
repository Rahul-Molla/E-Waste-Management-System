<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="Upload" %>

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
        }
        .auto-style5 {
            width: 441px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style12 {
            width: 100%;
        }
        .auto-style13 {
            width: 627px;
        }
        .auto-style14 {
            height: 26px;
            width: 627px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="4"><strong style="font-size:30px">
                    <br />
                    <br />
                    <br />
                    Product Details<br />
                    <br />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>Product Category</td>
                <td class="auto-style13">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>-- Select the type --</asp:ListItem>
                        <asp:ListItem>Air Conditioner</asp:ListItem>
                        <asp:ListItem>Air Cooler</asp:ListItem>
                        <asp:ListItem>Battery</asp:ListItem>
                        <asp:ListItem>Bulb</asp:ListItem>
                        <asp:ListItem>CPU</asp:ListItem>
                        <asp:ListItem>Desktop</asp:ListItem>
                        <asp:ListItem>DVD Player</asp:ListItem>
                        <asp:ListItem>Electric Kitchen Equipment</asp:ListItem>
                        <asp:ListItem>Fan</asp:ListItem>
                        <asp:ListItem>Fridge</asp:ListItem>
                        <asp:ListItem>Home Theatre</asp:ListItem>
                        <asp:ListItem>Keyboard</asp:ListItem>
                        <asp:ListItem>Laptop</asp:ListItem>
                        <asp:ListItem>Mobile Phone</asp:ListItem>
                        <asp:ListItem>Monitor</asp:ListItem>
                        <asp:ListItem>Mouse</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                        <asp:ListItem>Fan</asp:ListItem>
                        <asp:ListItem>Printer</asp:ListItem>
                        <asp:ListItem>Radio</asp:ListItem>
                        <asp:ListItem>Speaker</asp:ListItem>
                        <asp:ListItem>Tablet</asp:ListItem>
                        <asp:ListItem>Television</asp:ListItem>
                        <asp:ListItem>UPS</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>

                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>Brand of the Product</td>
               <td class="auto-style13">
                       
                   <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                       <asp:ListItem>-- Select the brand --</asp:ListItem>
                        <asp:ListItem>Acer</asp:ListItem>
                        <asp:ListItem>AMD</asp:ListItem>
                        <asp:ListItem>Apple</asp:ListItem>
                        <asp:ListItem>Asus</asp:ListItem>
                        <asp:ListItem>Atari</asp:ListItem>
                        <asp:ListItem>Bajaj</asp:ListItem>
                        <asp:ListItem>Bose</asp:ListItem>
                        <asp:ListItem>Boat</asp:ListItem>
                        <asp:ListItem>Boult</asp:ListItem>
                        <asp:ListItem>Canon</asp:ListItem>
                        <asp:ListItem>Corsair</asp:ListItem>
                        <asp:ListItem>Dell</asp:ListItem>
                        <asp:ListItem>Frontech</asp:ListItem>
                        <asp:ListItem>Godrej</asp:ListItem>
                        <asp:ListItem>Honor</asp:ListItem>
                        <asp:ListItem>HP</asp:ListItem>
                        <asp:ListItem>HTC</asp:ListItem>
                        <asp:ListItem>Intex</asp:ListItem>
                        <asp:ListItem>Intel</asp:ListItem>
                        <asp:ListItem>JBL</asp:ListItem>
                        <asp:ListItem>Lenovo</asp:ListItem>
                        <asp:ListItem>LG</asp:ListItem>
                        <asp:ListItem>Logitech</asp:ListItem>
                        <asp:ListItem>Microsoft</asp:ListItem>
                        <asp:ListItem>Micromax</asp:ListItem>
                        <asp:ListItem>Motorola</asp:ListItem>
                        <asp:ListItem>NEC</asp:ListItem>
                        <asp:ListItem>Nokia</asp:ListItem>
                        <asp:ListItem>Nothing</asp:ListItem>
                        <asp:ListItem>Nvidia</asp:ListItem>
                        <asp:ListItem>Oppo</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                        <asp:ListItem>Panasonic</asp:ListItem>
                        <asp:ListItem>Philips</asp:ListItem>
                        <asp:ListItem>Razer</asp:ListItem>
                        <asp:ListItem>Samsung</asp:ListItem>
                        <asp:ListItem>Sennheiser</asp:ListItem>
                        <asp:ListItem>Sony</asp:ListItem>
                        <asp:ListItem>Sega</asp:ListItem>
                        <asp:ListItem>Sharp</asp:ListItem>
                        <asp:ListItem>Voltas</asp:ListItem>
                        <asp:ListItem>Vivo</asp:ListItem>
                        <asp:ListItem>Whirlpool</asp:ListItem>
                        <asp:ListItem>Xbox</asp:ListItem>
                        <asp:ListItem>Xiaomi</asp:ListItem>
                   </asp:DropDownList>
                       
                   <br />
                       
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>Product Serial No.</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>Quantity in Pieces</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>Describe the Product</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>Image</td>
                <td class="auto-style13">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td style="text-align: left">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: right" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <asp:Label ID="lbl_status" runat="server"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:Label ID="lbl_rew" runat="server"></asp:Label>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <br />
                    <asp:Label ID="lbl_status0" runat="server"></asp:Label>
                    <br />
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" PostBackUrl="~/HOME..aspx" Text="Log Out" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Track Your Request" OnClick="Button3_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button13" runat="server" Text="Check Your E-Coins" PostBackUrl="~/Reward.aspx" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="4">
                    <br />
                    <br />
                    <br />
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
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
