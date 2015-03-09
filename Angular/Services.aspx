<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Angular.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div ng-app="myModule" >
        <div ng-controller="serviceController">
            <hs>Angular</hs>
            <br />
            {{winWidth}}
            <br />
            {{url}}
            <br />
            {{title}}
        </div>
        <div ng-controller="dateTimeController">
            <hs>Angular 2</hs>
            <br />
            {{theDate}}
            <br />
            {{theTime}}
        </div>
    </div>


</asp:Content>
