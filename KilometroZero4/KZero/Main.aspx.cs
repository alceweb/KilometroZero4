using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KilometroZero4.KZero
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.IsInRole("commerciante"))
            {
                pnlCommerciante.Visible = true;
                pnlComune.Visible = false;
                pnlUtente.Visible = false;
            }
            else
            {
                if (HttpContext.Current.User.IsInRole("comune"))
                {
                    pnlComune.Visible = true;
                    pnlCommerciante.Visible = false;
                    pnlUtente.Visible = false;
                }
                else
                {
                    pnlUtente.Visible = true;
                    pnlCommerciante.Visible = false;
                    pnlComune.Visible = false;
                }

            }
        }
    }
}