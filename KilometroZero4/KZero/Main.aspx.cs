using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using KilometroZero4.Models;

namespace KilometroZero4.KZero
{
    public partial class Main : System.Web.UI.Page
    {
        protected KilometroZero4.Models.ApplicationDbContext _db = new KilometroZero4.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            string cerca = textCerca.Text.ToString();
            if (HttpContext.Current.User.IsInRole("commerciante"))
            {
                pnlCommerciante.Visible = true;
                pnlComune.Visible = false;
                pnlUtente.Visible = false;
                ListView1.Visible = false;
            }
            else
            {
                if (HttpContext.Current.User.IsInRole("comune"))
                {
                    pnlComune.Visible = true;
                    pnlCommerciante.Visible = false;
                    pnlUtente.Visible = false;
                    ListView1.Visible = false;
                }
                else
                {
                    pnlUtente.Visible = true;
                    pnlCommerciante.Visible = false;
                    pnlComune.Visible = false;
                    ListView1.Visible = true;
                }

            }
        }
        
        // Model binding method to get List of Prodotti entries visualizza tutti dove attivo è selezionato
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<KilometroZero4.Models.Prodotti> GetData()
        {
                return _db.Prodottis.Where(p => p.attivo == true).Include(m => m.nome_categoria);
        }
        //Questo metodo visualizza tutti i rpodotti attivi con il nome_prodottofiltrato dalla casella di testo
        public IQueryable<KilometroZero4.Models.Prodotti> GetData1()
        {
            var cerca = textCerca.Text.ToString();
            return _db.Prodottis.Where(p => p.nome_prodotto.Contains(cerca) && p.attivo == true).Include(m => m.nome_categoria);
        }

        protected void linkbuttonCerca_Click(object sender, EventArgs e)
        {
            ListView1.SelectMethod = "GetData1";
        }

        protected void linkbuttonTutti_Click(object sender, EventArgs e)
        {
            ListView1.SelectMethod = "GetData";
        }

        protected void linkbuttonReset_Click(object sender, EventArgs e)
        {
            textCerca.Text = "";
            ListView1.SelectMethod = "GetData1";
        }

    }
}