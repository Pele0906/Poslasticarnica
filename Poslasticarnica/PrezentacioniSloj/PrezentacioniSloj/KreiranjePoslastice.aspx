<%@ Page Title="" Language="C#" MasterPageFile="~/GlavnaStranica.Master" AutoEventWireup="true" CodeBehind="KreiranjePoslastice.aspx.cs" Inherits="PrezentacioniSloj.KreiranjePoslastice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stranica" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#660066" Text="Vrsta poslastice:"></asp:Label>
    <asp:TextBox ID="tbKreiranjePoslastice" runat="server" BackColor="#FFCCFF" style="margin-left: 14px"></asp:TextBox>
    <asp:Button ID="btnKreirajPoslasticu" runat="server" BackColor="#C2627B" BorderColor="#C2627B" Font-Bold="True" Font-Italic="True" ForeColor="#660066" OnClick="btnKreirajPoslasticu_Click" style="margin-left: 41px" Text="Kreiraj" Width="84px" />
</asp:Content>
