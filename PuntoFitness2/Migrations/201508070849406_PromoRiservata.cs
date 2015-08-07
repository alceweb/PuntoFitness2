namespace PuntoFitness2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class PromoRiservata : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.promozionis", "Riservata", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.promozionis", "Riservata");
        }
    }
}
