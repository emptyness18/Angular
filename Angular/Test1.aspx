<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test1.aspx.cs" Inherits="Angular.Test1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div ng-app>
        <input type="text" ng-model="counter" value="{{counter}}" ng-init="counter = 1"/>
        <span>{{counter}}</span>
        <span ng-show="counter < 5">$$$$</span>
        <button ng-click="counter = counter + 1" onclick="return false;">+</button>
        <button ng-click="counter = counter - 1" onclick="return false;">-</button>
    </div>
</asp:Content>
