<%@ Page Title="Dettaglio documento" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Details.aspx.cs" Inherits="PuntoFitness2.Riservata.documentis.Details" %>
<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfond1/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="body-page">
        <h2 class="text-center">Dettaglio documento</h2><hr />
             <asp:FormView runat="server" ID="FormView1"
            ItemType="PuntoFitness2.Models.documenti" DataKeyNames="Id"
            SelectMethod="GetItem" 
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the documenti with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <div class="row">
                        <div class="col col-md-6">
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Id</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Id" ID="Id" Mode="ReadOnly" />
								</div>
                                </div>
                            <div class="row">
								<div class="col-sm-2 text-right">
									<strong>Riservata</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Riservata" ID="Riservata" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Nome</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Nome" ID="Nome" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Descrizione</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Descrizione" ID="Descrizione" Mode="ReadOnly" />
								</div>
							</div>

                        </div>
                        <div class="col col-md-6">
                                    <iframe id="iframe" runat="server" src='<%#"~/Documenti/" + Eval("Id") + ".pdf" %>' width="300" height="420"  style="border: thin solid #FFFFFF"  />
                        </div>
                    </div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

