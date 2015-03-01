<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Directives.aspx.cs" Inherits="Angular.Directives" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div ng-app="myModule" ng-controller="myController">
        <input type="text" ng-model="textVal" />
        <hs>Angular product</hs>
        <div ng-bind="textVal"></div>    
        <div ng-cloak>{{2+2}}</div>
        <div ng-show="textVal == '1'">Es 1</div>
        <div ng-hide="textVal == '1'">NO es 1</div>
        <div ng-include="'Foot.html'"></div>
        <!--div ng-repeat="x in ['first', 'second', 'third']">{{$index}} - {{x}}</!--div-->

        <div color-list colors="colorsArray"></div>
    </div>
</asp:Content>
