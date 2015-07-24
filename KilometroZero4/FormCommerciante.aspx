<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormCommerciante.aspx.cs" Inherits="KilometroZero4.FormCommerciante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Iscrizione commerciante</h2>
    <h3>Compila questa form e inviala al tuo comune</h3>
    <p>La tua posizione verrà verificata: solo i commercianti regolari posso usufruire del servizio.<br />
        Una volta verificati i tuoi dati verrai contattato da un incaricato e ti verrà aperta una posizione con profilo <em>"Commerciante"</em>, dalla quale potrai gestire la tua vetrina
    </p><hr />
    <div class="form-horizontal">
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Nome</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtNome" class="form-control" runat="server" required="required" placeholder="Il tuo nome"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Cognome</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtCognome" class="form-control" runat="server" required="required" placeholder="Il tuo cognome"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Attività</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtAttività" class="form-control" runat="server" required="required" placeholder="La tua attività, negozio, artigiano, professionista, ecc."></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Codice fiscale</label>
            <div class="col-sm-10">
                <asp:TextBox ID="textCF" class="form-control" runat="server" required="required" placeholder="Codice fiscale attività"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Partita IVA</label>
            <div class="col-sm-10">
                <asp:TextBox ID="textPI" class="form-control" runat="server" required="required" placeholder="Partita Iva attività"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Città</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtCittà" class="form-control" runat="server" required="required" placeholder="Città"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Indirizzo</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtIndirizzo" class="form-control" runat="server" required="required" placeholder="Indirizzo"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Telefono</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtTelefono" class="form-control" runat="server" required="required" placeholder="Telefono/cellulare"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtMail" class="form-control" runat="server" required="required" placeholder="Email"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Messaggio</label>
            <div class="col-sm-10">
                <asp:TextBox ID="txtMessaggio" class="form-control" runat="server" TextMode="MultiLine" required="required" placeholder="Note al messaggio"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" Text="Invia richiesta" OnClick="Button1_Click"></asp:Button>
            </div>
        </div>
    </div>
</asp:Content>
