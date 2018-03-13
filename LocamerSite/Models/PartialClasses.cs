using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace LocamerSite.Models
{
    [MetadataType(typeof(ReservationMetadata))]
    public partial class Reservation
    {
    }

    [MetadataType(typeof(ClientMetadata))]
    public partial class Client
    {
    }

    [MetadataType(typeof(TypeSejourMetadata))]
    public partial class TypeSejour
    {
    }

    [MetadataType(typeof(OptionMetadata))]
    public partial class Option1
    {
    }

    [MetadataType(typeof(EmplacementsMetadata))]
    public partial class Emplacements
    {
    }
}