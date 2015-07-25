using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using KilometroZero4.Models;

namespace KilometroZero4
{
    public partial class _Default : Page
    {
        protected KilometroZero4.Models.ApplicationDbContext _db = new KilometroZero4.Models.ApplicationDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Bind al modello per generare la lista prodotti dove attivo è selezionato
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<KilometroZero4.Models.Prodotti> GetData()
        {
            return _db.Prodottis.Where(p => p.attivo == true).Include(m => m.nome_categoria);
        }
        //Questo metodo visualizza tutti i prodotti attivi con il nome_prodottofiltrato dalla casella di testo
        public IQueryable<KilometroZero4.Models.Prodotti> GetData1()
        {
            var cerca = textCerca.Text.ToString();
            return _db.Prodottis.Where(p => p.nome_prodotto.Contains(cerca) && p.attivo == true).Include(m => m.nome_categoria);
        }

        // Model binding method per generare la lista di dropdownbox selezione categorie
        public IQueryable<KilometroZero4.Models.Categorie> GetDataC()
        {
            return _db.Categories.OrderBy(c=>c.nome_categoria);
        }

        // Model binding method to get List of Prodotti filtro categoria
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<KilometroZero4.Models.Prodotti> GetDataCa()
        {
            var cerca = textCerca.Text.ToString();
            string cat = lvCat.SelectedValue.ToString();
            return _db.Prodottis.Where(p => p.nome_prodotto.Contains(cerca) && p.attivo == true).Include(m => m.nome_categoria).Where(c => c.nome_categoria.nome_categoria == cat);
        }
       
        protected void linkbuttonCerca_Click(object sender, EventArgs e)
        {
            ddownCat.Visible = true;
            pnlProdotti.Visible = true;
            pnlCat.Visible = true;
            ListView1.SelectMethod = "GetData1";
        }


        protected void linkbuttonReset_Click(object sender, EventArgs e)
        {
            ddownCat.Visible = false;
            pnlProdotti.Visible = false;
            pnlCat.Visible = false;
            textCerca.Text = "";
            lblCategoria.Text = "";
            ListView1.SelectMethod = "GetData1";
        }

        protected void ddownCat_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListView1.SelectMethod = "GetDataCa";
        }

        protected void lvCat_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListView1.SelectMethod = "GetDataCa";
            lblCategoria.Text = lvCat.SelectedValue.ToString();
        }

    }
}