<%@ Page Title="Commercianti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Commercianti.aspx.cs" Inherits="KilometroZero4.Commercianti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <div class="row">
            <h2><%: Title %></h2>

            <div class="col-md-6">
                <img alt="" class="img-responsive img-circle" src="Images/commercianti.jpg" />

            </div>
            <div class="col-md-4">
                Un valore aggiunto alla proposta commerciale sul territorio!<br />
                                <a class="btn btn-primary" href="FormCommerciante.aspx">Aderisci </a>

            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <h2>
                Un servizio per il commercio
            </h2>
            <p>
                Se hai un'attività commerciale o sei un professionista, puoi sfruttare questo portale e creare una tua vetrina.<br />
                Solo i possessori di partita IVA possono aprire una posizione su <span class="red">K</span>ilometro <span class="red">Z</span>ero.
            </p>
                    <p>Invia la <a href="FormCommerciante.aspx"> form di richiesta di adesione</a>.<br />
                        La richiesta verrà accettata dal tuo comune, verrà creato un utente personalizzato e ti verranno inviati username e password, con i quali accedendo all'area riservata ai commercianti, potrai iniziare a esporre i tuoi prodotti o i tuoi servizi.<br />

                    </p>            <p>
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
