namespace PuntoFitness2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class pagine : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.pagines",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        titolo = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.pagines");
        }
    }
}
