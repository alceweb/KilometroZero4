using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace KilometroZero4.Models
{
    public class Nav
    {
        [Key]
        public int navId { get; set; }
        public string ruolo { get; set; }
        public string testo { get; set; }
        public string pagine { get; set; }
    }
}