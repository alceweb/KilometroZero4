using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using KilometroZero4.Models;
using Microsoft.AspNet.Identity;

namespace KilometroZero4.KZeroCommercianti.Prodottis
{
    public partial class Default : System.Web.UI.Page
    {
		protected KilometroZero4.Models.ApplicationDbContext _db = new KilometroZero4.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Prodotti entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<KilometroZero4.Models.Prodotti> GetData()
        {
            var utente = HttpContext.Current.User.Identity.GetUserId();
            return _db.Prodottis.Where( u => u.UserId == utente).Include(m => m.nome_categoria);
        }
    }
}

