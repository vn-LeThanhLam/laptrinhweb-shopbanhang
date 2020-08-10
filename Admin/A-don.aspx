<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="A-don.aspx.cs" Inherits="A_don" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <center> <h1>DANH SÁCH ĐƠN ĐẶT HÀNG</h1>

        <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MAHD" HeaderText="MAHD" SortExpression="MAHD" />
            <asp:BoundField DataField="MASP" HeaderText="MASP" SortExpression="MASP" />
            <asp:BoundField DataField="MATK" HeaderText="MATK" SortExpression="MATK" />
            <asp:BoundField DataField="GIA" HeaderText="GIA" SortExpression="GIA" />
            <asp:BoundField DataField="SOLUONG" HeaderText="SOLUONG" SortExpression="SOLUONG" />

            <asp:BoundField DataField="HTTT" HeaderText="HTTT" SortExpression="HTTT" />
            <asp:BoundField DataField="TINHTRANG" HeaderText="TINHTRANG" SortExpression="HTTT" />
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
</asp:Content>

