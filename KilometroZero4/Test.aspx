<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="KilometroZero4.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    Nome utente<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
    Ruolo<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
    <asp:Button ID="Button1" runat="server" Text="Aggiungi utente al ruolo" OnClick="Button1_Click" /><br />
    <asp:Label ID="Label1" runat="server" ></asp:Label>
    <asp:Button ID="Button2" runat="server" Text="Scrivo ciao" OnClick="Button2_Click" /><br />
    <asp:Button ID="Button3" runat="server" Text="Scrivo Id utente" OnClick="Button3_Click" /><br />
    <asp:Button ID="Button4" runat="server" Text="Scrivo ruolo utente" OnClick="Button4_Click" /><br />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

    <asp:Label CssClass="red" ID="Labelruolo" runat="server" ></asp:Label>
    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Button" />
</asp:Content>
