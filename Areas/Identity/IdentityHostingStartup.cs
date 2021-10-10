using System;
using Job_Advertisements_Final_Project_Sukhman.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

[assembly: HostingStartup(typeof(Job_Advertisements_Final_Project_Sukhman.Areas.Identity.IdentityHostingStartup))]
namespace Job_Advertisements_Final_Project_Sukhman.Areas.Identity
{
    public class IdentityHostingStartup : IHostingStartup
    {
        public void Configure(IWebHostBuilder builder)
        {
            builder.ConfigureServices((context, services) => {
                services.AddDbContext<Job_Advertisements_IdentityContext>(options =>
                    options.UseSqlServer(
                        context.Configuration.GetConnectionString("Job_Advertisements_IdentityContextConnection")));

                services.AddDefaultIdentity<IdentityUser>(options => options.SignIn.RequireConfirmedAccount = true)
                    .AddRoles<IdentityRole>()
                    .AddEntityFrameworkStores<Job_Advertisements_IdentityContext>();
            });
        }
    }
}