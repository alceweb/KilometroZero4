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
        // Model binding method to get List of Prodotti entries dove attivo è selezionato
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<KilometroZero4.Models.Prodotti> GetData()
        {
            return _db.Prodottis.Where(p => p.nome_prodotto.Contains("cappello") && p.attivo == true).Include(m => m.nome_categoria);
        }

    }
}