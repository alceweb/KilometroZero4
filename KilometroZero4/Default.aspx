<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KilometroZero4._Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div class="jumbotron">
        <div class="row">
            <div class="col-md-6">
            <h1><span class="red">K</span>ilometro <span class="red">Z</span>ero</h1>
            <p class="lead">Che cosa stai cercando?</p>
                <!--- ricerca generica nome_prodotto--->
                    <div class="row">
                        <div class="col-lg-6 input-group">

                            <div class="input-group">
                                <div class="input-group-btn">
                                    <div class="btn-group">
                                <asp:TextBox ID="textCerca" CssClass="form-control" runat="server" placeholder="Cosa cerchi..." aria-describedby="basic-addon1"></asp:TextBox>
                                <asp:LinkButton ID="linkbuttonCerca" OnClick="linkbuttonCerca_Click" runat="server" CausesValidation="False"><span class="glyphicon glyphicon-search"></span>  </asp:LinkButton>
                                <asp:LinkButton ID="linkbuttonReset" OnClick="linkbuttonReset_Click" runat="server"><span class="glyphicon glyphicon-remove"></span></asp:LinkButton>
                                        <asp:Panel ID="pnlCat" Visible="false" runat="server">
                                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Categoria <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <asp:DropDownList AutoPostBack="true" runat="server" Visible="false" SelectMethod="GetDataC" OnSelectedIndexChanged="ddownCat_SelectedIndexChanged" CausesValidation="false" ID="ddownCat" DataTextField="nome_categoria" DataValueField="nome_categoria" >                            </asp:DropDownList>
                                            <asp:ListView ID="lvCat" SelectMethod="GetDataC" OnSelectedIndexChanged="lvCat_SelectedIndexChanged" DataKeyNames="nome_categoria" runat="server">
                                                <ItemTemplate>
                                                    <li>
                                                        <a href="#" runat="server"><asp:LinkButton ID="LinkButton1" CommandName="Select" runat="server"><%# Eval("nome_categoria") %></asp:LinkButton></a>

                                                    </li>
                                                </ItemTemplate>
                                                <SelectedItemTemplate>
                                                    <li>
                                                        <a href="#" runat="server"><asp:LinkButton ID="LinkButton1" runat="server"><%# Eval("nome_categoria") %></asp:LinkButton></a>

                                                    </li>
                                                </SelectedItemTemplate>
                                            </asp:ListView>
                                        </ul>
                                            <asp:Label ID="lblCategoria" runat="server" ></asp:Label>

                                        </asp:Panel>
                                    </div>
                                </div>
                            </div>
                        </div>
                            <!-- /input-group -->
                        <!-- /.col-lg-6 -->
                        <div class="col-lg-6">
                            <span class="input-group-btn">
                            </span>
                        </div>

                        <!-- /.col-lg-6 -->
                    </div>
                <!--- fine ricerca generica nome_prodotto--->
                <!--- filtra per categoria--->
                    <div class="row">
                        <div class="col-lg-6">
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
<%--- Pannello lista prodotti fine ---%>
    <div class="row">
        <div class="col-md-4 text-center">
            <h1 class="glyphicon glyphicon-euro"></h1>
            <h2>Sei un commerciante?</h2>
            <button type="button" id="myButton" data-loading-text="Loading..." class="btn btn-primary">
                Cogli l'occasione
            </button>
            <script>
                $('#myButton').on('click', function () {
                    var $btn = $(this).button('loading')
                    // business logic...
                    open(['commercianti'])
                    $btn.button('reset')
                })
            </script>

        </div>
        <div class="col-md-4 text-center">
            <h1 class="glyphicon glyphicon-user"></h1>
            <h2>Sei un cittadino?</h2>
            <button type="button" id="btnCittadino" data-loading-text="Loading..." class="btn btn-primary">
                vivi la città
            </button>
            <script>
                $('#btnCittadino').on('click', function () {
                    var $btn = $(this).button('loading')
                    // business logic...
                    open(['Cittadini'])
                    $btn.button('reset')
                })
            </script>
        </div>
        <div class="col-md-4 text-center">
            <h1 class="glyphicon glyphicon-home"></h1>
            <h2>Comune</h2>
            <button type="button" id="btnComune" data-loading-text="Loading..." class="btn btn-primary">
                Offri opportunità
            </button>
            <script>
                $('#btnComune').on('click', function () {
                    var $btn = $(this).button('loading')
                    // business logic...
                    open(['Comuni'])
                    $btn.button('reset')
                })
            </script>
        </div>
    </div>
</asp:Content>
