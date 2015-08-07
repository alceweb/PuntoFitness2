namespace PuntoFitness2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ClassSlide : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.slides", "Classe", c => c.String());
            AddColumn("dbo.slides", "Classe1", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.slides", "Classe1");
            DropColumn("dbo.slides", "Classe");
        }
    }
}
