<%@ Page Title="NavInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="KilometroZero4.KZeroNav.Navs.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="KilometroZero4.Models.Nav" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Nav</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                            <asp:DropDownList ID="DropDownList1" SelectedValue='<%# Bind("ruolo") %>' runat="server">
                                <asp:ListItem>amministratore</asp:ListItem>
                                <asp:ListItem>cittadino</asp:ListItem>
                                <asp:ListItem>commerciante</asp:ListItem>
                                <asp:ListItem>comune</asp:ListItem>
                                <asp:ListItem>nessuno</asp:ListItem>

                            </asp:DropDownList>
<%--                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ruolo") %>'></asp:TextBox>--%>
						    <asp:DynamicControl Mode="Insert" DataField="testo" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="pagine" runat="server" />
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
