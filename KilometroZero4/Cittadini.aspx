<%@ Page Title="Cittadini" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cittadini.aspx.cs" Inherits="KilometroZero4.Cittadini" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h2><%: Title %></h2>
        <div class="row">
            <div class="col-md-6">
                <img alt="" class="img-responsive img-circle" src="Images/cittadini.jpg" />

            </div>
            <div class="col-md-4">
                Utilizzare pienamente le risorse della tua città!<br />
                                <a class="btn btn-primary" href="Account/Register.aspx">Registrati </a>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <h2>
                Un servizio per il cittadino
            </h2>
            <p>
             Quante volte è capitato di cercare qualcosa e non sapere di averlo in casa?<br />
                Cercare un prodotto particolare, un servizio specifico e non sapere di averlo a portata di mano.
            </p>
        </div>
        <div class="col-md-4">
            <h2>
                Opportunità
            </h2>
                                     In più su <span class="red">K</span>ilometro <span class="red">Z</span>ero puoi mettere a disposizione degli altri le tue capacità.<br />
                    <ul>
                        <li>Ripetizioni per studenti</li>
                        <li>Corsi professionali
                            <ul>
                                <li>Musica</li>
                                <li>Personal trainer</li>
                                <li>Modellismo</li>
                            </ul>
                        </li>
                        <li>Riparazioni</li>
                      </ul>
                    L'unico limite è la tua fantasia...<br />
                    Per farlo devi registrarti <a href="Account/Register.aspx">qui</a> e avrai accesso ad un nuovo modo di offrire il tuo sapere
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
