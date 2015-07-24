<%@ Page Title="ComuniDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="KilometroZero4.K0Admin.Comunis.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this Comuni?</h3>
        <asp:FormView runat="server"
            ItemType="KilometroZero4.Models.Comuni" DataKeyNames="comune_Id"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Comuni with comune_Id <%: Request.QueryString["comune_Id"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Comuni</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>comune_Id</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="comune_Id" ID="comune_Id" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>nome_comune</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="nome_comune" ID="nome_comune" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>provincia</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="provincia" ID="provincia" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>regione</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="regione" ID="regione" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>data_registrazione</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="data_registrazione" ID="data_registrazione" Mode="ReadOnly" />
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
									<strong>ultimo_accesso</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="ultimo_accesso" ID="ultimo_accesso" Mode="ReadOnly" />
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

