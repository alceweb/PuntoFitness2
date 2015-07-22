using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace PuntoFitness2.Models
{
    public class promozioni
    {
        [Key]
        public int IdPromozione { get; set; }
        public DateTime DataInizio { get; set; }
        public DateTime DataFine { get; set; }
        public string Titolo { get; set; }
        public string Descrizione { get; set; }
    }
}