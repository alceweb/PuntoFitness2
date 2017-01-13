namespace PuntoFitness2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class abbonamenti : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.abbonamentis",
                c => new
                    {
                        Id_Abbonamenti = c.Int(nullable: false, identity: true),
                        Id_TipoAbbonamenti = c.Int(nullable: false),
                        Data_Pagamento = c.DateTime(nullable: false),
                        Data_Scadenza = c.DateTime(nullable: false),
                        Euro = c.Double(nullable: false),
                        Id = c.String(),
                    })
                .PrimaryKey(t => t.Id_Abbonamenti)
                .ForeignKey("dbo.tipoAbbonamentis", t => t.Id_TipoAbbonamenti, cascadeDelete: true)
                .Index(t => t.Id_TipoAbbonamenti);
            
            CreateTable(
                "dbo.tipoAbbonamentis",
                c => new
                    {
                        Id_TipoAbbonamenti = c.Int(nullable: false, identity: true),
                        Tipo = c.String(),
                        Prezzo = c.Double(nullable: false),
                    })
                .PrimaryKey(t => t.Id_TipoAbbonamenti);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.abbonamentis", "Id_TipoAbbonamenti", "dbo.tipoAbbonamentis");
            DropIndex("dbo.abbonamentis", new[] { "Id_TipoAbbonamenti" });
            DropTable("dbo.tipoAbbonamentis");
            DropTable("dbo.abbonamentis");
        }
    }
}
