namespace PuntoFitness2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class DataIscrizione : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "DataIscrizione", c => c.DateTime());
        }
        
        public override void Down()
        {
            DropColumn("dbo.AspNetUsers", "DataIscrizione");
        }
    }
}
