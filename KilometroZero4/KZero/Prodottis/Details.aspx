<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Details.aspx.cs" Inherits="KilometroZero4.KZero.Prodottis.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
      <div class="jumbotron">
        <h2><%: Title %></h2>
        <div class="row">
        <div class="col-md-6">
                <img alt="" class="img-responsive img-circle" src="/Images/Ruoli.jpg" />
        </div>
            <div class="col-md-6">
                <p>Benvenuto <span class="red1"><%: HttpContext.Current.User.Identity.GetUserName() %></span></p>
                <asp:Panel ID="pnlUtente" runat="server">
                    Sei registrato come <span class="red1">Utente</span>
                    <div class="panel panel-primary">

                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="input-group">
                                <span class="input-group-btn">
                                    <asp:LinkButton ID="linkbuttonTorna" CssClass="btn btn-primary" runat="server" PostBackUrl="~/KZero/Main.aspx">Torna alla lista</asp:LinkButton>
                                </span>
                            </div><!-- /input-group -->
                        </div><!-- /.col-lg-6 -->
                    </div><!-- /.row -->
                </asp:Panel>
            </div>

        </div>
    </div>

          <asp:FormView runat="server"
            ItemType="KilometroZero4.Models.Prodotti" DataKeyNames="prodottoId"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Prodotti with prodottoId <%: Request.QueryString["prodottoId"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Dettagli del prodotto</legend>
                    <div class="row">
                        <div class="col-sm-6 col-md-4">
                            <div class="thumbnail">
                                <img src="/Images/demo.jpg" alt="...">
                                <div class="caption">
                                    <h3>
                                        <asp:DynamicControl runat="server" DataField="nome_prodotto" ID="nome_prodotto" Mode="ReadOnly" />
                                    </h3>
                                    <p>
                                        <asp:DynamicControl runat="server" DataField="descrizione_prodotto" ID="descrizione_prodotto" Mode="ReadOnly" />
                                    </p>
                                    <p>
                                        Categoria: <%#: Item.nome_categoria != null ? Item.nome_categoria.nome_categoria : "" %>
                                    </p>
                                    <p>
                                        Prezzo:
                                        <asp:DynamicControl runat="server" DataField="prezzo_prodotto" ID="prezzo_prodotto" Mode="ReadOnly" />
                                    </p>
                                    <p>
                                        Venditore:
                                        <asp:DynamicControl runat="server" DataField="UserId" ID="UserId" Mode="ReadOnly" />

                                    </p>
                                </div>
                            </div>
                            <p></p>
                        </div>
                    </div>
                        <div class="row">
                            <div class="col col-md-3">
                                <a href="/Images/demo.jpg" class="img-thumbnail"><img src="/Images/demo.jpg" alt="..."></a>

                            </div>
                                <a href="/Images/demo1.jpg" class="img-thumbnail"><img src="/Images/demo1.jpg" alt="..."></a>
                                <a href="/Images/demo2.jpg" class="img-thumbnail"><img src="/Images/demo2.jpg" alt="..."></a>
                                <a href="/Images/demo3.jpg" class="img-thumbnail"><img src="/Images/demo3.jpg" alt="..."></a>
                                <a href="/Images/demo5.png" class="img-thumbnail"><img src="/Images/demo5.png" alt="..."></a>
                        </div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
</asp:Content>

