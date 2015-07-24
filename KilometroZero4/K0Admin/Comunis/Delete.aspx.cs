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

namespace KilometroZero4.K0Admin.Comunis
{
    public partial class Delete : System.Web.UI.Page
    {
		protected KilometroZero4.Models.ApplicationDbContext _db = new KilometroZero4.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Comuni item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int comune_Id)
        {
            using (_db)
            {
                var item = _db.Comunis.Find(comune_Id);

                if (item != null)
                {
                    _db.Comunis.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Comuni item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public KilometroZero4.Models.Comuni GetItem([FriendlyUrlSegmentsAttribute(0)]int? comune_Id)
        {
            if (comune_Id == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Comunis.Where(m => m.comune_Id == comune_Id).FirstOrDefault();
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

