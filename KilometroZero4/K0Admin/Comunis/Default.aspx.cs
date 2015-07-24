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
    public partial class Default : System.Web.UI.Page
    {
		protected KilometroZero4.Models.ApplicationDbContext _db = new KilometroZero4.Models.ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Model binding method to get List of Comuni entries
        // USAGE: <asp:ListView SelectMethod="GetData">
        public IQueryable<KilometroZero4.Models.Comuni> GetData()
        {
            return _db.Comunis;
        }
    }
}

