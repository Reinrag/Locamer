﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class LocamerDataGroupe5Entities : DbContext
    {
        public LocamerDataGroupe5Entities()
            : base("name=LocamerDataGroupe5Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Client> Clients { get; set; }
        public virtual DbSet<Detail_Option> Detail_Option { get; set; }
        public virtual DbSet<Emplacement> Emplacements { get; set; }
        public virtual DbSet<Option1> Options1 { get; set; }
        public virtual DbSet<Reservation> Reservations { get; set; }
        public virtual DbSet<Tarif> Tarifs { get; set; }
        public virtual DbSet<TypeSejour> TypeSejours { get; set; }
    }
}