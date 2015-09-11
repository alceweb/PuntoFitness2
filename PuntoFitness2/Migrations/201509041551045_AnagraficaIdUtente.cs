namespace PuntoFitness2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AnagraficaIdUtente : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.anagraficas", "IdUtente", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.anagraficas", "IdUtente");
        }
    }
}
