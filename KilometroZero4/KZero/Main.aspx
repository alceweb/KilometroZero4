<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="KilometroZero4.KZero.Main" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h2><%: Title %></h2>
        <div class="row">
        <div class="col-md-6">
                <img alt="" class="img-responsive img-circle" src="../Images/Ruoli.jpg" />

        </div>
            <div class="col-md-6">
                <p>Benvenuto <span class="red1"><%: HttpContext.Current.User.Identity.GetUserName() %></span></p>

                <%-- Pannello utente --%>
                <asp:Panel ID="pnlUtente" Visible="false" runat="server">
                    Sei registrato come <span class="red1">Utente</span>
                    <div class="panel panel-primary">

                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="input-group">
                                <span class="input-group-btn">
                                    <asp:LinkButton ID="linkbuttonCerca" OnClick="linkbuttonCerca_Click" runat="server"><span class="glyphicon glyphicon-search"></span>  </asp:LinkButton>
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
                    <!-- /.row -->
                </asp:Panel>

                <%-- Pannello commerciante --%>
                <asp:Panel ID="pnlCommerciante" Visible="false" runat="server">
                    Sei registrato come <span class="red1">Commerciante</span><br />
                    <a runat="server" href="~/KZeroCommercianti/Prodottis/Default" class="label label-danger" id="productLink">Gestisci i tuoi prodotti</a>
                </asp:Panel>

                <%-- Pannello comune --%>
                <asp:Panel ID="pnlComune" Visible="false" runat="server">
                    Sei registrato come <span class="red1">Comune</span><br />
                    <a runat="server" href="~/KZeroComuni/Main" class="label label-danger" id="comuneLink">Gestione Comune</a>
                </asp:Panel>

            </div>

        </div>
    </div>
<%--- lista riservata ai soli utenti semplici  ---%>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="prodottoId" 
			ItemType="KilometroZero4.Models.Prodotti"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Prodottis
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
				<asp:DataPager PageSize="5"  runat="server">
					<Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
				</asp:DataPager>
                </div>
            </LayoutTemplate>
            <ItemTemplate>
                  <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/KZero/Prodottis/Details", Item.prodottoId) %>' >
                        <img src="../Images/demo.jpg" alt="...">
                            </asp:HyperLink>                      
                      <div class="caption">
                        <h3><asp:DynamicControl runat="server" DataField="nome_prodotto" ID="nome_prodotto" Mode="ReadOnly" /></h3>
                        <p><asp:DynamicControl runat="server" DataField="descrizione_prodotto" ID="descrizione_prodotto" Mode="ReadOnly" /></p>
                          <p>
                               Categoria: <%#: Item.nome_categoria != null ? Item.nome_categoria.nome_categoria : "" %>
                          </p>
                          <p>
                            Prezzo: <asp:DynamicControl runat="server" DataField="prezzo_prodotto" ID="prezzo_prodotto" Mode="ReadOnly" />
                          </p>
                        <p>
								Venditore: <asp:DynamicControl runat="server" DataField="UserId" ID="UserId" Mode="ReadOnly" />

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
    <hr /><div class="row">
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
    <asp:Label ID="Label1" runat="server"></asp:Label>
</asp:Content>
