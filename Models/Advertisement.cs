using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Job_Advertisements_Final_Project_Sukhman.Models
{
    //Advertisements details.
    public class Advertisement
    {
        //Advertisement id
        public int Id { get; set; }

       
        //Advertisement topic 
        public string Title { get; set; }

        //Body content of the advert
        public string Content { get; set; }

        //Advertiser contact email.
        public string AdvertiserEmail { get; set; }
    }
}
