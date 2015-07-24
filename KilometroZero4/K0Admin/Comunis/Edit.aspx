<%@ Page Title="ComuniEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="KilometroZero4.K0Admin.Comunis.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="KilometroZero4.Models.Comuni" DefaultMode="Edit" DataKeyNames="comune_Id"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Comuni with comune_Id <%: Request.QueryString["comune_Id"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Comuni</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="nome_comune" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="provincia" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="regione" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="data_registrazione" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="attivo" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="ultimo_accesso" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

