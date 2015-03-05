<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Angular.Signup" %>
<asp:Content ID="SignUpContent" ContentPlaceHolderID="MainContent" runat="server">
        <div ng-app="myModule" ng-controller="signUpController">
            <form name="registrationForm" ng-submit="person.register()">
                <input type="text" placeholder="Firt Name" name="firstName" ng-model="person.firstName" required />
                <br />
                <input type="text" placeholder="Last Name" name="lastName" ng-model="person.lastName" required />
                <br />
                <input type="email" placeholder="Email" name="email" ng-model="person.email" required />
                <br />
                <select name="level" ng-model="person.levels" ng-options="x.label as x.value from x in person.channels">
                    <option value="">Where did you hear about us?</option>
                </select>
                <br />
                <input ng-model="person.newsletterOptIn" type="checkbox" name="newsletterOptIn" id="newsletterOptIn" value="newsletterOptIn" />
                <label for="newsletterOptIn">Receive monthly newsletter</label>
                <br />
                <input type="submit" value="Register" ng-click="person.register()" />
            </form>
        </div>
</asp:Content>
