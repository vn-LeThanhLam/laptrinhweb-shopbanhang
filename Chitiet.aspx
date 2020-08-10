<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Chitiet.aspx.cs" Inherits="Chitiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.swipebox/1.4.4/js/jquery.swipebox.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.swipebox/1.4.4/css/swipebox.min.css" />
<script type="text/javascript">;( function( $ ) {$( '.swipebox' ).swipebox();} )( jQuery );</script>
<div>



              <h3 class="mb-0"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></h3>
    <center>
          <asp:Image ID="Image1"  CssClass="swipebox" ImageUrl="" runat="server"></asp:Image>
    </center>


          <p class="card-text mb-auto"><asp:Label ID="Label2" runat="server" Text=""></asp:Label></p>
          <p class="text-success"><asp:Label ID="Label3" runat="server" Text=""></asp:Label> VNĐ</p>

        </div>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-lg btn-primary" Text="Đặt hàng" OnClick="Button1_Click"></asp:Button>
</asp:Content>

