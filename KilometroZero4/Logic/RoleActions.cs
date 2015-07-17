using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using KilometroZero4.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace KilometroZero4.Logic
{
    internal class RoleActions
    {
        internal void AddUserAndRole()
        {
            // Access the application context and create result variables.
            Models.ApplicationDbContext context = new ApplicationDbContext();
            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;

            // Create a RoleStore object by using the ApplicationDbContext object. 
            // The RoleStore is only allowed to contain IdentityRole objects.
            var roleStore = new RoleStore<IdentityRole>(context);

            // Create a RoleManager object that is only allowed to contain IdentityRole objects.
            // When creating the RoleManager object, you pass in (as a parameter) a new RoleStore object. 
            var roleMgr = new RoleManager<IdentityRole>(roleStore);

            // Then, you create the "commerciante" role if it doesn't already exist.
            if (!roleMgr.RoleExists("commerciante"))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole { Name = "commerciante" });
            }

            // Create a UserManager object based on the UserStore object and the ApplicationDbContext  
            // object. Note that you can create new objects and use them as parameters in
            // a single line of code, rather than using multiple lines of code, as you did
            // for the RoleManager object.
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            var appUser = new ApplicationUser
            {
                UserName = "commerciante@cr-consult.eu",
                Email = "commerciante@cr-consult.eu"
            };
            IdUserResult = userMgr.Create(appUser, "1Bassaidai@");

            // If the new "commerciante" user was successfully created, 
            // add the "commerciante" user to the "commerciante" role. 
            if (!userMgr.IsInRole(userMgr.FindByEmail("commerciante@cr-consult.eu").Id, "commerciante"))
            {
                IdUserResult = userMgr.AddToRole(userMgr.FindByEmail("commerciante@cr-consult.eu").Id, "commerciante");
            }
        }
    }
}