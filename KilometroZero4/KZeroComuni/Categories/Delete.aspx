<%@ Page Title="CategorieDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="KilometroZero4.KZeroComuni.Categories.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this Categorie?</h3>
        <asp:FormView runat="server"
            ItemType="KilometroZero4.Models.Categorie" DataKeyNames="categoria_id"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Categorie with categoria_id <%: Request.QueryString["categoria_id"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Categorie</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>categoria_id</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="categoria_id" ID="categoria_id" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>nome_categoria</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="nome_categoria" ID="nome_categoria" Mode="ReadOnly" />
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

