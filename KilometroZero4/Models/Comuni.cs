using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace KilometroZero4.Models
{
    public class Comuni
    {
        [Key]
        public int comune_Id { get; set; }
        public string nome_comune { get; set; }
        public string provincia { get; set; }
        public string regione { get; set; }
        public DateTime data_registrazione { get; set; }
        public bool attivo { get; set; }
        public DateTime ultimo_accesso { get; set; }

    }
}