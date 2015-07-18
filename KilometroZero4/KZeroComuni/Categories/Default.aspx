<%@ Page Title="Gestione categorie commerciali" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="KilometroZero4.KZeroComuni.Categories.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Aggiungi categoria" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="categoria_id" 
			ItemType="KilometroZero4.Models.Categorie"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Categories
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="categoria_id" CommandName="Sort" CommandArgument="categoria_id" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="nome_categoria" CommandName="Sort" CommandArgument="nome_categoria" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="categoria_id" ID="categoria_id" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="nome_categoria" ID="nome_categoria" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/KZeroComuni/Categories/Details", Item.categoria_id) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/KZeroComuni/Categories/Edit", Item.categoria_id) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/KZeroComuni/Categories/Delete", Item.categoria_id) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

