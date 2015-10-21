namespace PuntoFitness2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class orari : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.attivitas", "Orari", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.attivitas", "Orari");
        }
    }
}
