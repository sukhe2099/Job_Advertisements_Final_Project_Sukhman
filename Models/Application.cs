using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Job_Advertisements_Final_Project_Sukhman.Models
{
    //Application details.
    public class Application
    {
        //Application id
        public int Id { get; set; }

        //Advert id
        public int AdvertisementId { get; set; }

        //Applicant id
        public int ApplicantId { get; set; }

        //Applicant reference
        public Applicant Applicant { get; set; }

        //Advert reference.
        public Advertisement Advertisement { get; set; }

    }
}
