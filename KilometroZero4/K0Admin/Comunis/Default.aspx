<%@ Page Title="ComuniList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="KilometroZero4.K0Admin.Comunis.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Comunis List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="comune_Id" 
			ItemType="KilometroZero4.Models.Comuni"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Comunis
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="comune_Id" CommandName="Sort" CommandArgument="comune_Id" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="nome_comune" CommandName="Sort" CommandArgument="nome_comune" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="provincia" CommandName="Sort" CommandArgument="provincia" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="regione" CommandName="Sort" CommandArgument="regione" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="data_registrazione" CommandName="Sort" CommandArgument="data_registrazione" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="attivo" CommandName="Sort" CommandArgument="attivo" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="ultimo_accesso" CommandName="Sort" CommandArgument="ultimo_accesso" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="comune_Id" ID="comune_Id" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="nome_comune" ID="nome_comune" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="provincia" ID="provincia" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="regione" ID="regione" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="data_registrazione" ID="data_registrazione" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="attivo" ID="attivo" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="ultimo_accesso" ID="ultimo_accesso" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/K0Admin/Comunis/Details", Item.comune_Id) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/K0Admin/Comunis/Edit", Item.comune_Id) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/K0Admin/Comunis/Delete", Item.comune_Id) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

