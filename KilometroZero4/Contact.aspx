<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="KilometroZero4.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <address>
        Comune di Caravaggio<br />
        Piazza Garibaldi 24043 Caravaggio BG<br />
        <abbr title="Tel.">Tel.</abbr>
        0363.55458
    </address>
    <address>
        <ul>
            <li>
                <strong>Problematiche legate all'utilizzo del sito:</strong> <a href="mailto:webservice@cr-consult.it">webservice@cr-consult.it</a>
            </li>
            <li>

                <strong>Informazioni sulle direttive comunali:</strong> <a href="mailto:Marketing@example.com">marketing@comune.it</a>
            </li>
            <li>
                <strong>Problemi di transizione commerciale</strong> <a href="mailto:almissh@gmail.com">almissh@gmail.com</a>
            </li>
            <li>
                <strong>Per farci i complimenti</strong> <a href="mailto:cesare@cr-consult.eu">cesare@cr-consultt.eu</a><br />
            </li>
        </ul>
        <hr />
    </address>
        <h2>Se preferisci inviaci direttamente il tuo messaggio tramite web</h2>
        <div class="form-horizontal">
          <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Nome</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="inputNome" required="required" placeholder="Il tuo nome">
            </div>
          </div>
          <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Cognome</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="inputCognome" required="required" placeholder="Il tuo cognome">
            </div>
          </div>
          <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Città</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="inputCittà" placeholder="Città">
            </div>
          </div>
          <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Indirizzo</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="inputIndirizzo" placeholder="Il tuo indirizzo">
            </div>
          </div>
          <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="inputEmail3" required="required" placeholder="Email">
            </div>
          </div>
          <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Messaggio</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" id="inputPassword3" required="required" placeholder="Testo del messaggio da inviare">
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <button type="submit" class="btn btn-default">Invia messaggio</button>
            </div>
          </div>
        </div>
</asp:Content>
