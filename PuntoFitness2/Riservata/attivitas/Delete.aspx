<%@ Page Title="attivitaDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="PuntoFitness2.Riservata.attivitas.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div class="body-page">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this attivita?</h3>
        <asp:FormView runat="server"
            ItemType="PuntoFitness2.Models.attivita" DataKeyNames="Id"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the attivita with Id <%: Request.QueryString["Id"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete attivita</legend>
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
</div>

</asp:Content>

