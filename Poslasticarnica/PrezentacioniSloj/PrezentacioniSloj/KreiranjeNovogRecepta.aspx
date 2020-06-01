<%@ Page Title="" Language="C#" MasterPageFile="~/GlavnaStranica.Master" AutoEventWireup="true" CodeBehind="KreiranjeNovogRecepta.aspx.cs" Inherits="PrezentacioniSloj.KreiranjeNovogRecepta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Stranica" runat="server">
    <br />
    <asp:Label ID="lbNazivRecepta" runat="server" Text="Naziv recepta:" Font-Bold="True" ForeColor="#660066"></asp:Label>
    <asp:TextBox ID="tbNazivRecepta" runat="server" style="margin-left: 94px" BackColor="#FFCCFF" ForeColor="#660066"></asp:TextBox>
    <br />
    <asp:Label ID="lbSastojciRecepta" runat="server" Text="Sastojci recepta:" Font-Bold="True" ForeColor="#660066"></asp:Label>
    <asp:TextBox ID="tbSastojciRecepta" runat="server" style="margin-left: 81px" BackColor="#FFCCFF" ForeColor="#660066" Height="90px" TextMode="MultiLine" Width="337px"></asp:TextBox>
    <br />
    <asp:Label ID="lbPriprema" runat="server" Text="Nacin pripreme recepta:" Font-Bold="True" ForeColor="#660066"></asp:Label>
    <asp:TextBox ID="tbPriprema" runat="server" style="margin-left: 34px" Width="324px" BackColor="#FFCCFF" ForeColor="#660066" Height="57px" TextMode="MultiLine"></asp:TextBox>
    <br />
    <asp:Label ID="lbVrstaPoslastice" runat="server" Font-Bold="True" ForeColor="#660066" Text="Izaberite vrstu poslastice:"></asp:Label>
    <asp:DropDownList ID="dplVrstaPoslastice" runat="server" BackColor="#FFCCFF" EnableTheming="True" Font-Italic="True" Font-Overline="False" Font-Underline="False" ForeColor="#660066" Height="16px" style="margin-left: 28px" Width="128px">
    </asp:DropDownList>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnKreiraj" runat="server" BackColor="#C2627B" ForeColor="#660066" style="margin-left: 39px" Text="Kreiraj" Width="93px" OnClick="btnKreiraj_Click" BorderColor="#C2627B" Font-Bold="True" Font-Italic="True" Font-Overline="False" />
</asp:Content>
