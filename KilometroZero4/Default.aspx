<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KilometroZero4._Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div class="jumbotron">
        <div class="row">
            <div class="col-md-6">
            <h1><span class="red">K</span>ilometro <span class="red">Z</span>ero</h1>
            <p class="lead">Che coas stai cercando?</p>
                <!--- ricerca generica nome_prodotto--->
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="input-group">
                                <span class="input-group-btn">
                                    <asp:LinkButton ID="linkbuttonCerca" OnClick="linkbuttonCerca_Click" runat="server" CausesValidation="False"><span class="glyphicon glyphicon-search"></span>  </asp:LinkButton>
                                <asp:TextBox ID="textCerca" CssClass="form-control" runat="server" placeholder="Cosa cerchi..." ></asp:TextBox>
                                </span>
                            </div>
                            <!-- /input-group -->
                        </div>
                        <!-- /.col-lg-6 -->
                        <div class="col-lg-6">
                            <span class="input-group-btn">
                                <asp:LinkButton ID="linkbuttonReset" OnClick="linkbuttonReset_Click" runat="server"><span class="glyphicon glyphicon-remove"></span></asp:LinkButton>
                            </span>
                        </div>

                        <!-- /.col-lg-6 -->
                    </div>
                <!--- fine ricerca generica nome_prodotto--->
                <!--- filtra per categoria--->
                    <div class="row">
                        <div class="col-lg-6">
                            <asp:DropDownList CssClass="dropdownCat" AutoPostBack="true" runat="server" Visible="false" SelectMethod="GetDatac" OnSelectedIndexChanged="ddownCat_SelectedIndexChanged" CausesValidation="false" ID="ddownCat" DataTextField="nome_categoria" DataValueField="nome_categoria" >
                            </asp:DropDownList>
                        </div>
                    </div>
                <!--- fine filtra per categoria--->
            </div>
            <div class="col-md-6">
                <img class="img-responsive" src="Images/CaravaggioLente.jpg" />
            </div>
        </div>
    </div>

<%--- Pannelli lista prodotti  ---%>
    <asp:Panel ID="pnlProdotti" Visible="false" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server"
                DataKeyNames="prodottoId"
                ItemType="KilometroZero4.Models.Prodotti"
                SelectMethod="GetData">
                <EmptyDataTemplate>
                    <label class="red">Non ho trovato quello che stai cercando</label><br />
                    <label class="red1">Prova a inserire una definizione diversa</label>
                </EmptyDataTemplate>
                <LayoutTemplate>
                    <div class="row">
                        <div runat="server" id="itemPlaceholder">
                        </div>
                        <div class="row">
                        </div>
                    </div>
                    <div>
                    </div>
                    <div class="row">
                        <asp:DataPager PageSize="5" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                                <asp:NumericPagerField ButtonType="Button" NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                                <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
                <ItemTemplate>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/KZero/Prodottis/Details", Item.prodottoId) %>'>
                        <img src="../Images/demo.jpg" alt="...">
                            </asp:HyperLink>
                            <div class="caption">
                                <h3>
                                    <asp:DynamicControl runat="server" DataField="nome_prodotto" ID="nome_prodotto" Mode="ReadOnly" />
                                </h3>
                                <p>
                                    <asp:DynamicControl runat="server" DataField="descrizione_prodotto" ID="descrizione_prodotto" Mode="ReadOnly" />
                                </p>
                                <p>
                                    <h6>Categoria: <%#: Item.nome_categoria != null ? Item.nome_categoria.nome_categoria : "" %></h6>
                                </p>
                                <p>
                                    Prezzo:
                                    <asp:DynamicControl runat="server" DataField="prezzo_prodotto" ID="prezzo_prodotto" Mode="ReadOnly" />
                                </p>
                                <p>
                                    Venditore:
                                    <asp:DynamicControl runat="server" DataField="UserId" ID="UserId" Mode="ReadOnly" />

                                </p>
                                <p>
                                    <asp:HyperLink CssClass="btn btn-primary" runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/KZero/Prodottis/Details", Item.prodottoId) %>' Text="Details" />

                                </p>
                            </div>
                        </div>
                        <p></p>
                    </div>

                </ItemTemplate>
            </asp:ListView>
        </div>
    </asp:Panel>


    <div class="row">
        <div class="col-md-4">
            <h2>Sei un commerciante?</h2>
            <p><a href="FormCommerciante.aspx">Registrati</a> e metti in vetrina gli articoli del tuo negozio.
                Dai evidenza alle tue promozioni o agli articoli speciali che caratterizzano la tua attività.
                Puoì dare la passibilità a chi sta cercando una cosa particolare di trovarla nel tuo negozio
            <a class="btn btn-link" role="button" data-toggle="collapse" href="#collapseExample1" aria-expanded="false" aria-controls="collapseExample1">... &raquo;
            </a>
            </p>
            <div class="collapse" id="collapseExample1">
                <div class="well">
                    <p>Se hai un'attività commerciale puoi sfruttare questo portale e creare una tua vetrina.<br />
                        Solo i commercianti regolari possono aprire una posizione su <span class="red">K</span>ilometro <span class="red">Z</span>ero.
                    </p>
                    <p>Invia la <a href="FormCommerciante.aspx"> form di richiesta di adesione</a>.<br />
                        La richiesta verrà accettata dal tuo comune, verrà creato un utente personalizzato e ti verranno inviati username e password, con i quali accedendo all'area riservata ai commercianti, potrai iniziare a esporre i tuoi prodotti o i tuoi servizi.<br />

                    </p>
             
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <h2>Sei un cittadino?</h2>
            <p>
                Se stai cercando qualcosa e non sai dove trovarlo, oppure hai bisogno di un servizio, cerca in Kilometro Zero.
                Hai la possibilità di ricercare in tutti i negozi del tuo comune.
            <a class="btn btn-link" role="button" data-toggle="collapse" href="#collapseExample2" aria-expanded="false" aria-controls="collapseExample2">... &raquo;
            </a>
            </p>
            <div class="collapse" id="collapseExample2">
                <div class="well">
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
                    Gli amministratori comunali possono richiedere l'adesione a <span class="red">K</span>ilometro <span class="red">Z</span>ero semplicemente compilando questa <a href="#"> form</a>.<br />
                    Verrete contattati e un incaricato vi proporrà una demo personalizzata. 
             
                </div>
            </div>


        </div>
    </div>

</asp:Content>
