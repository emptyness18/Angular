<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test2.aspx.cs" Inherits="Angular.Test2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <script>
            function MyFilterController($scope) {
                var dat = {
                    firstname: 'Juan', surname: 'Perez', joined: new Date(2000, 11, 11), consumption: 123.0092553, plan: 'gold',
                    usage: [
                        10.1254,
                        15.258,
                        11.26987,
                        9.025,
                        10.258,
                        14.58,
                        11.25876,
                        15.254,
                        12.2587
                        ]
                };
                $scope.data = dat;
            }
        </script>
        <div ng-app>
            <div ng-controller="MyFilterController">
                <span>Fisrt {{data.firstname}} </span> <br />
                <span>Fisrt {{data.firstname | lowercase}} </span><br />
                <span>Fisrt {{data.firstname | uppercase}} </span><br />
                <span>Consumption {{data.consumption | number}} </span><br />
                <span>Consumption {{data.consumption | number:2}} </span><br />
                <span>Joined {{data.joined}} </span><br />
                <span>Joined {{data.joined | date:'medium'}} </span><br />
                <span>Joined {{data.joined | date:'yyyy/MM/dd'}} </span><br />

                <lu>
                    <li ng-repeat="u in data.usage">{{u|number:2}}</li>
                </lu>
                <br />

                <lu>
                    <li ng-repeat="u in data.usage | limitTo:5">{{u|number:2}}</li>
                </lu>
                <br />

                <lu>
                    <li ng-repeat="u in data.usage | limitTo:-5">{{u|number:2}}</li>
                </lu>
                <br />

            </div>
        </div>
</asp:Content>
