using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Job_Advertisements_Final_Project_Sukhman.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Authorization;

namespace Job_Advertisements_Final_Project_Sukhman.Controllers
{
    //Applications controller.
   
    public class ApplicationsController : Controller
    {
        private readonly Job_Advertisements_DataContext _context;

        
        //Sign in and user manager from identity framework

       private SignInManager<IdentityUser> SignInManager;
       private UserManager<IdentityUser> UserManager;

        public ApplicationsController(Job_Advertisements_DataContext context,
            SignInManager<IdentityUser> _SignInManager,
              UserManager<IdentityUser> _UserManager
            
            
            )
        {
            SignInManager = _SignInManager;
            UserManager = _UserManager;
            _context = context;
        }

        // GET: Applications
        //Gets all applications based on applicant and admin roles. Allicant can 
        //Only view ther applications
        [Authorize(Roles = "admin,applicant")]
        public async Task<IActionResult> Index()
        {
            if (SignInManager.IsSignedIn(User) && User.IsInRole("applicant"))
            {

                var job_Advertisements_DataContextRestricted = _context.Application.Include(a => a.Advertisement).Include(a => a.Applicant)
                    .Where(a => a.Applicant.Email.Equals(User.Identity.Name));

                return View(await job_Advertisements_DataContextRestricted.ToListAsync());
            }
             var job_Advertisements_DataContext = _context.Application.Include(a => a.Advertisement).Include(a => a.Applicant);
            return View(await job_Advertisements_DataContext.ToListAsync());
        }

        // GET: Applications/Details/5
        //Gets the application details.
        [Authorize(Roles = "admin,applicant")]
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var application = await _context.Application
                .Include(a => a.Advertisement)
                .Include(a => a.Applicant)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (application == null)
            {
                return NotFound();
            }

            return View(application);
        }

        // GET: Applications/Create
        //Creates the application . Accessed by applicant 
        [Authorize(Roles = "applicant")]
        public IActionResult Create(int id)
        {
            if (SignInManager.IsSignedIn(User)) {

                var Applicant = (from applicant in _context.Applicant
                                 where applicant.Email.Equals(User.Identity.Name) select applicant).FirstOrDefault();

                Application application = new Application();

                application.ApplicantId = Applicant.Id;
                application.AdvertisementId = id;

                _context.Application.Add(application);
                _context.SaveChanges();

                application = _context.Application
                                 .Include(a => a.Applicant)
                                 .Include(a => a.Advertisement)
                                 .Where(p => p.Id == application.Id).FirstOrDefault();
                return View(application);
            }


            return View();
        }

        // POST: Applications/Create





        // GET: Applications/Delete/5
        //Gets the application for delete.
        [Authorize(Roles = "admin,applicant")]
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var application = await _context.Application
                .Include(a => a.Advertisement)
                .Include(a => a.Applicant)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (application == null)
            {
                return NotFound();
            }

            return View(application);
        }

        // POST: Applications/Delete/5
        //Delets the application
        [Authorize(Roles = "admin,applicant")]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var application = await _context.Application.FindAsync(id);
            _context.Application.Remove(application);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

    }
}
