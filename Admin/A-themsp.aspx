<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="A-themsp.aspx.cs" Inherits="A_themsp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <h1>THÊM SẢN PHẨM</h1>
            <h2><font color="red"><asp:Label ID="Label7" runat="server" Text=""></asp:Label></font></h2>
        <table>
            <tr><td>
        <asp:Label ID="Label1" runat="server" Text="Tên sản phẩm:"></asp:Label></td><td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

            </tr>
                        <tr><td>
        <asp:Label ID="Label5" runat="server" Text="Ảnh:"></asp:Label></td><td>
<asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>


                                                                           </td>

            </tr>

                        <tr><td>
        <asp:Label ID="Label2" runat="server" Text="Giá:"></asp:Label></td><td>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>

            </tr>
                        <tr><td>
        <asp:Label ID="Label3" runat="server" Text="Mô tả:"></asp:Label></td><td>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>

            </tr>
                        <tr><td>
        <asp:Label ID="Label4" runat="server" Text="Danh mục:"></asp:Label></td><td>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>

            </tr>
            </table>
    </center>
            <asp:Button ID="Button1" runat="server" Text="Thêm" OnClick="Button1_Click" />
</asp:Content>

