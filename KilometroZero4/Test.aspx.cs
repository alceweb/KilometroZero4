using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KilometroZero4.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Web.Routing;
using System.Web.ModelBinding;

namespace KilometroZero4
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Access the application context and create result variables.
            Models.ApplicationDbContext context = new ApplicationDbContext();
            IdentityResult IdUserResult;

            // Create a UserManager object based on the UserStore object and the ApplicationDbContext  
            // object. Note that you can create new objects and use them as parameters in
            // a single line of code, rather than using multiple lines of code, as you did
            // for the RoleManager object.
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));

            // If the new "commerciante3" user was successfully created, 
            // add the "commerciante3" user to the "commerciante3" role. 
            IdUserResult = userMgr.AddToRole("3d07397c-2dc4-401e-9110-5a84f8923acd", "commerciante3");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Text = "ciao";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var utente = HttpContext.Current.User.Identity.GetUserId();
            Label2.Text = "Id utente = " + utente;
            Models.ApplicationDbContext context = new ApplicationDbContext();
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            userMgr.AddToRole(utente, "comune");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            var ruolo = HttpContext.Current.User.IsInRole("commerciante").ToString();
            Label2.Text = "Ruolo utente = " + ruolo;
            Models.ApplicationDbContext context = new ApplicationDbContext();
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            userMgr.AddToRole(ruolo, "comune");
        }

    }
}