namespace PuntoFitness2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class splash1 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.splashes",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Nome = c.String(),
                        Descrizione = c.String(),
                        Link = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.splashes");
        }
    }
}
