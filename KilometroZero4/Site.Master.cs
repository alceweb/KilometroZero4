using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using KilometroZero4.Models;
using System.Linq;

namespace KilometroZero4
{
    public partial class SiteMaster : MasterPage
    {
		protected KilometroZero4.Models.ApplicationDbContext _db = new KilometroZero4.Models.ApplicationDbContext();
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            System.Threading.Thread.CurrentThread.CurrentCulture
                        = new System.Globalization.CultureInfo("it-IT");
            System.Threading.Thread.CurrentThread.CurrentUICulture
                 = new System.Globalization.CultureInfo("it-IT");
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                pnlNav.Visible = true;
            }
            else
            {
                pnlNav.Visible=false;
            }
        }
        // Model metodo di binding per generare la lista di Nav in base al ruolo
        // SI USA: <asp:ListView SelectMethod="GetData">
        public IQueryable<KilometroZero4.Models.Nav> GetData()
        {
            if (HttpContext.Current.User.IsInRole("commerciante"))
            {
                Label1.Text = "Commerciante";
                return _db.Navs.Where(r => r.ruolo == "commerciante");
            }
            else
                {
                    if (HttpContext.Current.User.IsInRole("comune"))
                    {
                        Label1.Text = "Comune";
                        return _db.Navs.Where(r => r.ruolo == "comune");
                    }
                    else 
                    {
                        if (HttpContext.Current.User.IsInRole("administrator"))
                        {
                            Label1.Text = "Amministratore";
                            return _db.Navs.Where(r => r.ruolo == "administrator");
                        }
                    }
                }
            {
                return _db.Navs.Where(r => r.ruolo == "nessuno");
            }
        }

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut();
        }
    }

}