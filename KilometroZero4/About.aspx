<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="KilometroZero4.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
    <h2><%: Title %></h2>
        <div class="row">
            <div class="col-md-6">
                <img alt="" class="img-responsive img-circle" src="Images/lontano.jpg" />

            </div>
            <div class="col-md-3">
                qui breve descrizione veloce
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <h2>
                Chi
            </h2>
            <p>
             Un servizio erogato dal portale del comune, al pari di altri strumenti che già i cittadini utilizzano, semplice e potente allo stesso momento<br />
             In collaborazione con i commercianti locali con e per i cittadini. Per acquistare o vendere ciò che cerchi e non sai di avere a portata di mano   
            </p>
        </div>
        <div class="col-md-4">
            <h2>
                Cosa
            </h2>
    <p>Quante volte ci siamo trovati a cercare qualcosa lontano e poi ci siamo accorti di averlo a portata di mano?</p>
        <p><span class="red">K</span>ilometro <span class="red">Z</span>ero trova per te quello che potresti avere sotto casa... e potresti non saperlo</p>
        </div>
        <div class="col-md-4">
            <h2>
                Perchè
            </h2>

            <ul>
                <li class="glyphicon glyphicon-ok-circle"> Perchè Kilometro Zero e <strong>economico</strong></li>
                <li class="glyphicon glyphicon-ok-circle"> Perchè Kilometro Zero è <strong>ecologico</strong></li>
                <li class="glyphicon glyphicon-ok-circle"> Perchè Kilometro Zero è <strong>verificabile</strong></li>
                <li class="glyphicon glyphicon-ok-circle"> Perche Kilometro Zero è <strong>utile</strong></li>
            </ul>
        </div>

    </div>
</asp:Content>
