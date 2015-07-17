<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="KilometroZero4.KZero.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h2><%: Title %></h2>
        <div class="row">
        <div class="col-md-6">
                <img alt="" class="img-responsive img-circle" src="../Images/Ruoli.jpg" />

        </div>
        <div class="col-md-6">
            <p>Benvenuto <span class="red1"><%: HttpContext.Current.User.Identity.GetUserName() %></span><br /></p>

<%-- Pannello utente --%>
            <asp:Panel ID="pnlUtente" Visible="false" runat="server">
            Sei registrato come <span class=red1>Utente</span><br />
                        <a runat="server" href="~/KZero/Prodottis/Default" class="label label-danger" id="A1">Lista prodotti</a>

            </asp:Panel>

<%-- Pannello commerciante --%>
            <asp:Panel ID="pnlCommerciante" Visible="false" runat="server">
            Sei registrato come <span class=red1>Commerciante</span><br />
                        <a runat="server" href="~/KZeroCommercianti/Prodottis/Default" class="label label-danger" id="productLink">Gestisci i tuoi prodotti</a>
            </asp:Panel>

<%-- Pannello comune --%>
            <asp:Panel ID="pnlComune" Visible="false" runat="server">
            Sei registrato come <span class=red1>Comune</span><br />
                        <a runat="server" href="~/KZeroComuni/Main" class="label label-danger" id="comuneLink">Gestione Comune</a>
            </asp:Panel>

        </div>

        </div>
    </div>
        <div class="row">
            <div class="col-md-4">
            <p><strong>Commerciante</strong></p>
            <ul>
                <li>Inserisce nuovi prodotti</li>
                <li>Modifica la descrizione dei prodotti</li>
                <li>Aggiunge e modificare le fotografie dei prodotti inseriti</li>
            </ul>
            </div>
            <div class="col-md-4">
            <p><strong>Utente</strong></p>
            <ul>
                <li>Visualizza i prodotti e le descrizioni</li>
                <li>Si mette in contatto con il commerciante</li>
                <li>Comunica al comune eventuali abusi o irregolarità</li>
            </ul>
            </div>
            <div class="col-md-4">
            <p><strong>Comune</strong></p>
            <ul>
                <li>Gestisce le categorie</li>
                <li>Abilita o disabilita i commecianti</li>
                <li>Riceve feed-back del sito</li>
            </ul>

            </div>

        </div>

</asp:Content>
