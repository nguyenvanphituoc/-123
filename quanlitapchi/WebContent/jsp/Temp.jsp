<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="../font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="../css/vss/Chat.css" rel="stylesheet">
<link href="../css/vss/content-popup.css" rel="stylesheet">
<link href="../css/vss/vss-bundle.css" rel="stylesheet">
<link
	href="../css/vss/vss-bundle-viewcss-vYRlv_wqqudBFiINdhFB1M68ksJLXZdlG6ccY9efnUf4=.css"
	rel="stylesheet">

</head>
<%= "show value" %><%! %>
<body>
	<div
		class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable"
		tabindex="-1" role="dialog" aria-describedby="100"
		aria-labelledby="ui-id-2"
		style="position: absolute; height: auto; width: 600px; display: block; top: 63px; left: 383px; z-index: 10002;">
		<div
			class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix ui-draggable-handle bowtie"
			title="Manage Members of ET_Framework Team Room">
			<span id="ui-id-2" class="ui-dialog-title">Manage Members of
				ET_Framework Team Room</span>
			<button type="button"
				class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close"
				role="button" title="Close">
				<span
					class="ui-button-icon-primary ui-icon ui-icon-closethick bowtie-icon fa fa-close"></span><span
					class="ui-button-text">Close</span>
			</button>
			<div class="ui-dialog-titlebar-progress-container">
				<div class="ui-dialog-titlebar-progress-element"
					style="visibility: hidden;"></div>
			</div>
			<div class="ui-dialog-subtitle" style="display: none;"></div>
		</div>
		<div id="100"
			class="dialog modal-dialog ajax-panel ui-dialog-content ui-widget-content"
			style="width: auto; height: 344px; display: block; min-height: 0px; max-height: 408px;">
			<div class="room-members-dialog-container vertical-fill-layout"
				id="101" style="position: relative;">
				<div class="membership-control-header fixed-header">
					<div id="102" class="message-area-control bowtie"
						style="display: none;">
						<div class="message-header">
							<span></span><a class="linkAction show-details-action" href="#"></a>
						</div>
						<div class="error-content"></div>
						<div
							class="close-action bowtie-icon fa fa-close propagate-keydown-event"
							title="Dismiss" tabindex="0"></div>
					</div>
					<div class="membership-control-actions toolbar">
						<ul id="103" role="menubar" class="menu-bar" tabindex="0">
							<li id="mi_105" class="menu-item" tabindex="-1" role="menuitem"
								title="Add..." command="add-identity-picker-identities"><span
								class="menu-item-icon bowtie-icon bowtie-math-plus-heavy"></span><span
								class="text">Add...</span><span class="html"></span></li>
							<li id="mi_107" class="menu-item menu-item-separator"
								tabindex="-1" role="separator"><div class="separator"></div></li>
							<li id="mi_109" class="menu-item icon-only" tabindex="-1"
								role="menuitem" title="Refresh" command="refresh"><span
								class="menu-item-icon bowtie-icon bowtie-navigate-refresh"></span><span
								class="html"></span></li>
							<li id="mi_111" class="menu-item menu-item-separator"
								tabindex="-1" role="separator"><div class="separator"></div></li>
							<li id="mi_113" class="menu-item" tabindex="-1" role="menuitem"
								title="Search" command="search"><span class="text">Search</span><span
								class="html"></span></li>
						</ul>
						<div class="identity-grid-search identity-search-control"
							style="display: none;">
							<div class="search-input-wrapper">
								<label class="hidden" for="identitySearchBox">Search
									identities...</label><input class="search-input" type="text"
									name="identitySearchBox" placeholder="Find members">
							</div>
							<span class="cancel-button" tabindex="0" style="display: none;"></span><span
								class="search-button" tabindex="0"></span><span
								class="go-button" style="display: none;"></span>
						</div>
					</div>
				</div>
				<div
					class="manage-membership-grid fill-content grid identity-grid has-header grid-blurred"
					id="114" role="grid" aria-readonly="true"
					style="position: absolute; top: 43px; right: 0px; bottom: 20px; left: 0px; overflow: auto;">
					<div class="grid-header">
						<div class="grid-header-canvas" style="left: 0px;">
							<div class="grid-header-column" title="Display Name"
								style="width: 200px;">
								<div class="separator"></div>
								<div class="title identity-grid-display-name">Display Name</div>
								<div class="sort-handle"></div>
							</div>
							<div class="grid-header-column" title="Username Or Scope"
								style="width: 200px;">
								<div class="separator"></div>
								<div class="title">Username Or Scope</div>
								<div class="sort-handle"></div>
							</div>
							<div class="grid-header-column" title="" style="width: 100px;">
								<div class="separator"></div>
								<div class="title"></div>
								<div class="sort-handle"></div>
							</div>
						</div>
					</div>
					<div class="grid-canvas" tabindex="0" role="grid"
						aria-activedescendant="row_114_0">
						<div class="grid-content-spacer"
							style="width: 502px; height: 30px;"></div>
						<div class="identity-info-message" style="display: none;"></div>
						<div
							class="grid-row grid-row-normal grid-row-current grid-row-selected-blur"
							id="row_114_0" role="row"
							style="top: 0px; left: 0px; height: 30px; width: 546px;">
							<div class="grid-cell identity-cell"
								title="[ET_Framework]\ET_Framework Team" style="width: 200px;">
								<img
									class="identity-picture identity-vss.ds.v1.ims.group.f630c00a703e489ea247cbc1ca028b34 identity-image"
									alt="Image of [ET_Framework]\ET_Framework Team"><span
									class="identity-name">ET_Framework Team</span>
							</div>
							<div class="grid-cell" title="[ET_Framework]" role="gridcell"
								style="width: 200px;">[ET_Framework]</div>
							<div class="grid-cell manage-membership-action-cell"
								style="width: 100px;">
								<div>
									<span><a class="remove-identity-link">Remove</a></span>
								</div>
							</div>
						</div>
					</div>
					<div class="grid-canvas grid-canvas-droppable">
						<div class="identity-info-message" style="display: none;"></div>
					</div>
				</div>
				<div class="fixed-footer manage-membership-notifications"
					style="position: absolute; right: 0px; bottom: 0px; left: 0px; display: none;">
					<div class="icon bowtie-icon bowtie-edit-delete"
						style="float: right; cursor: pointer; display: none;"></div>
					<span>&nbsp;</span>
				</div>
			</div>
		</div>
		<div
			class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix bowtie">
			<div class="ui-dialog-buttonset">
				<button type="button" id="manage-room-members-close-button"
					class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"
					role="button">
					<span class="ui-button-text">Close</span>
				</button>
			</div>
		</div>
		<div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div>
		<div
			class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se ui-icon-grip-diagonal-se"
			style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div>
	</div>
	<script src="../js/jquery.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/vss/jquery.signalR-2.2.0.min.js"></script>
	<script src="../js/vss/vss-bundle-basejs.js"></script>
	<script src="../js/vss/hubs"></script>


</body>
</html>