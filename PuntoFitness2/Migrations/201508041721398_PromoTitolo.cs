namespace PuntoFitness2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class PromoTitolo : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.promozionis", "Titolo", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.promozionis", "Titolo");
        }
    }
}
