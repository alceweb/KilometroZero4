<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KilometroZero4._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div class="row">
            <div class="col-md-6">
            <h1><span class="red">K</span>ilometro <span class="red">Z</span>ero</h1>
            <p class="lead">Trova nel tuo comune quello che cerchi</p>
            <p><a href="KZero/Main.aspx" class="btn btn-primary btn-lg">Accedi &raquo;</a></p>
            </div>
            <div class="col-md-6">
                <img class="img-responsive" src="Images/CaravaggioLente.jpg" />
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Sei un commerciante?</h2>
            <p>
                Metti in vetrina gli articoli del tuo negozio.
                Dai evidenza alle tue promozioni o agli articoli speciali che caratterizzano la tua attività.
                Puoì dare la passibilità a chi sta cercando una cosa particolare di trovarla nel tuo negozio
            <a class="btn btn-link" role="button" data-toggle="collapse" href="#collapseExample1" aria-expanded="false" aria-controls="collapseExample1">... &raquo;
            </a>
            </p>
            <div class="collapse" id="collapseExample1">
                <div >
                    Continua la descrizione approfondita di COME FUNZIONA ....
             
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <h2>Sei un cittadino?</h2>
            <p>
                Se stai cercando qualcosa e non sai dove trovarlo cerca in Kilometro Zero.
                Hai la possibilità di ricercare in tutti i negozi del tuo comune.
            <a class="btn btn-link" role="button" data-toggle="collapse" href="#collapseExample2" aria-expanded="false" aria-controls="collapseExample2">... &raquo;
            </a>
            </p>
            <div class="collapse" id="collapseExample2">
                <div class="well">
                    ...
             
                </div>
            </div>

        </div>
        <div class="col-md-4">
            <h2>Comune</h2>
            <p>
                Un servizio innovativo ed esclusivo offerto ai comercianti e ai cittadini per dare più valore al commercio a chilometro zero sul territorio
            <a class="btn btn-link" role="button" data-toggle="collapse" href="#collapseExample3" aria-expanded="false" aria-controls="collapseExample3">... &raquo;
            </a>
            </p>
            <div class="collapse" id="collapseExample3">
                <div class="well">
                    ...
             
                </div>
            </div>


        </div>
    </div>

</asp:Content>
