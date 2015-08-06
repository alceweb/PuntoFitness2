<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="PuntoFitness2.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="SlideshowContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div  style="background-color:#0094ff">
    qui<img style="height:100%; width:100%; top:50%; left:50%" src="Images/01.jpg" />
</div>
                <div data-fileupload="image" class="fileupload fileupload-new">
                    <div style="margin-left: -235px; width: 150px; height: 150px; line-height: 150px;" class="fileupload-preview thumbnail"></div>
                    <div>
                        <span class="btn btn-file" style="margin-right: 135px">
                            <span class="fileupload-new">Select image</span>
                            <span class="fileupload-exists">Change</span>
                            <input type="file" name="fileData" id="photoimg" />
                        </span>
                        <a data-dismiss="fileupload" class="btn fileupload-exists" href="#" style="margin-left: -75px">Remove</a>
                    </div>
                </div>
</asp:Content>
