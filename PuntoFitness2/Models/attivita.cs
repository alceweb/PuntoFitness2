using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace PuntoFitness2.Models
{
    public class attivita
    {
        [Key]
        public int IdAttivita {get;set;}
        public string Nome { get; set; }
        public string Descrizione { get; set; }
        public string Orari { get; set; }
        public int Attivo { get; set; }
    }
}