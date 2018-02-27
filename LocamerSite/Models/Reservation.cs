//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LocamerSite.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reservation
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Reservation()
        {
            this.Detail_Option = new HashSet<Detail_Option>();
            this.Emplacements = new HashSet<Emplacement>();
        }
    
        public int codeReservation { get; set; }
        public Nullable<int> codeClient { get; set; }
        public System.DateTime dateDebut { get; set; }
        public System.DateTime dateFin { get; set; }
        public Nullable<double> prixReservation { get; set; }
        public Nullable<int> codeSejour { get; set; }
    
        public virtual Client Client { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Detail_Option> Detail_Option { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Emplacement> Emplacements { get; set; }
        public virtual TypeSejour TypeSejour { get; set; }
    }
}
