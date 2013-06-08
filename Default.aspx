<%@ Page Language="C#" %>
<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
    <title>NuGet Private Repository</title>
    <style>
        body { font-family: Calibri; }
    </style>
</head>
<body>
    <div>
        Add the URL below to your Package Manager sources to use this NuGet feed
        <h2><em><%= Helpers.GetRepositoryUrl(Request.Url, Request.ApplicationPath) %></em></h2>

        <p>
            <a href="<%= VirtualPathUtility.ToAbsolute("~/nuget/Packages") %>">View all packages</a>
        </p>

        <%--<fieldset style="width:800px">
            <legend><strong>Repository URLs</strong></legend>
            In the package manager settings, add the following URL to the list of 
            Package Sources:
            <blockquote>
                <strong><%= Helpers.GetRepositoryUrl(Request.Url, Request.ApplicationPath) %></strong>
            </blockquote>
            <% if (String.IsNullOrEmpty(ConfigurationManager.AppSettings["apiKey"])) { %>
            To enable pushing packages to this feed using the nuget command line tool (nuget.exe). Set the api key appSetting in web.config.
            <% } %> 
            <% else { %>
            Use the command below to push packages to this feed using the nuget command line tool (nuget.exe).
            <% } %>
            <blockquote>
                <strong>nuget push {package file} -s <%= Helpers.GetPushUrl(Request.Url, Request.ApplicationPath) %> {apikey}</strong>
            </blockquote>            
        </fieldset>

        <% if (Request.IsLocal) { %>
        <p style="font-size:1.1em">
            To add packages to the feed put package files (.nupkg files) in the folder "<% = NuGet.Server.Infrastructure.PackageUtility.PackagePhysicalPath%>".
        </p>
        <% } %>--%>
    </div>
</body>
</html>
