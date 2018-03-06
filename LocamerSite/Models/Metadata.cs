using System;
using System.ComponentModel.DataAnnotations;

namespace LocamerSite.Models
{
    public class ReservationsMetadata
    {
        [StringLength(50)]
        [Display(Name = "Nom du client")]
        public string codeClient;

        [Display(Name = "Date début de séjour")]
        public Nullable<System.DateTime> dateDebut;

        [StringLength(50)]
        [Display(Name = "Date de fin de séjour")]
        public Nullable<System.DateTime> dateFin;;

        [StringLength(50)]
        [Display(Name = "Type de séjour")]
        public string codeSejour;
    }
   
}