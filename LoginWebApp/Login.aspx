<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginWebApp.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            width: 391px;
        }

        .style2 {
            width: 131px;
        }

        .style3 {
            width: 79px;
        }
        .auto-style2 {
            width: 424px;
        }
        .auto-style3 {
            width: 139px;
        }
        .auto-style4 {
            width: 139px;
            height: 40px;
        }
        .auto-style5 {
            width: 424px;
            height: 40px;
            text-align: center;
        }
        .auto-style6 {
            height: 40px;
        }
        .auto-style7 {
            height: 40px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center" class="style1" style="border: thin solid #008080;width:800px">
                <tr>
                    <td colspan="3"
                        style="text-align: center; font-weight: 700; border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #008080;">User Login Area</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">UserName :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtusername" runat="server" Width="145px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="txtusername" ErrorMessage="Please, enter username"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Password :</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="145px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="txtpassword" ErrorMessage="Please, enter password"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">
                        <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click"
                            Text="Login" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnRegister" runat="server" OnClick="BtnRegister_Click"
                            Text="Register" />
                    </td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td colspan="2" class="auto-style7">
                        <asp:Label ID="lblmsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>