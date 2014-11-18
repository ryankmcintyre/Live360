<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="/_layouts/15/sp.runtime.js"></script>
    <script type="text/javascript" src="/_layouts/15/sp.js"></script>
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Add your CSS styles to the following file-->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" /> 
    
    <!-- Include Bootstrap-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

    <!-- Add your JavaScript to the following file -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
    
</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Page Title
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <div>
        <p id="message">
            <!-- The following content will be replaced with the user name when you run the app - see App.js -->
            initializing...
        </p>
    </div>

    <div class="container">
    <div class="page-header" style="padding: 40px 20px;">
        <h1>Bootstrap-ified Expense Form</h1>
        <p class="lead bg-info">Enter your expense info below and click submit</p> <!-- Lead with informational background -->
    </div>
    <!-- Form classes auto-format controls, using grid system ensures proper wrapping on smaller screens -->
    <form role="form">
        <div>
        <div class="col-md-6 form-group">
            Date: <input type="text" id="txtDate" class="form-control" /><br />
            Description: <input type="text" size="50" maxlength="50" id="txtDescription" class="form-control" /><br />
            Attendees:  <input type="text" size="5" maxlength="2" id="txtAttendees" class="form-control" /><br />
        </div>
        <div class="col-md-6 form-group">
            Mileage:
            <select id="selMileage" class="form-control">
            <option value="1">< 10 miles</option>
            <option value="2">10 - 30 miles</option>
            <option value="3">> 30 miles</option>
            </select><br />
            Amount: <input type="text" size="10" maxlength="5" id="txtAmount" class="form-control" /><br />
        </div>
        </div>
        <div class="clearfix"></div> <!-- Simple clearfix class instead of style="clear:both" -->
        <div>
        <input class="btn btn-lg btn-default" type="submit" id="btnSubmit" value="Submit" />
        </div>
    </form>
    </div><!-- /.container -->

</asp:Content>
