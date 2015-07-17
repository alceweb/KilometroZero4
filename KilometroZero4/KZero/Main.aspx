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
            <p>Benvenuto <span class="red1"><%: HttpContext.Current.User.Identity.GetUserName() %></span><br /></p>

<%-- Pannello utente --%>
            <asp:Panel ID="pnlUtente" Visible="false" runat="server">
            Sei registrato come <span class=red1>Utente</span><br />
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
                            </span>
                            <input type="text" class="form-control" placeholder="Cosa cerchi...">
                        </div><!-- /input-group -->
                    </div><!-- /.col-lg-6 -->
                </div><!-- /.row -->
                        <a runat="server" href="~/KZero/Prodottis/Default" class="label label-danger" id="A1">Tutti i prodotti</a>
            </asp:Panel>

<%-- Pannello commerciante --%>
            <asp:Panel ID="pnlCommerciante" Visible="false" runat="server">
            Sei registrato come <span class=red1>Commerciante</span><br />
                        <a runat="server" href="~/KZeroCommercianti/Prodottis/Default" class="label label-danger" id="productLink">Gestisci i tuoi prodotti</a>
            </asp:Panel>

<%-- Pannello comune --%>
            <asp:Panel ID="pnlComune" Visible="false" runat="server">
            Sei registrato come <span class=red1>Comune</span><br />
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
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="prodottoId" CommandName="Sort" CommandArgument="prodottoId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="UserId" CommandName="Sort" CommandArgument="UserId" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="attivo" CommandName="Sort" CommandArgument="attivo" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="nome_prodotto" CommandName="Sort" CommandArgument="nome_prodotto" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="descrizione_prodotto" CommandName="Sort" CommandArgument="descrizione_prodotto" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="prezzo_prodotto" CommandName="Sort" CommandArgument="prezzo_prodotto" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="categoria_Id" CommandName="Sort" CommandArgument="categoria_Id" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="dataInizio" CommandName="Sort" CommandArgument="dataInizio" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="dataFine" CommandName="Sort" CommandArgument="dataFine" runat="Server" />
							</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
				<asp:DataPager PageSize="5"  runat="server">
					<Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
				</asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
							<td>
								<asp:DynamicControl runat="server" DataField="prodottoId" ID="prodottoId" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="UserId" ID="UserId" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="attivo" ID="attivo" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="nome_prodotto" ID="nome_prodotto" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="descrizione_prodotto" ID="descrizione_prodotto" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="prezzo_prodotto" ID="prezzo_prodotto" Mode="ReadOnly" />
							</td>
							<td>
								<%#: Item.nome_categoria != null ? Item.nome_categoria.nome_categoria : "" %>
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="dataInizio" ID="dataInizio" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="dataFine" ID="dataFine" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/KZero/Prodottis/Details", Item.prodottoId) %>' Text="Details" />
                    </td>
                </tr>
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

</asp:Content>
