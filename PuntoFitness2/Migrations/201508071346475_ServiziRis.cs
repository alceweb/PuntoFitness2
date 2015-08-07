namespace PuntoFitness2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ServiziRis : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.servizis", "Riservata", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.servizis", "Riservata");
        }
    }
}
