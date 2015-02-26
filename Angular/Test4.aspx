<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test4.aspx.cs" Inherits="Angular.Test4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div ng-app="myModule" ng-controller="productDetail">
        <hs>Angular product</hs>
        <button ng-click="showHideColors()" onclick="return false;">
            {{isHidden?'Show':'Hide'}}
        </button>
        <div ng-hide="isHidden" style="background-color:red">red</div>
        <div ng-hide="isHidden" style="background-color:blue">blue</div>
    </div>
</asp:Content>
