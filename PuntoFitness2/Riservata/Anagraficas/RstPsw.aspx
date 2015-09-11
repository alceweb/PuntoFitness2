<%@ Page Title="" Async="true" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RstPsw.aspx.cs" Inherits="PuntoFitness2.Riservata.Anagraficas.RstPsw" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
    <img class="imgBody" src='<%: "../../Images/Riservata.jpg" %>'/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div class="body-page">
        <h2 class="text-center">Reset password</h2><hr />
        <div class="row text-center">
            <div class="col col-md-6">
                Stai modificando la passsword per 
                <asp:Label ForeColor="Red" ID="Label1" runat="server" ></asp:Label>
            </div>
            <div class="col col-md-6">
                Nuova password <asp:TextBox ID="txtPsw" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" OnClientClick="return confirm('Stai resettando una password! Continuare?')" Text="Modifica" /><br />
                <asp:Label ID="lblOk" runat="server"></asp:Label>
            </div>
        </div>
</div>
</asp:Content>
