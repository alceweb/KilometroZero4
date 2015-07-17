using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using KilometroZero4.Models;

namespace KilometroZero4.KZeroCommercianti.Prodottis
{
    public partial class Details : System.Web.UI.Page
    {
		protected KilometroZero4.Models.ApplicationDbContext _db = new KilometroZero4.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Select methd to selects a single Prodotti item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public KilometroZero4.Models.Prodotti GetItem([FriendlyUrlSegmentsAttribute(0)]int? prodottoId)
        {
            if (prodottoId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Prodottis.Where(m => m.prodottoId == prodottoId).Include(m => m.nome_categoria).FirstOrDefault();
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("../Default");
            }
        }
    }
}

