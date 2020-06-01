<%@ Page Title="" Language="C#" MasterPageFile="~/GlavnaStranica.Master" AutoEventWireup="true" CodeBehind="MeniRecepti.aspx.cs" Inherits="PrezentacioniSloj.MeniRecepti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stranica" runat="server">
    <br />
    <asp:GridView ID="gvTabelaRecepta" runat="server" BackColor="#C1617A">
        <EditRowStyle ForeColor="#660066" />
        <FooterStyle ForeColor="#660066" />
        <HeaderStyle ForeColor="#660066" />
        <RowStyle ForeColor="#660066" />
    </asp:GridView>
    <br />
    <asp:Button ID="btnKreirajRecept" runat="server" BackColor="#C1617A" ForeColor="#660066" OnClick="btnKreirajRecept_Click" Text="Kreirajte novi recept" BorderColor="#C1617A" Font-Bold="True" Font-Italic="True" />
</asp:Content>
