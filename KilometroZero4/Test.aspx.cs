using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using KilometroZero4.Models;
using Microsoft.AspNet.Identity;
namespace KilometroZero4
{
    public partial class Test : System.Web.UI.Page
    {
		protected KilometroZero4.Models.ApplicationDbContext _db = new KilometroZero4.Models.ApplicationDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        // Model binding method per generare la lista di dropdownbox selezione categorie
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<KilometroZero4.Models.Categorie> GetDataC()
        {
            return _db.Categories;
        }
        
        // Model binding method to get List of Prodotti entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<KilometroZero4.Models.Prodotti> GetData()
        {
            return _db.Prodottis.Include(m => m.nome_categoria);
        }
        // Model binding method to get List of Prodotti filtro categoria
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<KilometroZero4.Models.Prodotti> GetDataCa()
        {
            string cat = DropDownList1.SelectedValue.ToString();
            return _db.Prodottis.Include(m => m.nome_categoria).Where(c => c.nome_categoria.nome_categoria == cat);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListView1.SelectMethod = "GetDataCa";
        }
    }
}