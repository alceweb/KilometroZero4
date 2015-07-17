using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace KilometroZero4.Models
{
    public class Categorie
    {
        [Key]
        public int categoria_id { get; set; }
        public string nome_categoria { get; set; }
    }
}