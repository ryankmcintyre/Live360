<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:webpartpageexpansion="full" meta:progid="SharePoint.WebPartPage.Document" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="PublishingNavigation" Namespace="Microsoft.SharePoint.Publishing.Navigation" Assembly="Microsoft.SharePoint.Publishing, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SearchWC" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceholderID="PlaceHolderAdditionalPageHead" runat="server">
	<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	<PublishingWebControls:EditModePanel runat="server">
		<!-- Styles for edit mode only-->
		<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"
			After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>
	</PublishingWebControls:EditModePanel>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderPageTitleInTitleArea" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleBreadcrumb" runat="server"> 
	<SharePointWebControls:ListSiteMapPath runat="server" SiteMapProviders="CurrentNavigationSwitchableProvider" RenderCurrentNodeAsLink="false" PathSeparator="" CssClass="s4-breadcrumb" NodeStyle-CssClass="s4-breadcrumbNode" CurrentNodeStyle-CssClass="s4-breadcrumbCurrentNode" RootNodeStyle-CssClass="s4-breadcrumbRootNode" NodeImageOffsetX=0 NodeImageOffsetY=289 NodeImageWidth=16 NodeImageHeight=16 NodeImageUrl="/_layouts/15/images/fgimg.png?rev=23" HideInteriorRootNodes="true" SkipLinkText=""/> </asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">
	<div style="display:none">
	  <SearchWC:CatalogItemReuseWebPart
						id=ResultList1
						runat="server"
						FrameType="None"
						ResultsPerPage=1
						SelectedPropertiesJson="[&quot;Title&quot;]"
						RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Control_CatalogDefault.js"
						ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Item_CatalogTitle.js"
						UseServerSideRenderFormat="False" __MarkupType="vsattributemarkup" WebPart="true" Height="" Width=""/>
	</div>
	<div class="welcome blank-wp">
		<div class="article-header">
		  <PublishingWebControls:EditModePanel runat="server" CssClass="edit-mode-panel">
			<PublishingWebControls:CatalogSourceFieldControl FieldName="CatalogSource" runat="server" ID="SourceItem"/>
		  </PublishingWebControls:EditModePanel>
		</div>
		<div class="welcome-content">
			<SearchWC:CatalogItemReuseWebPart
						id=ResultList4
						runat="server"
						FrameType="None"
						ResultsPerPage=1
						SelectedPropertiesJson="[&quot;PublishingPageContentOWSHTML&quot;]"
						PropertyMappings="Rich Data:PublishingPageContentOWSHTML"
						RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Control_CatalogDefault.js"
						ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/System/Item_CatalogRich.js" __MarkupType="vsattributemarkup" WebPart="true" Height="" Width=""/>
		</div>
		
		<div class="row">
			<div class="col-md-9">
				<div class="row">
					<div class="col-md-12">
						<WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_Header%>" ID="Header">
							<ZoneTemplate></ZoneTemplate>
						</WebPartPages:WebPartZone>
					</div>
				</div>
			
				<div class="row">
					<div id="_invisibleIfEmpty" name="_invisibleIfEmpty" class="col-md-6">								
						<WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_TopLeft%>" ID="TopLeftRow">
							<ZoneTemplate></ZoneTemplate>
						</WebPartPages:WebPartZone>
					</div>
					<div id="_invisibleIfEmpty" name="_invisibleIfEmpty" class="col-md-6">								
						<WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_TopRight%>" ID="TopRightRow">
							<ZoneTemplate></ZoneTemplate>
						</WebPartPages:WebPartZone>
					</div>
				</div>
			
				<div class="row">
					<div id="_invisibleIfEmpty" name="_invisibleIfEmpty" class="col-md-4">								
						<WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_CenterLeft%>" ID="CenterLeftColumn">
							<ZoneTemplate></ZoneTemplate>
						</WebPartPages:WebPartZone>
					</div>
					<div id="_invisibleIfEmpty" name="_invisibleIfEmpty" class="col-md-4">								
						<WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_Center%>" ID="CenterColumn">
							<ZoneTemplate></ZoneTemplate>
						</WebPartPages:WebPartZone>			
					</div>
					<div id="_invisibleIfEmpty" name="_invisibleIfEmpty" class="col-md-4">								
						<WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_CenterRight%>" ID="CenterRightColumn">
							<ZoneTemplate></ZoneTemplate>
						</WebPartPages:WebPartZone>
					</div>
				</div>
			
				<div class="row">
					<div id="_invisibleIfEmpty" name="_invisibleIfEmpty" class="col-md-12">								
						<WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_Footer%>" ID="Footer">
							<ZoneTemplate></ZoneTemplate>
						</WebPartPages:WebPartZone>
					</div>				
				</div>
			</div>
			<div id="_invisibleIfEmpty" name="_invisibleIfEmpty" class="col-md-3">								
				<WebPartPages:WebPartZone runat="server" Title="<%$Resources:cms,WebPartZoneTitle_Right%>" ID="RightColumn" Orientation="Vertical">
					<ZoneTemplate></ZoneTemplate>
				</WebPartPages:WebPartZone>
			</div>	
		</div>
			
			
			<SharePointWebControls:ScriptBlock runat="server">if(typeof(MSOLayout_MakeInvisibleIfEmpty) == &quot;function&quot;) {MSOLayout_MakeInvisibleIfEmpty();}</SharePointWebControls:ScriptBlock>
	</div>
</asp:Content>
