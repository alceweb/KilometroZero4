﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using KilometroZero4.Models;

namespace KilometroZero4.KZeroNav.Navs
{
    public partial class Delete : System.Web.UI.Page
    {
		protected KilometroZero4.Models.ApplicationDbContext _db = new KilometroZero4.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // This is the Delete methd to delete the selected Nav item
        // USAGE: <asp:FormView DeleteMethod="DeleteItem">
        public void DeleteItem(int navId)
        {
            using (_db)
            {
                var item = _db.Navs.Find(navId);

                if (item != null)
                {
                    _db.Navs.Remove(item);
                    _db.SaveChanges();
                }
            }
            Response.Redirect("../Default");
        }

        // This is the Select methd to selects a single Nav item with the id
        // USAGE: <asp:FormView SelectMethod="GetItem">
        public KilometroZero4.Models.Nav GetItem([FriendlyUrlSegmentsAttribute(0)]int? navId)
        {
            if (navId == null)
            {
                return null;
            }

            using (_db)
            {
	            return _db.Navs.Where(m => m.navId == navId).FirstOrDefault();
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

