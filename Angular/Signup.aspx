<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Angular.Signup" %>
<asp:Content ID="SignUpContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body, input, select {
            font: normal 16px/1.4 Georgia;
        }
        input:not([type='checkbox']), select {
            width:250px;
        }
        input, select {
            padding:5px;
            margin-top:12px;
        }
        input[name='email'].ng-dirty.ng-invalid-email {
            color:red;
        }
        input[name='email'].ng-dirty.ng-valid-email {
            color:green;
        }
        form span, .error{
            color:red;
        }
    </style>
        <div ng-app="myModule" ng-controller="signUpController">
            <form name="registrationForm" ng-submit="person.register()">
                <div ng-show="showSuccessMessage">
                    Thank you.
                </div>
                <div ng-show="showErrorMessage">
                    Error <br/>
                </div>
                <input type="text" placeholder="First Name" name="firstName" ng-model="person.firstName" required />
                <br />
                <input type="text" placeholder="Last Name" name="lastName" ng-model="person.lastName" required />
                <br />
                <input type="email" placeholder="Email" name="email" ng-model="person.email" required />
                <br />
                <select name="level" ng-model="person.levels" ng-options="x.label as x.value from x in person.channelss" required>
                    <option value="">Where did you hear about us?</option>
                </select>
                <br />
                <input ng-model="person.newsletterOptIn" type="checkbox" name="newsletterOptIn" id="newsletterOptIn" value="newsletterOptIn" />
                <label for="newsletterOptIn">Receive monthly newsletter</label>
                <br />
                <input ng-disabled="working" type="submit" value="Register" />
                <span ng-show="working" style="padding-left:10px">
                    <img src="http://97irratia.info/airtime-widgets/images/loading.gif" />
                </span>
            </form>
        </div>
</asp:Content>
