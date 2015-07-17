﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Commercianti.aspx.cs" Inherits="KilometroZero4.Commercianti" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <div class="row">
            <h2><%: Title %></h2>

            <div class="col-md-6">
                <img alt="" class="img-responsive img-circle" src="Images/commercianti.jpg" />

            </div>
            <div class="col-md-3">
                qui breve descrizione veloce
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
                                Per poter raggiungere da casa le opportunità che la nostra città mette a disposizione        
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
             L'attenzione allo sviluppo delle opportunità legate al territorio, alla vicinanza di ciò che ci serve e nello stesso tempo il contributo allo sviluppo di iniziative e attività 
            che interagiscono con la vita del comune e dei cittadini stessi.
            </p>
        </div>
        <div class="col-md-4">
            <h2>
                La semplicità
            </h2>
            <p>
                La semplicità di uno strumento potente è il segreto dell'efficienza
            </p>
        </div>
    </div>

</asp:Content>
