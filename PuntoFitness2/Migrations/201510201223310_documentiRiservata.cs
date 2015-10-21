namespace PuntoFitness2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class documentiRiservata : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.documentis", "Riservata", c => c.Boolean(nullable: false));
            AddColumn("dbo.documentis", "Attivo", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.documentis", "Attivo");
            DropColumn("dbo.documentis", "Riservata");
        }
    }
}
