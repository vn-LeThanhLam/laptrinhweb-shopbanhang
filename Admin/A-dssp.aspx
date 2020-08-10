<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="A-dssp.aspx.cs" Inherits="A_dssp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
           <center> <h1>DANH SÁCH SẢN PHẨM</h1>

        <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MASP" HeaderText="MASP" SortExpression="MASP" />
            <asp:BoundField DataField="TENSP" HeaderText="TENSP" SortExpression="TENSP" />
            <asp:BoundField DataField="GIA" HeaderText="GIA" SortExpression="GIA" />
            <asp:BoundField DataField="MOTA" HeaderText="MOTA" SortExpression="MOTA" />

        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        </center>

    <asp:Button ID="Button2" runat="server" Text="Thêm sản phẩm" OnClick="Button2_Click" /><br />
</asp:Content>

