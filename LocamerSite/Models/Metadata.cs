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

    public class ClientMetadata
    {
        [Display(Name = "Prénom du client")]
        public string prenomClient;

        [Display(Name = "Nom du client")]
        public string nomClient;

        [Display(Name = "Email du client")]
        public string emailClient;

        [Display(Name = "Télephone du client")]
        public string telephoneClient;
    }
    public class TypeSejourMetadata
    {
        [Display(Name = "Type de séjour")]
        public string libelleSejour;
    }
}