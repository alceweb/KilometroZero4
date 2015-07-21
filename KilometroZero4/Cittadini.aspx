﻿<%@ Page Title="Cittadini" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cittadini.aspx.cs" Inherits="KilometroZero4.Cittadini" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h2><%: Title %></h2>
        <div class="row">
            <div class="col-md-6">
                <img alt="" class="img-responsive img-circle" src="Images/cittadini.jpg" />

            </div>
            <div class="col-md-4">
                Utilizzare pienamente le risorse della tua città!
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <h2>
                Un servizio per il cittadino
            </h2>
            <p>
                                Un servizio erogato dal portale del comune, al pari di altri strumenti che già i cittadini utilizzano, semplice e potente allo stesso momento<br />
                                Per poter raggiungere da casa le opportunità che la nostra città mette a disposizione        
            </p>
        </div>
        <div class="col-md-4">
            <h2>
                Opportunità
            </h2>
            <p>
             Quante volte è capitato di cercare qualcosa e non sapere di averlo in casa?<br />
                Cercare un prodotto particolare, un servizio specifico e non sapere di averlo a portata di mano.<br />
                Il tuo comune con <span class="red">K</span>ilometro <span class="red">Z</span>ero ti dà l'opportunità di verificare se nella tua città lo puoi trovare.
            </p>
        </div>
        <div class="col-md-4">
            <h2>
                La semplicità
            </h2>
            <p>
                Una piattaforma altamente tecnologica trasformata in semplice applicazione per trovare quello che cerchi.<br />
                Ti permette di sapere se quello che cerchi c'è a Kilometro Zero.
            </p>
        </div>
    </div>

</asp:Content>
