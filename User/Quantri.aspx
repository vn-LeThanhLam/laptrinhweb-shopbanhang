<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Quantri.aspx.cs" Inherits="Quantri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center><h3>Xem chào <% Response.Write(Session["matk"]); %> </h3><br />
    <h1>ĐƠN ĐẶT HÀNG CỦA BẠN</h1>
    <div>
    <ItemTemplate>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2">
        <ItemTemplate>

<%--            <asp:Label ID="Label6" runat="server" Text='<%# Eval("TENTK") %>'></asp:Label>--%>
            <h4>ĐƠN HÀNG #<asp:Label ID="Label6" runat="server" Text='<%# Eval("MAHD") %>'></asp:Label></h4>
            <p><b>
            Sản phẩm:</b>
           <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENSP") %>'></asp:Label></p><p>
            Giá:
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("GIA") %>'></asp:Label></p><p>
            <b>Số lượng: </b>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("SOLUONG") %>'></asp:Label></p><p>
            <b>Tổng cộng:</b>
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("TONG") %>'></asp:Label></p><p>
            <b>Hình thức thanh toán:</b><br />
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("HTTT") %>'></asp:Label></p>
<p>
            <b>Tình trạng:</b><br />
            <asp:Label ID="Label7" runat="server" Text='<%# Eval("TINHTRANG") %>'></asp:Label></p>
            <p>

            <asp:HyperLink ID="HyperLink1" CssClass="list-group-item" runat="server" NavigateUrl='<%# "huydh.aspx?ma=" + Eval("Mahd") %>' Text='Hủy đơn hàng'></asp:HyperLink>
                                                                                             </p>
        </ItemTemplate>
    </asp:DataList>

        </div>
        </center>
    <asp:Button ID="Button1" runat="server" Text="Thay đổi thông tin cá nhân" OnClick="Button1_Click"></asp:Button><br />
    <asp:Button ID="Button2" runat="server" Text="Đăng xuất" OnClick="Button2_Click" /><br />
</asp:Content>

