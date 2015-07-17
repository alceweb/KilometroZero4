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
using KilometroZero4.Models;

namespace KilometroZero4.KZeroComuni.Categories
{
    public partial class Delete : System.Web.UI.Page
    {
		protected KilometroZero4.Models.ApplicationDbContext _db = new KilometroZero4.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Categorie item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int categoria_id)
        {
            using (_db)
            {
                var item = _db.Categories.Find(categoria_id);

                if (item != null)
                {
                    _db.Categories.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Categorie item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public KilometroZero4.Models.Categorie GetItem([FriendlyUrlSegmentsAttribute(0)]int? categoria_id)
        {
            if (categoria_id == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Categories.Where(m => m.categoria_id == categoria_id).FirstOrDefault();
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

