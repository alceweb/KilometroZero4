using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace KilometroZero4.Models
{
    public class Prodotti
    {
        [Key]
        public int prodottoId { get; set; }
        public string UserId { get; set; }
        public bool attivo { get; set; }
        public string nome_prodotto { get; set; }
        public string descrizione_prodotto { get; set; }
        public double prezzo_prodotto { get; set; }
        public int? categoria_Id { get; set; }
        public virtual Categorie nome_categoria { get; set; }
        public DateTime dataInizio { get; set; }
        public DateTime dataFine { get; set; }
    }
}