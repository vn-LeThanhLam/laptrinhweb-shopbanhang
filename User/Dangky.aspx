<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Dangky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <h1>ĐĂNG KÝ TÀI KHOẢN</h1>
    <h2><font color="red"><asp:Label ID="Label7" runat="server" Text=""></asp:Label></font></h2>
    <h2>THÔNG TIN CÁ NHÂN</h2>
        <table>
            <tr><td>
        <asp:Label ID="Label1" runat="server" Text="Họ tên:"></asp:Label></td><td>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>
        <asp:Label ID="Label2" runat="server" Text="Số điện thoại:"></asp:Label></td><td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>
        <asp:Label ID="Label8" runat="server" Text="Địa chỉ:"></asp:Label></td><td>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>
        <asp:Label ID="Label6" runat="server" Text="Giới tính:"></asp:Label></td><td>
            <asp:RadioButtonList ID="RadioButtonList1" RepeatDirection="Horizontal" runat="server">
                <asp:ListItem>Nam</asp:ListItem>
                <asp:ListItem>Nữ</asp:ListItem>
                    </asp:RadioButtonList>
            </tr>
        </table>
    <h2>THÔNG TIN ĐĂNG NHẬP</h2>
        <table>


            <tr><td>
        <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label></td><td>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>
        <asp:Label ID="Label4" runat="server" Text="Mật khẩu:"></asp:Label></td><td>
        <asp:TextBox ID="TextBox3" TextMode="Password" runat="server"></asp:TextBox></td>
            </tr>
            <tr><td>
        <asp:Label ID="Label5" runat="server" Text="Nhạp lại mật khẩu:"></asp:Label></td><td>
        <asp:TextBox ID="TextBox4" TextMode="Password" runat="server"></asp:TextBox></td>
            </tr>
            </table></center>
        <asp:Button ID="Button1" runat="server" Text="Đăng ký" OnClick="Button1_Click" />

</asp:Content>

