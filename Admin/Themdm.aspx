<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Themdm.aspx.cs" Inherits="Themdm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center>
    <h1>THÊM DANH MỤC</h1>
            <h2><font color="red"><asp:Label ID="Label7" runat="server" Text=""></asp:Label></font></h2>
        <table>
            <tr><td>
        <asp:Label ID="Label1" runat="server" Text="Tên danh mục:"></asp:Label></td><td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>

            </tr>

            </table>
    </center>
        <asp:Button ID="Button1" runat="server" Text="Thêm" OnClick="Button1_Click" />
</asp:Content>

