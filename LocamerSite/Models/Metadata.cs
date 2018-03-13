using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace LocamerSite.Models
{
    public class ReservationMetadata
    {
        [Display(Name = "Date début de séjour")]
        [DataType(DataType.Date)]
        public DateTime dateDebut;

        [DataType(DataType.Date)]
        [Display(Name = "Date de fin de séjour")]
        public DateTime dateFin;

    }
   
}