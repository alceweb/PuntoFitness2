using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace PuntoFitness2.Models
{
    public class servizi
    {
        [Key]
        public int IdServizi { get; set; }
        public string Titolo { get; set; }
        public string Descrizione { get; set; }
        public int Attivo { get; set; }
    }
}