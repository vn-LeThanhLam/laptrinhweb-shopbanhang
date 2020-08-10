<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Trangchu.aspx.cs" Inherits="Trangchu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center>
       <asp:DataList ID="DataList1" RepeatColumns="3" runat="server">
        <ItemTemplate>

                       <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# "Admin/Hinh/" + Eval("Img") %>' Width="250px"  />

                           <h4 class="card-title">
                              <asp:HyperLink ID="HyperLink1" CssClass="list-group-item" runat="server" NavigateUrl='<%# "Chitiet.aspx?ma=" + Eval("Masp") %>' Text='<%# Eval("Tensp") %>'></asp:HyperLink>
                           </h4>
                           <h5><asp:Label ID="Label3" runat="server" Text='<%# Eval("GIA") %>'></asp:Label> VNĐ</h5>



        </ItemTemplate>
    </asp:DataList>
    </center>
</asp:Content>

