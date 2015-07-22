namespace PuntoFitness2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _bool : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.attivitas", "Attivo", c => c.Boolean(nullable: false));
            AlterColumn("dbo.servizis", "Attivo", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.servizis", "Attivo", c => c.Int(nullable: false));
            AlterColumn("dbo.attivitas", "Attivo", c => c.Int(nullable: false));
        }
    }
}
