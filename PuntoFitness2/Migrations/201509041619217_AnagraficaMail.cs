namespace PuntoFitness2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AnagraficaMail : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.anagraficas", "Mail", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.anagraficas", "Mail");
        }
    }
}
