<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test3.aspx.cs" Inherits="Angular.Test3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div ng-app="myModule" ng-controller="myController">
        Plan: {{ data.plan | stripDashes }}
    </div>
</asp:Content>
