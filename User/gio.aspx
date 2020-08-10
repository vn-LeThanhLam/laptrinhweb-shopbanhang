<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gio.aspx.cs" Inherits="gio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <h1>Đặt hàng</h1>


        <p><asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label></p>
        Số lượng<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 18px" Width="34px"></asp:TextBox>
        <hr class="mb-4">
        <h4 class="mb-3">Chọn hình thức thanh toán</h4>

            <asp:RadioButtonList ID="RadioButtonList1" CssClass="custom-control custom-radio" runat="server">
                <asp:ListItem Selected="True">Thanh toán tiền mặt khi nhận hàng</asp:ListItem>
                <asp:ListItem>Thanh toán bằng ví MoMo</asp:ListItem>
            </asp:RadioButtonList>

        <hr class="mb-4">
        <asp:Button ID="Button1" runat="server" Text="Đặt hàng" OnClick="Button1_Click" />


</asp:Content>

