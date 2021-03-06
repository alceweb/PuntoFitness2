﻿<%@ Page Title="servizi Details" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Details.aspx.cs" Inherits="PuntoFitness2.Riservata.servizis.Details" %>

<asp:Content ID="Content2" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "../../Images/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
        <div class="body-page">
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="PuntoFitness2.Models.servizi" DataKeyNames="Id"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the servizi with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>servizi Details</legend>
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
									<strong>Titolo</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Titolo" ID="Titolo" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Descrizione</strong>
								</div>
								<div class="col-sm-4">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Descrizione") %>'></asp:Label>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Attivo</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Attivo" ID="Attivo" Mode="ReadOnly" />
								</div>
							</div>
 							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Riservata</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Riservata" ID="DynamicControl1" Mode="ReadOnly" />
								</div>
							</div>
                	<div class="row">
					  &nbsp;
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

