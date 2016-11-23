define(["require","exports"],function(require,exports){
var e=exports;e.ChatRoomNotFound="TF401056: Cannot find a room with the specified name: {0}";e.ChatAlertsErrorNoRepositorySelected="You have not selected a repository for your Code Change Alert for Project: {0}. Select a repository and then save.";e.ChatAlertsXamlBuildDisplayText="(XAML)";e.ChatRoomTemplateWorkItemChangedByMember="A work item is changed by a member of the room";e.ChatRoomGitPushCommit="Commit {0}";e.Error_CannotCreateRoom="TF401153: You do not have enough permissions to create a room.";e.ChatRoomGitPushBy="by";e.ChatRoomGitPushInRepo="in repository";e.ChatAlertsCodeTab="Code changes";e.ChatAlertsNoDataAvailable="NONE AVAILABLE";e.ServiceName="Visual Studio Team Services";e.ChatRoomGitPullRequestActive="reactivated";e.WorkItemsClearedAssignedTo="{0} Cleared Assigned To field.";e.ErrorChatRoomMessageLoadFailure="TF401135: Unable to retrieve room messages. Refresh your browser and try again.";e.ChatAlertsWorkDescription="When a work item is created or an existing work item has the state or assignment changed in/under one of the following area paths, an event will appear in the room.";e.VersionControlServiceName="Version Control";e.NameLabel="Name";e.RequestedBy="Requested by {0}";e.RoomExplorer_NewRoom="New";e.ChatRoomTruncatedCommitsPlural="{0} more commits...";e.BuildServiceName="Build";e.DeleteRoom="Delete";e.ErrorChatRoomJoinPermissions="TF401133: Your account doesn\u0027t have permissions to enter this Team Room. To get the permissions have an administrator grant {0} access to Team Room: {1}.";e.RoomNameMaxLengthReached="Room name cannot contain more than {0} characters";e.LoadingMembers="Loading members ...";e.ChatRoomTruncatedCommitsSingle="1 more commit...";e.IconEmojiBlushing="blushing";e.IconEmojiSurprised="surprised";e.IconEmojiBrokenHeart="broken heart";e.ErrorGetPermissionAfterRoomCreation="TF401220: To enter the new room, you need to refresh the page.";e.DisconnectedByServer="TF401137: You have been disconnected, possibly due to a revocation of your permissions or because the room has been deleted";e.NewRoom="New Room";e.ChatAlertsMemberEveryone="By anyone";e.ChatRoomGitPushTitlePlural=" commits were pushed to ";e.SoundIconOnTitle="Turn audio notification on";e.ChatRoomGitPullRequestCompleted="completed";e.ChatAlertsTeamProjectAlreadyExists="Team Project: {0} has already been selected as an alert. Select another team project.";e.ChatRoomGitPushTitleSingle=" commit was pushed to ";e.ChatAlertsAreaPathUnder="Under area path";e.ManageUsers="Manage users...";e.ChatAlertsDialogTitle="Configure Events for {0}";e.ErrorChatRoomSendMessageFailure="TF401136: Unable to send message(s). Refresh your browser and try again.";e.TranscriptMembersTitle="People in this transcript";e.ChatAlertsCodeDescription="When code is pushed or checked into one of the following team projects, an event will appear in the room.";e.EmptyTranscriptPastDateMessage="Sorry... No one participated in this room on {0}.";e.ChatAlertsGitRepoAlreadyExists="Git Repository: {0} for Team Project: {1} has already been selected as an alert. Select another team project.";e.ChatRoomGitDeleteBranchTitle="Deleted public ";e.NoRoomsInCollectionTree="No rooms";e.EmptyTranscriptFutureDateMessage="You have selected a future date.";e.OnlineMembersTitle="In the room";e.ChatRoomGitPullRequestCreated="created";e.ChatAlertsMemberRoom="By a room member";e.ErrorRetrievingTeamProjects="Unable to retrieve team projects.";e.NoCollectionExist="No collections exist or you do not have enough permissions.";e.ChatRoomAreaPathUnder="Under area path {0}";e.OpenCodeReviewInVisualStudio="Open code review in Visual Studio";e.ChatAlertsDialogHeaderServer="Choose which Team Foundation Server events are visible in this room.";e.EmptyTranscriptPeopleMessage="No people in the transcript";e.WorkItemsServiceName="Work Items";e.ChatAlertDeleteError="Could not delete alert. Try again.";e.ChatAlertsNoData="There were no subscriptions to save.  Add an event subscription before saving.";e.ContextMenuItem_Title_Rename="Change the name of the room";e.ChatAlertsDialogHeaderService="Choose which Visual Studio Team Services events are visible in this room.";e.RoomExplorer_Refresh="Refresh";e.ContextMenuItem_Title_Security="Security settings";e.MessageInputWatermark="Post a message";e.ChatAlertsPullRequestDescription="When a pull request is created, approved, rejected, or completed in one of the following repositories, an event will appear in the room.";e.ChatAlertsCodeReviewTab="Code reviews";e.RoomNameRequired="Name cannot be empty";e.IconEmojiWarning="warning";e.ChatRoomGitPushTooltip="Reference {0} was updated to {1}";e.IconEmojiConfused="confused";e.ConfigureEvents="Manage events...";e.MemberJustArrived="Just joined";e.ChatAlertsErrorRetrieving="Unable to query for alerts.";e.IconEmojiBug="bug";e.IconEmojiYes="yes";e.IconEmojiSad="sad";e.ChatAlertsErrorSaving="Your changes could not be saved.";e.ContextMenuItem_Title_Events="Manage room events";e.ChatRoomGitPullRequestLink="Pull request {0}";e.Error_ChatRoomCreateUpdateRoom="TF401216: There was an error creating or updating the room.";e.IconEmojiCoffee="coffee";e.ContextMenuItem_Title_Delete="Delete the room and all its messages";e.ChatAlertsCodeReviewDescription="When a code review is created in/under one of the following area paths, an event will appear in the room.";e.IconEmojiCrying="crying";e.WorkItemsCreatedBy="Created by {0}.";e.ChatAlertsSelectProject="Select a team project";e.ChatAlertsWarning="Remember that selected events are visible to all members of the team room, even if they don\u0027t have permission to view the related artifact.";e.NoMentionMatchesFound="No matches found";e.ChatAlertsMoreInfo="More Information";e.MentionMessage="You were mentioned";e.ErrorChatRoomConnectionFailure="TF401132: Unable to connect you to the room. Refresh your browser and try again.";e.RoomExplorer_CollapsedTitle="Rooms explorer";e.IconEmojiFlower="flower";e.ChatRoomGitPullRequestApprovedWithComment="has approved and left suggestions for";e.NoRoomsInCollection="There are no rooms in this collection.";e.LoadingChat="Loading messages ...";e.RenameRoom="Rename Room";e.ContextMenuItem_Rename="Rename";e.IconEmojiHeart="heart";e.IconEmojiCheck="check";e.IconEmojiMusic="music";e.IconEmojiLaugh="laugh";e.IconEmojiAngel="angel";e.IconEmojiAngry="angry";e.IconEmojiAlien="alien";e.IconEmojiDrink="drink";e.IconEmojiSmile="smile";e.MemberJustLeft="Left the room";e.IconEmojiPizza="pizza";e.IconEmojiPhone="phone";e.IconEmojiPlane="plane";e.CollectionNameLabel="Collection";e.ErrorDismiss="Dismiss";e.ChatAlertsWorkTab="Work item updates";e.ChatAlertsAreaPathIn="In area path";e.ChatEventCannotBeDeleted="This event can\u0027t be deleted. It was generated from your team settings or favorites.";e.ChatRoomGitPullRequestRescinded="rescinded their feedback for";e.ChatRoomAreaPathIn="In area path {0}";e.MessageCharacterCount="{0}/{1}";e.ChatAlertsSelectBuild="Select a build definition";e.ChatAlertsBuildSummary="Build Summary";e.ContextMenuItem_Security="Security...";e.ErrorChatRoomMemberLoadFailure="TF401134: Unable to retrieve online users in the room. Refresh your browser and try again.";e.ConfirmDeleteRoom="Are you sure you want to delete {0} room?";e.SoundIconOffTitle="Turn audio notification off";e.IconEmojiQuestion="question";e.ManageRoomMembersDialogTitle="Manage Members of {0}";e.ChatAlertsBuildDescription="When any of the following build definitions complete, an event will appear in the room indicating the status of the build.";e.ErrorCouldNotSendMessage="Could not send";e.ChatRoomGitPullRequestAbandoned="abandoned";e.ChatRoomGitPullRequestRejected="has rejected the code changes in";e.Loading="Loading...";e.ChatRoomGitPullRequestTooltip="Pull request {0}: {1}.";e.OfflineMembersTitle="Away";e.ChatRoomGitPullRequestApproved="has approved the code in";e.Error_DuplicateRoom="TF401143: Room with name \u0027{0}\u0027 already exists.";e.ChatAlertsSelectAreaPath="Select an area path";e.WorkItemsTransitionTo="Transitioned to {0} by {1}.";e.ChatAlertsAreaPathAlreadyExists="Area Path : {0} has already been selected as an alert. Select another area path.";e.CodeReviewServiceName="Code Review";e.IconEmojiTongue="tongue";e.ErrorLoadingMessages="Message loading failed for message with Id: {0}";e.ErrorRetrievingBuildDefinitions="Unable to retrieve build definitions.";e.InvalidDateMessage="You have provided an invalid date.";e.GitServiceName="Git";e.ChatAlertsPullRequestTab="Pull requests";e.ChatAlertsBuildTab="Build completions";e.IconEmojiSweating="sweating";e.ChatAlertsBuildDefinitionAlreadyExists="Build Definition : {0} has already been selected as an alert. Select another build definition.";e.ServerName="Team Foundation Server";e.WorkItemsAssignedTo="Assigned to {0} by {1}.";e.IconEmojiNo="no";e.ErrorChatRoomIdleTimeout="TF401165: Your session has been idle for a long time. Refresh your browser to connect back to the room.";e.History="History";e.IconEmojiIdea="idea";e.IconEmojiInfo="info";e.IconEmojiCool="cool";e.IconEmojiCake="cake";e.IconEmojiBomb="bomb";e.IconEmojiBeer="beer";e.IconEmojiMail="mail";e.IconEmojiGift="gift";e.IconEmojiGame="game";e.IconEmojiFire="fire";e.IconEmojiStar="star";e.IconEmojiWink="wink";e.IconEmojiTime="time";e.Error_CannotUpdateRoom="TF401154: You do not have enough permissions to update this room.";e.PickADate="Pick a date";e.Live="Live";e.ChatRoomGitPullRequestNotReady="is waiting for the author in";e.ErrorChatRoomTryAgain="Try Again";});
