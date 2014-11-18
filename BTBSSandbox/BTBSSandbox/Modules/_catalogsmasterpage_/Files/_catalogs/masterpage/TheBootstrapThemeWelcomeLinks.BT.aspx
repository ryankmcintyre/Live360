<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:webpartpageexpansion="full" meta:progid="SharePoint.WebPartPage.Document" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">
	<style type="text/css">
		.v4master #s4-leftpanel { display: none; }
		.v4master .s4-ca { margin-left: 0px; }
	</style>
	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	<PublishingWebControls:EditModePanel runat="server" id="editmodestyles">
		<!-- Styles for edit mode only-->
		<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"
			After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	</PublishingWebControls:EditModePanel>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:FieldValue id="PageTitle" FieldName="Title" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderPageTitleInTitleArea" runat="server">
	<SharePointWebControls:FieldValue FieldName="Title" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleBreadcrumb" runat="server">
	<div class="breadcrumb">
		<asp:SiteMapPath runat="server" SiteMapProvider="CurrentNavigation"
			RenderCurrentNodeAsLink="false" SkipLinkText="" CurrentNodeStyle-CssClass="current" NodeStyle-CssClass="ms-sitemapdirectional"/>
	</div>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
	<div class="welcome welcome-links">
		<div class="row">
			<div class="col-md-12">
				<PublishingWebControls:EditModePanel runat="server" CssClass="edit-mode-panel title-edit">
					<SharePointWebControls:TextField runat="server" FieldName="Title"/>
				</PublishingWebControls:EditModePanel>
				<div class="splash-image">
					<PublishingWebControls:RichImageField FieldName="PublishingPageImage" runat="server"/>
				</div>
				<div class="welcome-content">
					<PublishingWebControls:RichHtmlField FieldName="PublishingPageContent" HasInitialFocus="True" MinimumEditHeight="400px" runat="server"/>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6">		
				<div class="left-column-links">
					<PublishingWebControls:SummaryLinkFieldControl id="SummaryLink1" FieldName="SummaryLinks" runat="server"/>
				</div>
			</div>
			<div class="col-md-6">
				<div class="right-column-links">
					<PublishingWebControls:SummaryLinkFieldControl id="SummaryLink2" FieldName="SummaryLinks2" runat="server"/>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12">	
				<div class="clearer">
					<div class="splash-top-zone">
						<WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="TopZone" FrameType="TitleBarOnly"
							Title="<%$Resources:cms,WebPartZoneTitle_Top%>" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-6">	
			    <div class="left-column-area">
				    <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="BottomLeftZone" FrameType="TitleBarOnly"
					    Title="<%$Resources:cms,WebPartZoneTitle_BottomLeft%>" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
			    </div>
		    </div>
		    <div class="col-md-6">
			    <div class="right-column-area">
				    <WebPartPages:WebPartZone runat="server" AllowPersonalization="false" ID="BottomRightZone" FrameType="TitleBarOnly"
					    Title="<%$Resources:cms,WebPartZoneTitle_BottomRight%>" Orientation="Vertical"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
			    </div>
		    </div>
		</div>
	</div>
</asp:Content>
