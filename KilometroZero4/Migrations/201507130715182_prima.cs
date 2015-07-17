namespace KilometroZero4.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class prima : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Categories",
                c => new
                    {
                        categoria_id = c.Int(nullable: false, identity: true),
                        nome_categoria = c.String(),
                    })
                .PrimaryKey(t => t.categoria_id);
            
            CreateTable(
                "dbo.Prodottis",
                c => new
                    {
                        prodottoId = c.Int(nullable: false, identity: true),
                        UserId = c.String(),
                        attivo = c.Boolean(nullable: false),
                        nome_prodotto = c.String(),
                        descrizione_prodotto = c.String(),
                        prezzo_prodotto = c.Double(nullable: false),
                        categoria_Id = c.Int(),
                        dataInizio = c.DateTime(nullable: false),
                        dataFine = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.prodottoId)
                .ForeignKey("dbo.Categories", t => t.categoria_Id)
                .Index(t => t.categoria_Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Prodottis", "categoria_Id", "dbo.Categories");
            DropIndex("dbo.Prodottis", new[] { "categoria_Id" });
            DropTable("dbo.Prodottis");
            DropTable("dbo.Categories");
        }
    }
}
