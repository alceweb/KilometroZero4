﻿<%@ Page Title="ProdottiList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="KilometroZero4.KZero.Prodottis.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Prodottis List</h2>
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
<%--				<asp:DataPager PageSize="5"  runat="server">
					<Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
				</asp:DataPager>--%>
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
</asp:Content>

