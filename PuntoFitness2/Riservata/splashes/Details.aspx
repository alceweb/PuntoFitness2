<%@ Page Title="splash details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="PuntoFitness2.Riservata.splashes.Details" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "../../Images/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div class="body-page">
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="PuntoFitness2.Models.splash" DataKeyNames="Id"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the attivita with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Dettaglio corso</legend>
                    <div class="row">
                        <div class="col col-md-10">
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Id</strong>
								</div>
								<div class="col-sm-10">
									<asp:DynamicControl runat="server" DataField="Id" ID="Id" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Nome</strong>
								</div>
								<div class="col-sm-10">
									<asp:DynamicControl runat="server" DataField="Nome" ID="Nome" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Descrizione</strong>
								</div>
								<div class="col-sm-10">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Descrizione") %>'></asp:Label>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Link</strong>
								</div>
								<div class="col-sm-10">
									<asp:DynamicControl runat="server" DataField="Link" ID="Link" Mode="ReadOnly" />
								</div>
							</div>
                         	<div class="row">
					  &nbsp;
					</div>
                        </div>
                        <div class="col col-md-2">
                            <img class="img-responsive" src='<%#"/Images/sp" + Eval("iD") + ".jpg"%>' />
                        </div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
					    <asp:HyperLink CssClass="btn btn-primary" runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Riservata/splashes/Edit", Item.Id) %>' Text="Edit" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" CssClass="btn btn-success" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
