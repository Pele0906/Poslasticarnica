<%@ Page Title="" Language="C#" MasterPageFile="~/GlavnaStranica.Master" AutoEventWireup="true" CodeBehind="MeniPoslastice.aspx.cs" Inherits="PrezentacioniSloj.MeniPoslastice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stranica" runat="server">
    <br />
    <asp:GridView ID="gvTabelaPoslastica" runat="server" Width="232px" BackColor="#C2627B" ForeColor="#660066">
        <AlternatingRowStyle BackColor="#C2627B" BorderColor="#C8768F" ForeColor="#660066" HorizontalAlign="Center" />
        <EditRowStyle BackColor="#C2627B" BorderColor="#C8768F" ForeColor="White" HorizontalAlign="Center" />
        <FooterStyle BackColor="#993399" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle ForeColor="#660066" Wrap="False" />
        <RowStyle BackColor="#C2627B" BorderColor="#C8768F" ForeColor="#660066" HorizontalAlign="Center" />
    </asp:GridView>
    <br />
    <asp:Button ID="btKreiraj" runat="server" Text="Kreiraj novu poslasticu" BackColor="#C2627B" BorderColor="#C2627B" Font-Bold="True" Font-Italic="True" ForeColor="#660066" OnClick="btKreiraj_Click" style="margin-left: 399px" />
    <br />
    <br />
    <asp:Label ID="lbPretrazi" runat="server" Text="Pretrazite poslasticu po nazivu:" ForeColor="#660066"></asp:Label>
    <asp:TextBox ID="tbPretraga" runat="server" style="margin-left: 12px" Width="150px" BackColor="#FFCCFF" ForeColor="#660066"></asp:TextBox>
    <asp:Button ID="btPretrazi" runat="server" BackColor="#C2627B" BorderColor="#C2627B" OnClick="btPretrazi_Click" style="margin-left: 46px" Text="Pretrazi" Width="214px" Font-Bold="True" Font-Italic="True" ForeColor="#660066" />
    <br />
    <br />
    </asp:Content>
