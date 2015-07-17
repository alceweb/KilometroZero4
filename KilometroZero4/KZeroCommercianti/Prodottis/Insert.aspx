<%@ Page Title="ProdottiInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="KilometroZero4.KZeroCommercianti.Prodottis.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView ID="FormView1" runat="server"
            ItemType="KilometroZero4.Models.Prodotti" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Prodotti</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                            <asp:TextBox ID="TextUserId" Visible="true" Text='<%# Bind("UserId") %>' runat="server"></asp:TextBox>
						    <asp:DynamicControl Mode="Insert" DataField="attivo" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="nome_prodotto" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="descrizione_prodotto" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="prezzo_prodotto" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="categoria_Id" 
								DataTypeName="KilometroZero4.Models.Categorie" 
								DataTextField="nome_categoria" 
								DataValueField="categoria_id" 
								UIHint="ForeignKey" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="dataInizio" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="dataFine" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
