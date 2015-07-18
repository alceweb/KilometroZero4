namespace KilometroZero4.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class nav : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Navs",
                c => new
                    {
                        navId = c.Int(nullable: false, identity: true),
                        ruolo = c.String(),
                        testo = c.String(),
                        pagine = c.String(),
                    })
                .PrimaryKey(t => t.navId);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Navs");
        }
    }
}
