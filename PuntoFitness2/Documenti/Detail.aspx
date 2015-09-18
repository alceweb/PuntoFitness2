<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="PuntoFitness2.Documenti.Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "/Images/Sfondi/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Nome" ID="Nome" Mode="ReadOnly" />
								</div>
								<div class="col-sm-6 text-left">
									<asp:DynamicControl runat="server" DataField="Descrizione" ID="Descrizione" Mode="ReadOnly" />
								</div>
							</div>

                        </div>
                        <div class="col col-md-6">
                <asp:HyperLink ID="hl2" CssClass="btn btn-primary" runat="server" NavigateUrl='<%#"~/Documenti/" + Eval("Id") + ".pdf" %>' Text="Download" Target="_blank"></asp:HyperLink><br />
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
