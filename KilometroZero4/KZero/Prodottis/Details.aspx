<%@ Page Title="Prodotti Details" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Details.aspx.cs" Inherits="KilometroZero4.KZero.Prodottis.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="KilometroZero4.Models.Prodotti" DataKeyNames="prodottoId"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Prodotti with prodottoId <%: Request.QueryString["prodottoId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Prodotti Details</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>prodottoId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="prodottoId" ID="prodottoId" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>UserId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="UserId" ID="UserId" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>attivo</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="attivo" ID="attivo" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>nome_prodotto</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="nome_prodotto" ID="nome_prodotto" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>descrizione_prodotto</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="descrizione_prodotto" ID="descrizione_prodotto" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>prezzo_prodotto</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="prezzo_prodotto" ID="prezzo_prodotto" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>categoria_Id</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.nome_categoria != null ? Item.nome_categoria.nome_categoria : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>dataInizio</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="dataInizio" ID="dataInizio" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>dataFine</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="dataFine" ID="dataFine" Mode="ReadOnly" />
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

