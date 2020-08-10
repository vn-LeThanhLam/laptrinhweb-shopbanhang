<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cntv.aspx.cs" Inherits="cntv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2><font color="red"><asp:Label ID="Label7" runat="server" Text=""></asp:Label></font></h2>
    <center>
    <h1>THÔNG TIN CÁ NHÂN</h1>
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

        </table>
    <h1>THÔNG TIN ĐĂNG NHẬP</h1>
        <table>

            <tr><td>
        <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label></td><td>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>


            </table>
        </center>
        <asp:Button ID="Button1" runat="server" Text="Cập nhật" OnClick="Button1_Click" />

</asp:Content>

