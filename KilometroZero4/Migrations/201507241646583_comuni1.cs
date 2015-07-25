namespace KilometroZero4.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class comuni1 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Comunis",
                c => new
                    {
                        comune_Id = c.Int(nullable: false, identity: true),
                        nome_comune = c.String(),
                        provincia = c.String(),
                        regione = c.String(),
                        data_registrazione = c.DateTime(nullable: false),
                        attivo = c.Boolean(nullable: false),
                        ultimo_accesso = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.comune_Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Comunis");
        }
    }
}
