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
    public partial class Edit : System.Web.UI.Page
    {
		protected KilometroZero4.Models.ApplicationDbContext _db = new KilometroZero4.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Update methd to update the selected Comuni item
        // USAGE: <asp:FormView UpdateMethod="UpdateItem">
        public void UpdateItem(int  comune_Id)
        {
            using (_db)
            {
                var item = _db.Comunis.Find(comune_Id);

                if (item == null)
                {
                    // The item wasn't found
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found", comune_Id));
                    return;
                }

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes here
                    _db.SaveChanges();
                    Response.Redirect("../Default");
                }
            }
        }

        // This is the Select method to selects a single Comuni item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public KilometroZero4.Models.Comuni GetItem([FriendlyUrlSegmentsAttribute(0)]int? comune_Id)
        {
            if (comune_Id == null)
            {
                return null;
            }

            using (_db)
            {
                return _db.Comunis.Find(comune_Id);
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
