<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dangnhap.aspx.cs" Inherits="Dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <center>
    <h1>ĐĂNG NHẬP TÀI KHOẢN</h1>
        <h2><font color="red"><asp:Label ID="Label7" runat="server" Text=""></asp:Label></font></h2>
        <table>
            <tr><td>
        <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label></td><td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

            </tr>
            <tr><td>
        <asp:Label ID="Label42" runat="server" Text="Mat khau:"></asp:Label></td><td>
        <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox></td>

            </tr>
            </table>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate ="TextBox2" ErrorMessage="Mat khẩu khong the trong"></asp:RequiredFieldValidator>
    <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate ="TextBox1" ErrorMessage="Email khong the trong"></asp:RequiredFieldValidator>
    <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression ="^[a-zA-Z0-9_\-\.]+@([a-zA-Z0-9_\-\.]+\.[a-zA-Z]{2,5})$" ControlToValidate ="TextBox1" runat="server" ErrorMessage="Dia chi email ko hop le"></asp:RegularExpressionValidator>
  <br /></center>
        <asp:Button ID="Button1" runat="server" Text="Đang nhập" OnClick="Button1_Click" />
    <center>
    <br />Nếu chưa có tài khoản 
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/User/Dangky.aspx" runat="server">Đăng ký</asp:HyperLink>
  </center>
</asp:Content>

