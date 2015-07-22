﻿<%@ Page Title="serviziDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="PuntoFitness2.Riservata.servizis.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this servizi?</h3>
        <asp:FormView runat="server"
            ItemType="PuntoFitness2.Models.servizi" DataKeyNames="IdServizi"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the servizi with IdServizi <%: Request.QueryString["IdServizi"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete servizi</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>IdServizi</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="IdServizi" ID="IdServizi" Mode="ReadOnly" />
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
									<asp:DynamicControl runat="server" DataField="Descrizione" ID="Descrizione" Mode="ReadOnly" />
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
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

