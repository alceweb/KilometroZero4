<%@ Page Title="NavDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="KilometroZero4.KZeroNav.Navs.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this Nav?</h3>
        <asp:FormView runat="server"
            ItemType="KilometroZero4.Models.Nav" DataKeyNames="navId"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Nav with navId <%: Request.QueryString["navId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Nav</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>navId</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="navId" ID="navId" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>ruolo</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="ruolo" ID="ruolo" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>testo</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="testo" ID="testo" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>pagine</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="pagine" ID="pagine" Mode="ReadOnly" />
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

