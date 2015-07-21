<%@ Page Title="Commercianti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Commercianti.aspx.cs" Inherits="KilometroZero4.Commercianti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <div class="row">
            <h2><%: Title %></h2>

            <div class="col-md-6">
                <img alt="" class="img-responsive img-circle" src="Images/commercianti.jpg" />

            </div>
            <div class="col-md-4">
                Un valore aggiunto alla proposta commerciale sul territorio!
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <h2>
                Un servizio per il commercio
            </h2>
            <p>
                                Un servizio erogato dal portale del comune, al pari di altri strumenti che già i cittadini utilizzano, semplice e potente allo stesso momento<br />
                                Per proporre alla tua città i tuo prodotti e servizi, ecco il valore aggiunto alla tua attività.        
            </p>
            <p>
                <a class="btn btn-default" href="#nogo">Aderisci &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>
                Opportunità
            </h2>
            <p>
                Offri i tuoi servizi.<br />
                Metti in vetrina i tuoi prodotti.<br />
             In una vetrina globale sulla città, un rapporto nuovo con nuovi clienti, un modo nuovo di fare commercio.
            </p>
        </div>
        <div class="col-md-4">
            <h2>
                La semplicità
            </h2>
            <p>
                Una piattaforma altamente tecnologica trasformata in semplice applicazione per le attività commerciali.<br />
            </p>
                <ul>
                    <li>mettere in vetrina i propri prodotti</li>
                    <li>rendere visibili le offerte</li>
                    <li>offrire i servizi</li>

                </ul>
        </div>
    </div>

</asp:Content>
