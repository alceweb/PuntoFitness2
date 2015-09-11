namespace PuntoFitness2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class distruttoanagrafica : DbMigration
    {
        public override void Up()
        {
            DropTable("dbo.anagraficas");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.anagraficas",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Nome = c.String(),
                        Cognome = c.String(),
                        DataIscrizione = c.String(),
                        IdUtente = c.String(),
                        Mail = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
        }
    }
}
