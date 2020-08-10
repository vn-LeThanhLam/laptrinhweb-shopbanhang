<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Button ID="Button1" runat="server" Text="Thêm danh mục" OnClick="Button1_Click" />
    <br />

    <asp:Button ID="Button3" runat="server" Text="Xem hóa đơn hiện có" OnClick="Button3_Click" /><br />
    <asp:Button ID="Button4" runat="server" Text="Xem danh sách sản phẩm" OnClick="Button4_Click" /><br />
        <asp:Button ID="Button2" runat="server" Text="Đăng xuất" OnClick="Button2_Click" /><br />
</asp:Content>

