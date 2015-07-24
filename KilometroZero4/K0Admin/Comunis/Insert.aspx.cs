using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using KilometroZero4.Models;

namespace KilometroZero4.K0Admin.Comunis
{
    public partial class Insert : System.Web.UI.Page
    {
		protected KilometroZero4.Models.ApplicationDbContext _db = new KilometroZero4.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // This is the Insert method to insert the entered Comuni item
        // USAGE: <asp:FormView InsertMethod="InsertItem">
        public void InsertItem()
        {
            using (_db)
            {
                var item = new KilometroZero4.Models.Comuni();

                TryUpdateModel(item);

                if (ModelState.IsValid)
                {
                    // Save changes
                    _db.Comunis.Add(item);
                    _db.SaveChanges();

                    Response.Redirect("Default");
                }
            }
        }

        protected void ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            {
                Response.Redirect("Default");
            }
        }
    }
}
