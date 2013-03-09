.class public final Lcom/htc/cscore/transport/SyncProtocol;
.super Ljava/lang/Object;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;,
        Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;,
        Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;,
        Lcom/htc/cscore/transport/SyncProtocol$HWallpaper;,
        Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;,
        Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;,
        Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;,
        Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;,
        Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;,
        Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;,
        Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;,
        Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;,
        Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;,
        Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;,
        Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;,
        Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;,
        Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;,
        Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;,
        Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;,
        Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;,
        Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;,
        Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;,
        Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;,
        Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;,
        Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;,
        Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;,
        Lcom/htc/cscore/transport/SyncProtocol$Htrace_events;,
        Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;,
        Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;,
        Lcom/htc/cscore/transport/SyncProtocol$AddSound;,
        Lcom/htc/cscore/transport/SyncProtocol$HSound;,
        Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;,
        Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;,
        Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;,
        Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;,
        Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;,
        Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;,
        Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;,
        Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;,
        Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;,
        Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;,
        Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;,
        Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;,
        Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;,
        Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;,
        Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;,
        Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;,
        Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;,
        Lcom/htc/cscore/transport/SyncProtocol$HPudData;,
        Lcom/htc/cscore/transport/SyncProtocol$HPhoneApplication;,
        Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;,
        Lcom/htc/cscore/transport/SyncProtocol$HPersonSetting;,
        Lcom/htc/cscore/transport/SyncProtocol$HPersonPhoneNumber;,
        Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;,
        Lcom/htc/cscore/transport/SyncProtocol$HPersonEmailAddress;,
        Lcom/htc/cscore/transport/SyncProtocol$HPersonAddress;,
        Lcom/htc/cscore/transport/SyncProtocol$HPerson;,
        Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;,
        Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;,
        Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;,
        Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;,
        Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;,
        Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;,
        Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;,
        Lcom/htc/cscore/transport/SyncProtocol$HNewItemNotification;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfilePhoneNumber;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileImage;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfileAddress;,
        Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;,
        Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;,
        Lcom/htc/cscore/transport/SyncProtocol$HMyProfile;,
        Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;,
        Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;,
        Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;,
        Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;,
        Lcom/htc/cscore/transport/SyncProtocol$AddMessage;,
        Lcom/htc/cscore/transport/SyncProtocol$HMessage;,
        Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;,
        Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchTable;,
        Lcom/htc/cscore/transport/SyncProtocol$HFreetextMessageKeywordSearchResult;,
        Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;,
        Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;,
        Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;,
        Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;,
        Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;,
        Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;,
        Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;,
        Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;,
        Lcom/htc/cscore/transport/SyncProtocol$HFootprint;,
        Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;,
        Lcom/htc/cscore/transport/SyncProtocol$HExternalError;,
        Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;,
        Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;,
        Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;,
        Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;,
        Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;,
        Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;,
        Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;,
        Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;,
        Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;,
        Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;,
        Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;,
        Lcom/htc/cscore/transport/SyncProtocol$Image;,
        Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_Communications_HandsetObjects_AddAggregatePerson_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_AddAggregatePerson_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_AddDeviceSetting_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_AddDeviceSetting_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_AddFootprint_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_AddFootprint_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_AddMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_AddMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_AddMissedCall_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_AddMissedCall_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_AddMyProfile_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_AddMyProfile_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_AddPeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_AddPeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_AddPeopleGroups_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_AddPeopleGroups_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_AddPeopleToPeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_AddPeopleToPeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_AddRecommendAppsOnPhone_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_AddRecommendAppsOnPhone_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_AddRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_AddRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_AddRecommendWishlist_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_AddRecommendWishlist_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_AddSound_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_AddSound_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_AddSyncItems_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_AddSyncItems_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_AddWallpaper_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_AddWallpaper_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_BeginFullMerge_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_BeginFullMerge_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_CheckForMessages_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_CheckForMessages_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_ClearAllMissedCalls_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_ClearAllMissedCalls_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_ClearMissedCallsByPhoneNumber_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_ClearMissedCallsByPhoneNumber_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_ClearMissedCalls_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_ClearMissedCalls_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_DeleteAggregatePersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_DeleteAggregatePersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_DeleteAggregatePerson_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_DeleteAggregatePerson_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_DeleteDeviceSetting_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_DeleteDeviceSetting_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_DeleteFootprint_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_DeleteFootprint_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_DeleteMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_DeleteMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_DeletePeopleByAccountType_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_DeletePeopleByAccountType_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_DeletePeopleFromPeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_DeletePeopleFromPeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_DeletePeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_DeletePeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_DeleteRecommendAppsOnPhone_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_DeleteRecommendAppsOnPhone_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_DeleteRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_DeleteRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_DeleteRecommendedWishlist_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_DeleteRecommendedWishlist_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_EndFullMerge_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_EndFullMerge_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_GetAggregatePersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_GetAggregatePersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_GetMyAppsAndFriendsAppsRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_GetMyAppsAndFriendsAppsRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_GetRecommendNewApplicationCommentsLikes_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_GetRecommendNewApplicationCommentsLikes_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HAggregatePersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HAggregatePersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HAggregatePerson_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HAggregatePerson_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HApplicationInformation_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HApplicationInformation_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HExternalError_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HExternalError_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HFeatureState_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HFeatureState_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HFootprintCategory_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HFootprintCategory_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HFootprintImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HFootprintImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HFootprintMemo_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HFootprintMemo_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HFootprint_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HFootprint_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HFreetextMessageKeywordSearchResult_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HFreetextMessageKeywordSearchResult_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HFreetextMessageKeywordSearchTable_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HFreetextMessageKeywordSearchTable_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HFriendRequest_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HFriendRequest_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HMessageAttachment_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HMessageAttachment_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HMessageRecipient_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HMessageRecipient_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HMyProfileAddress_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HMyProfileAddress_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HMyProfileEmailAddress_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HMyProfileEmailAddress_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HMyProfileEvent_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HMyProfileEvent_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HMyProfileImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HMyProfileImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HMyProfileInstantMessagingID_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HMyProfileInstantMessagingID_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HMyProfileNote_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HMyProfileNote_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HMyProfileOrganization_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HMyProfileOrganization_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HMyProfilePhoneNumber_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HMyProfilePhoneNumber_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HMyProfileWebSite_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HMyProfileWebSite_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HMyProfile_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HMyProfile_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HNewItemNotification_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HNewItemNotification_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HPeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HPeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HPersonAddress_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HPersonAddress_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HPersonEmailAddress_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HPersonEmailAddress_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HPersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HPersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HPersonPhoneNumber_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HPersonPhoneNumber_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HPersonSetting_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HPersonSetting_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HPersonToPeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HPersonToPeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HPerson_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HPerson_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HPhoneApplication_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HPhoneApplication_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HPudData_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HPudData_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HRecommendAppsOnPhone_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HRecommendAppsOnPhone_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HRecommendWishlist_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HRecommendWishlist_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HRecommendedApplicationIcon_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HRecommendedApplicationIcon_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HSound_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HSound_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HSyncItem_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HSyncItem_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HSyncMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HSyncMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HTrace_event_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HTrace_event_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HVirtualDeviceMissedCall_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HVirtualDeviceMissedCall_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HVirtualDeviceSetting_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HVirtualDeviceSetting_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HVirtualDevice_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HVirtualDevice_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_HWallpaper_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_HWallpaper_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_Htrace_events_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_Htrace_events_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_Image_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_Image_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_LogRemoteError_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_LogRemoteError_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_MessageQueueTestMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_MessageQueueTestMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_ProcessSyncItems_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_ProcessSyncItems_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_RequestForAdd_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_RequestForAdd_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_RequestForUpdate_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_RequestForUpdate_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_SearchRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_SearchRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_SetAggregatePersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_SetAggregatePersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_SetFootprintImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_SetFootprintImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_SetFootprintMemo_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_SetFootprintMemo_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_SetMissedCallAsViewed_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_SetMissedCallAsViewed_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_SetMissedCallsAsViewed_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_SetMissedCallsAsViewed_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_SetNewVoiceMailCount_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_SetNewVoiceMailCount_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_SetPersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_SetPersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_UniqueId_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_UniqueId_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_UpdateAggregatePerson_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_UpdateAggregatePerson_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_UpdateDeviceSetting_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_UpdateDeviceSetting_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_UpdateFootprint_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_UpdateFootprint_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_UpdateMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_UpdateMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_UpdateMyProfile_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_UpdateMyProfile_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_UpdatePeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_UpdatePeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_UpdateRecommendAppCommentLastViewDate_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_UpdateRecommendAppCommentLastViewDate_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_UpdateRecommendAppLastViewDate_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_UpdateRecommendAppLastViewDate_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_UpdateRecommendAppsOnPhone_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_UpdateRecommendAppsOnPhone_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_UpdateRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_UpdateRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Communications_HandsetObjects_UpdateVirtualDevice_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private static internal_static_Communications_HandsetObjects_UpdateVirtualDevice_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54581
    const/16 v2, 0x4d

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n+com/htc/cscore/transport/SyncProtocol.proto\u0012\u001dCommunications.HandsetObjects\"\u0019\n\u0008UniqueId\u0012\r\n\u0005Value\u0018\u0001 \u0002(\u000c\"\u0016\n\u0005Image\u0012\r\n\u0005Value\u0018\u0001 \u0002(\u000c\"\u00f9\u0004\n\u0010HAggregatePerson\u0012S\n\u0014AggregatePersonImage\u0018\u00d6\u0007 \u0001(\u000b24.Communications.HandsetObjects.HAggregatePersonImage\u0012B\n\u0010CustomRingtoneId\u0018\u00da\u0003 \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0014\n\u000bDisplayName\u0018\u009f\u0008 \u0001(\t\u0012g\n\u000cFriendStatus\u0018\u00af\u000e \u0001(\u000e2P.Communications.HandsetObjects.HAggregatePerson.HAgg"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "regatePersonFriendStatusType\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u00128\n\u0007Persons\u0018\u0099\u0005 \u0003(\u000b2&.Communications.HandsetObjects.HPerson\u0012\u0017\n\u000ePersonsUpdated\u0018\u008a\u0003 \u0002(\u0008\u0012\u0018\n\u000fSendToVoiceMail\u0018\u00cb\u000e \u0001(\u0008\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"\u0095\u0001\n HAggregatePersonFriendStatusType\u0012\u0011\n\rFriendUnknown\u0010\u0000\u0012\u0013\n\u000fFriendPotential\u0010\u0001\u0012\u0011\n\rFriendPending\u0010\u0002\u0012\u0011\n\rFriendFriends\u0010\u0003\u0012\u0011\n\rFriendBlocked\u0010\u0004\u0012\u0010\n\u000cFriendInvite\u0010\u0005\"U\n\u0012AddAggregatePerson\u0012?\n\u0006person\u00188 \u0002("

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u000b2/.Communications.HandsetObjects.HAggregatePerson\"p\n\u0015DeleteAggregatePerson\u0012C\n\u0011aggregatePersonId\u0018\u00cf\n \u0002(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0012\n\ttimestamp\u0018\u00b2\u000e \u0002(\u0003\"X\n\u001aDeleteAggregatePersonImage\u0012:\n\u0008personId\u0018\u00bc\u0006 \u0002(\u000b2\'.Communications.HandsetObjects.UniqueId\"k\n\u0019DeletePeopleByAccountType\u0012N\n\u000baccountType\u0018\u001f \u0002(\u000e29.Communications.HandsetObjects.HPerson.HPersonAccountType\",\n\u0017GetAggregatePersonImage\u0012\u0011\n\u0008filena"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "me\u0018\u00f9\t \u0002(\t\"e\n\u0017SetAggregatePersonImage\u0012J\n\u000bpersonImage\u0018\u00b2\u0004 \u0002(\u000b24.Communications.HandsetObjects.HAggregatePersonImage\"S\n\u000eSetPersonImage\u0012A\n\u000bpersonImage\u0018\u00b2\u0004 \u0002(\u000b2+.Communications.HandsetObjects.HPersonImage\"X\n\u0015UpdateAggregatePerson\u0012?\n\u0006person\u00188 \u0002(\u000b2/.Communications.HandsetObjects.HAggregatePerson\"\u00ed\u0001\n\u0015HAggregatePersonImage\u0012C\n\u0011AggregatePersonId\u0018\u00bd\u000f \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0014\n\u000bContentType\u0018\u00b4\u0005"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, " \u0001(\t\u0012\r\n\u0004Data\u0018\u00ce\u0007 \u0001(\u000c\u0012\u0011\n\u0008FileType\u0018\u00c7\u0008 \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\r\n\u0004Name\u0018\u00dc\u0003 \u0001(\t\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"\u00d7\u0001\n\u0017HApplicationInformation\u0012\u000e\n\u0005AppId\u0018\u00df\u000e \u0001(\t\u0012\u0010\n\u0007AppType\u0018\u00c8\u0004 \u0001(\t\u0012\u0010\n\u0007Comment\u0018\u00c4\n \u0001(\t\u0012\u0015\n\u000cCommentCount\u0018\u00bf\t \u0001(\u0005\u0012\u001c\n\u0013FriendsCommentCount\u0018\u009d\u000c \u0001(\u0005\u0012\u0019\n\u0010FriendsLikeCount\u0018\u00da\t \u0001(\u0005\u0012\u0011\n\tLikeCount\u0018D \u0001(\u0005\u0012\u000e\n\u0005Liked\u0018\u00b3\u0008 \u0001(\u0008\u0012\u0015\n\u000cPopularCount\u0018\u00fd\u000b \u0001(\u0005\"\u0099\u0003\n\u000eHExternalError\u0012\u0012\n\tErrorCode\u0018\u00b1\u0001 \u0001(\u0005\u0012P\n\rErrorCodeTyp"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "e\u0018\u00bf\u000f \u0001(\u000e28.Communications.HandsetObjects.HExternalError.HErrorCode\u0012\u0014\n\u000bErrorString\u0018\u00be\u000e \u0001(\t\u0012\u0016\n\rIsServerError\u0018\u0099\u0008 \u0001(\u0008\"\u00f2\u0001\n\nHErrorCode\u0012\u0010\n\u000cGeneralError\u0010\u0000\u0012\u0018\n\u0014SerializationFailure\u0010\u0001\u0012\u0011\n\rSequenceFault\u0010\u0002\u0012\u0018\n\u0014ReferentialIntegrity\u0010\u0003\u0012\u0011\n\rBadDataFormat\u0010\u0004\u0012\u0016\n\u0012TooMuchDataInField\u0010\u0005\u0012\u0018\n\u0014MissingRequiredField\u0010\u0006\u0012\r\n\tMissingId\u0010\u0007\u0012\u001d\n\u0019MissingOrInvalidTimestamp\u0010\u0008\u0012\u0018\n\u0014StorageLimitExceeded\u0010\t\"\u00eb\u0001\n\rHFeatureState\u0012\u0010\n\u0007Feature\u0018\u00bd\u000e \u0001(\t\u00124\n\u0002Id\u0018"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012F\n\u0015PhysicalDeviceModelID\u0018H \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012:\n\u0008RegionId\u0018\u009a\u0006 \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u000e\n\u0005State\u0018\u00a3\u000b \u0001(\u0008\"\u00f9\u0004\n\nHFootprint\u0012\u0010\n\u0007Address\u0018\u00d6\u000e \u0001(\t\u0012\u0013\n\nCreateDate\u0018\u009d\u0007 \u0001(\u0003\u0012\u0014\n\u000bDescription\u0018\u00d2\u000c \u0001(\t\u0012O\n\u0013FootprintCategories\u0018\u00e1\u000c \u0003(\u000b21.Communications.HandsetObjects.HFootprintCategory\u0012#\n\u001aFootprintCategoriesUpdated\u0018\u00a5\u000f \u0002(\u0008\u0012H\n\u000fFootpri"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "ntImages\u0018\u00d9\u0001 \u0003(\u000b2..Communications.HandsetObjects.HFootprintImage\u0012\u001f\n\u0016FootprintImagesUpdated\u0018\u00e3\u0001 \u0002(\u0008\u0012E\n\rFootprintMemo\u0018\u00f3\u0007 \u0001(\u000b2-.Communications.HandsetObjects.HFootprintMemo\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0011\n\u0008ImageUrl\u0018\u00cc\u000c \u0001(\t\u0012\u0012\n\tIsPrivate\u0018\u00cf\u0006 \u0001(\u0008\u0012\u0011\n\u0008Latitude\u0018\u00a3\u0004 \u0001(\u0001\u0012\u0011\n\tLongitude\u0018m \u0001(\u0001\u0012\r\n\u0004Name\u0018\u00dc\u0003 \u0001(\t\u0012\r\n\u0004Note\u0018\u00d8\u0005 \u0001(\t\u0012\u0014\n\u000bPhoneNumber\u0018\u00cd\u000b \u0001(\t\u0012\u000f\n\u0006Rating\u0018\u009f\u0003 \u0001(\u0005\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\u0012\u0016\n\rVoiceMemo"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Time\u0018\u00d9\u000f \u0001(\u0005\u0012\u0012\n\nWebsiteURL\u0018y \u0001(\t\"L\n\u000cAddFootprint\u0012<\n\tfootprint\u0018K \u0002(\u000b2).Communications.HandsetObjects.HFootprint\"d\n\u000fDeleteFootprint\u0012=\n\u000bfootprintId\u0018\u00ca\t \u0002(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0012\n\ttimestamp\u0018\u00b2\u000e \u0002(\u0003\"\\\n\u0011SetFootprintImage\u0012G\n\u000efootprintImage\u0018\u00ce\u0004 \u0002(\u000b2..Communications.HandsetObjects.HFootprintImage\"Y\n\u0010SetFootprintMemo\u0012E\n\rfootprintMemo\u0018\u00e7\u000f \u0002(\u000b2-.Communications.HandsetObjects.HFootprintMemo\"O\n\u000f"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "UpdateFootprint\u0012<\n\tfootprint\u0018K \u0002(\u000b2).Communications.HandsetObjects.HFootprint\"r\n\u0012HFootprintCategory\u0012\u0017\n\u000eFootprintCount\u0018\u00e0\u0002 \u0001(\u0005\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\r\n\u0004Name\u0018\u00dc\u0003 \u0001(\t\"\u00f4\u0002\n\u000fHFootprintImage\u0012\u0014\n\u000bContentType\u0018\u00b4\u0005 \u0001(\t\u0012\r\n\u0004Data\u0018\u00ce\u0007 \u0001(\u000c\u0012\u0011\n\u0008FileType\u0018\u00c7\u0008 \u0001(\t\u0012<\n\u000bFootprintId\u0018\u0001 \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012V\n\tImageType\u0018\u0099"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u000e \u0001(\u000e2B.Communications.HandsetObjects.HFootprintImage.HFootprintImageType\u0012\r\n\u0004Name\u0018\u00dc\u0003 \u0001(\t\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\":\n\u0013HFootprintImageType\u0012\u0007\n\u0003Web\u0010\u0000\u0012\u000b\n\u0007Handset\u0010\u0001\u0012\r\n\tThumbnail\u0010\u0002\"\u00dd\u0001\n\u000eHFootprintMemo\u0012\r\n\u0004Data\u0018\u00ce\u0007 \u0001(\u000c\u0012\u0011\n\u0008FileType\u0018\u00c7\u0008 \u0001(\t\u0012=\n\u000bFootprintId\u0018\u00b4\u0005 \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0011\n\u0008MemoTime\u0018\u0091\u0006 \u0001(\u0005\u0012\r\n\u0004Name\u0018\u00dc\u0003 \u0001(\t\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"\u00a1\u0001\n#HFr"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "eetextMessageKeywordSearchResult\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u00125\n\u0003KEY\u0018\u00dc\u0004 \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\r\n\u0004RANK\u0018\u00bd\u0006 \u0001(\u0005\"Z\n\"HFreetextMessageKeywordSearchTable\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\"\u00e4\u0002\n\u000eHFriendRequest\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0010\n\u0007Message\u0018\u00af\u000e \u0001(\t\u0012:\n\u0008PersonId\u0018\u00a2\t \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "S\n\u0006Status\u0018\u0092\r \u0001(\u000e2B.Communications.HandsetObjects.HFriendRequest.HFriendRequestStatus\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"e\n\u0014HFriendRequestStatus\u0012\u000b\n\u0007Unknown\u0010\u0000\u0012\r\n\tPotential\u0010\u0001\u0012\u000b\n\u0007Pending\u0010\u0002\u0012\u000b\n\u0007Friends\u0010\u0003\u0012\u000b\n\u0007Blocked\u0010\u0004\u0012\n\n\u0006Invite\u0010\u0005\"\u00ae\u0007\n\u0008HMessage\u0012\r\n\u0004Body\u0018\u00ec\u0004 \u0001(\t\u0012\u0013\n\nCreateDate\u0018\u009d\u0007 \u0001(\u0003\u0012\u0012\n\tHasViewed\u0018\u00b4\t \u0001(\u0008\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012N\n\u0012MessageAttachments\u0018\u00cc\u0007 \u0003(\u000b21.Communications.HandsetObjects.HMessage"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "Attachment\u0012\"\n\u0019MessageAttachmentsUpdated\u0018\u00b6\u0005 \u0002(\u0008\u0012L\n\u0011MessageRecipients\u0018\u008f\u000b \u0003(\u000b20.Communications.HandsetObjects.HMessageRecipient\u0012!\n\u0018MessageRecipientsUpdated\u0018\u00ab\u000c \u0002(\u0008\u0012M\n\u000bMessageType\u0018\u00ef\u0002 \u0001(\u000e27.Communications.HandsetObjects.HMessage.HMessageSMSType\u00129\n\u0007PudData\u0018\u0085\u0008 \u0001(\u000b2\'.Communications.HandsetObjects.HPudData\u0012K\n\u0006Status\u0018\u0092\r \u0001(\u000e2:.Communications.HandsetObjects.HMessage.HMessageStatusType\u0012\u0010\n\u0007Subject\u0018\u00e8\u000e \u0001(\t\u0012:\n\u0008Thre"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "adId\u0018\u00fa\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"\u00ca\u0001\n\u0012HMessageStatusType\u0012\u0018\n\u0014MessageUnknownStatus\u0010\u0000\u0012\u0016\n\u0012MessagePendingSend\u0010\u0001\u0012\u0016\n\u0012MessageSendSuccess\u0010\u0002\u0012\u0015\n\u0011MessageSendFailed\u0010\u0003\u0012\u0013\n\u000fMessageReceived\u0010\u0004\u0012\u001d\n\u0019MessageSendPartialSuccess\u0010\u0005\u0012\u001f\n\u001bMessageWaitingForAttachment\u0010\u0006\"I\n\u000fHMessageSMSType\u0012\u0016\n\u0012MessageUnknownType\u0010\u0000\u0012\u000e\n\nMessageSMS\u0010\u0001\u0012\u000e\n\nMessageMMS\u0010\u0002\"G\n\nAddMessage\u00129\n\u0007message\u0018\u00ab\u0007 \u0002(\u000b2\'.Communication"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "s.HandsetObjects.HMessage\"`\n\rDeleteMessage\u0012;\n\tmessageId\u0018\u00ae\u0007 \u0002(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0012\n\ttimestamp\u0018\u00b2\u000e \u0002(\u0003\"J\n\rUpdateMessage\u00129\n\u0007message\u0018\u00ab\u0007 \u0002(\u000b2\'.Communications.HandsetObjects.HMessage\"\u00ce\u0001\n\u0012HMessageAttachment\u0012\u0014\n\u000bContentType\u0018\u00b4\u0005 \u0001(\t\u0012\r\n\u0004Data\u0018\u00ce\u0007 \u0001(\u000c\u0012\u0011\n\u0008FileType\u0018\u00c7\u0008 \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012;\n\tMessageId\u0018\u00b0\u0004 \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\r\n\u0004Nam"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "e\u0018\u00dc\u0003 \u0001(\t\"\u00d5\u0001\n\u0011HMessageRecipient\u0012\u001d\n\u0014CanonicalPhoneNumber\u0018\u00c8\t \u0001(\u0003\u0012\u001b\n\u0012DisplayPhoneNumber\u0018\u00eb\u0007 \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012:\n\u0008ThreadId\u0018\u00fa\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"\u00de\t\n\nHMyProfile\u0012\u0013\n\nFamilyName\u0018\u00e0\u0004 \u0001(\t\u0012\u0012\n\tFirstName\u0018\u0096\u0005 \u0001(\t\u0012\u0012\n\tGivenName\u0018\u00f0\u0001 \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0011\n\u0008LastName\u0018\u0094\u0005 \u0001(\t\u0012\u0013\n\nMiddleName\u0018\u008e\u0008 \u0001(\t\u0012M\n\u0012My"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "ProfileAddresses\u0018\u00b8\u0004 \u0003(\u000b20.Communications.HandsetObjects.HMyProfileAddress\u0012\"\n\u0019MyProfileAddressesUpdated\u0018\u008b\n \u0002(\u0008\u0012V\n\u0017MyProfileEmailAddresses\u0018+ \u0003(\u000b25.Communications.HandsetObjects.HMyProfileEmailAddress\u0012\'\n\u001eMyProfileEmailAddressesUpdated\u0018\u00e3\n \u0002(\u0008\u0012H\n\u000fMyProfileEvents\u0018\u00be\u000f \u0003(\u000b2..Communications.HandsetObjects.HMyProfileEvent\u0012\u001f\n\u0016MyProfileEventsUpdated\u0018\u00b6\u000c \u0002(\u0008\u0012G\n\u000eMyProfileImage\u0018\u00f2\u000b \u0001(\u000b2..Communications.HandsetObjec"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "ts.HMyProfileImage\u0012a\n\u001cMyProfileInstantMessagingIDs\u0018a \u0003(\u000b2;.Communications.HandsetObjects.HMyProfileInstantMessagingID\u0012,\n#MyProfileInstantMessagingIDsUpdated\u0018\u009c\u0002 \u0002(\u0008\u0012F\n\u000eMyProfileNotes\u0018\u0085\u0004 \u0003(\u000b2-.Communications.HandsetObjects.HMyProfileNote\u0012\u001e\n\u0015MyProfileNotesUpdated\u0018\u009a\u0007 \u0002(\u0008\u0012V\n\u0016MyProfileOrganizations\u0018\u0096\u0002 \u0003(\u000b25.Communications.HandsetObjects.HMyProfileOrganization\u0012&\n\u001dMyProfileOrganizationsUpdated\u0018\u008c\u0003 \u0002(\u0008\u0012T\n\u0015M"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "yProfilePhoneNumbers\u0018\u00e3\u000b \u0003(\u000b24.Communications.HandsetObjects.HMyProfilePhoneNumber\u0012%\n\u001cMyProfilePhoneNumbersUpdated\u0018\u00f7\t \u0002(\u0008\u0012K\n\u0011MyProfileWebSites\u0018/ \u0003(\u000b20.Communications.HandsetObjects.HMyProfileWebSite\u0012!\n\u0018MyProfileWebSitesUpdated\u0018\u00f7\u000e \u0002(\u0008\u0012\u0013\n\nNameSuffix\u0018\u009b\u000e \u0001(\t\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"M\n\u000cAddMyProfile\u0012=\n\tmyProfile\u0018\u00f6\u0007 \u0002(\u000b2).Communications.HandsetObjects.HMyProfile\"P\n\u000fUpdateMyProfile\u0012=\n\tmyProfile\u0018\u00f6\u0007 \u0002(\u000b2).Commun"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "ications.HandsetObjects.HMyProfile\"\u00ce\u0003\n\u0011HMyProfileAddress\u0012Z\n\u000bAddressType\u0018\u00b1\u000c \u0001(\u000e2D.Communications.HandsetObjects.HMyProfileAddress.HProfileAddressType\u0012\r\n\u0004City\u0018\u00fc\u0007 \u0001(\t\u0012\u0010\n\u0007Country\u0018\u00f0\n \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012=\n\u000bMyProfileId\u0018\u00a7\u000b \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0011\n\u0008Priority\u0018\u00d6\u000b \u0001(\u0005\u0012\u000f\n\u0006Region\u0018\u00d3\u0001 \u0001(\t\u0012\u000e\n\u0005State\u0018\u00a3\u000b \u0001(\t\u0012\u0010\n\u0007Street1\u0018\u0098\u000f \u0001(\t\u0012\u0010\n\u0007Street2\u0018\u00c6\u0003 \u0001(\t\u0012\u0012\n\tTimestamp\u0018"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "\u0091\u0004 \u0001(\u0003\u0012\u0010\n\u0007ZipCode\u0018\u00a6\u0003 \u0001(\t\"I\n\u0013HProfileAddressType\u0012\u000f\n\u000bAddressWork\u0010\u0001\u0012\u000f\n\u000bAddressHome\u0010\u0002\u0012\u0010\n\u000cAddressOther\u0010\u0003\"\u00c7\u0003\n\u0016HMyProfileEmailAddress\u0012\u0015\n\u000cEmailAddress\u0018\u00d8\u000e \u0001(\t\u0012i\n\u0010EmailAddressType\u0018\u00c6\u0004 \u0001(\u000e2N.Communications.HandsetObjects.HMyProfileEmailAddress.HProfileEmailAddressType\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012=\n\u000bMyProfileId\u0018\u00a7\u000b \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0011\n\u0008Priority\u0018\u00d6\u000b \u0001(\u0005\u0012\u0012\n\tTime"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "stamp\u0018\u0091\u0004 \u0001(\u0003\"\u008e\u0001\n\u0018HProfileEmailAddressType\u0012\r\n\tEmailHome\u0010\u0001\u0012\r\n\tEmailWork\u0010\u0002\u0012\u000e\n\nEmailOther\u0010\u0003\u0012\u000f\n\u000bEmailCustom\u0010\u0004\u0012\u0011\n\rEmailFacebook\u0010\u0005\u0012\u0010\n\u000cEmailTwitter\u0010\u0006\u0012\u000e\n\nEamilPlurk\u0010\u0007\"\u00dc\u0002\n\u000fHMyProfileEvent\u0012\u0012\n\tEventDate\u0018\u00f5\u0006 \u0001(\u0003\u0012\u0012\n\tEventName\u0018\u0089\u0006 \u0001(\t\u0012M\n\tEventType\u0018\u00de\u0007 \u0001(\u000e29.Communications.HandsetObjects.HMyProfileEvent.HEventKind\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012=\n\u000bMyProfileId\u0018\u00a7\u000b \u0001(\u000b2\'.Communications.HandsetObj"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "ects.UniqueId\u0012\u0011\n\u0008Priority\u0018\u00d6\u000b \u0001(\u0005\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"6\n\nHEventKind\u0012\u000c\n\u0008Birthday\u0010\u0001\u0012\u000f\n\u000bAnniversary\u0010\u0002\u0012\t\n\u0005Other\u0010\u0003\"\u00a0\u0002\n\u000fHMyProfileImage\u0012\u0014\n\u000bContentType\u0018\u00b4\u0005 \u0001(\t\u0012\r\n\u0004Data\u0018\u00ce\u0007 \u0001(\u000c\u0012\u0011\n\u0008FileType\u0018\u00c7\u0008 \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012=\n\tMyProfile\u0018\u00e5\u000f \u0001(\u000b2).Communications.HandsetObjects.HMyProfile\u0012=\n\u000bMyProfileId\u0018\u00a7\u000b \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\r\n\u0004Name\u0018\u00dc\u0003 \u0001(\t\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\""

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "\u00e7\u0002\n\u001cHMyProfileInstantMessagingID\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u001b\n\u0012InstantMessagingID\u0018\u008e\n \u0001(\t\u0012\u001d\n\u0014InstantMessagingType\u0018\u00b3\u000c \u0001(\u0005\u0012=\n\u000bMyProfileId\u0018\u00a7\u000b \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0011\n\u0008Priority\u0018\u00d6\u000b \u0001(\u0005\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"o\n\u0014HInsantMessagingType\u0012\u0007\n\u0003AIM\u0010\u0001\u0012\u000f\n\u000bWindowsLive\u0010\u0002\u0012\u0010\n\u000cYahooOrSkype\u0010\u0003\u0012\u0006\n\u0002QQ\u0010\u0004\u0012\u000e\n\nGoogleTalk\u0010\u0005\u0012\u0007\n\u0003ICQ\u0010\u0006\u0012\n\n\u0006Jabber\u0010\u0007\"\u00bb\u0001\n\u000eHMyProfileNote\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Comm"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "unications.HandsetObjects.UniqueId\u0012=\n\u000bMyProfileId\u0018\u00a7\u000b \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\r\n\u0004Note\u0018\u00d8\u0005 \u0001(\t\u0012\u0011\n\u0008Priority\u0018\u00d6\u000b \u0001(\u0005\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"\u009b\u0002\n\u0016HMyProfileOrganization\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012=\n\u000bMyProfileId\u0018\u00a7\u000b \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0019\n\u0010OrganizationName\u0018\u009c\u000f \u0001(\t\u0012\u0019\n\u0010OrganizationType\u0018\u009b\u0005 \u0001(\u0005\u0012\u0011\n\u0008Priority\u0018\u00d6\u000b \u0001(\u0005\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"/\n\u0018HProfile"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "OrganizationType\u0012\u0008\n\u0004Work\u0010\u0001\u0012\t\n\u0005Other\u0010\u0002\"\u00a5\u0004\n\u0015HMyProfilePhoneNumber\u0012\u001d\n\u0014CanonicalPhoneNumber\u0018\u00c8\t \u0001(\u0003\u0012\u001b\n\u0012DisplayPhoneNumber\u0018\u00eb\u0007 \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012=\n\u000bMyProfileId\u0018\u00a7\u000b \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0018\n\u000fPhoneNumberType\u0018\u0089\u000c \u0001(\u0005\u0012\u0011\n\u0008Priority\u0018\u00d6\u000b \u0001(\u0005\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"\u0099\u0002\n\u0017HProfilePhoneNumberType\u0012\u000f\n\u000bPhoneMobile\u0010\u0001\u0012\r\n\tPhoneHome\u0010\u0002\u0012\r\n\tPhoneWork\u0010\u0003\u0012\u0010\n\u000cPhoneWorkFax\u0010\u0004\u0012\u0010"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "\n\u000cPhoneHomeFax\u0010\u0005\u0012\u000e\n\nPhonePager\u0010\u0006\u0012\u000c\n\u0008PhoneCar\u0010\u0007\u0012\u0014\n\u0010PhoneCompanyMain\u0010\u0008\u0012\u000c\n\u0008PhoneMMS\u0010\t\u0012\u000e\n\nPhoneRadio\u0010\n\u0012\u0012\n\u000ePhoneAssistant\u0010\u000b\u0012\u000e\n\nPhoneOther\u0010\u000c\u0012\u000f\n\u000bPhoneCustom\u0010\r\u0012\t\n\u0005plurk\u0010\u000e\u0012\u000c\n\u0008facebook\u0010\u000f\u0012\u000b\n\u0007twitter\u0010\u0010\"\u00c1\u0001\n\u0011HMyProfileWebSite\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012=\n\u000bMyProfileId\u0018\u00a7\u000b \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0011\n\u0008Priority\u0018\u00d6\u000b \u0001(\u0005\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\u0012\u0010\n\u0007WebSite\u0018\u00ab\u0007 \u0001(\t\"\u00f5\u0001\n\u0014HNewItemNo"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "tification\u0012\u001b\n\u0012LastViewDashboards\u0018\u008b\u0002 \u0001(\u0003\u0012\u001b\n\u0012LastViewFootprints\u0018\u008e\u0008 \u0001(\u0003\u0012\u001b\n\u0012LastViewRecommends\u0018\u00ee\u0001 \u0001(\u0003\u0012\u001a\n\u0011NewDashboardCount\u0018\u00d7\u000c \u0001(\u0005\u0012\u001a\n\u0011NewFootprintCount\u0018\u00eb\u0001 \u0001(\u0005\u0012\u0019\n\u0010NewMessagesCount\u0018\u00d7\u0007 \u0001(\u0005\u0012\u0016\n\u000eNewPeopleCount\u0018\u0012 \u0001(\u0005\u0012\u001b\n\u0012NewRecommendsCount\u0018\u00bc\t \u0001(\u0005\"\u0094\u0003\n\u000cHPeopleGroup\u0012Y\n\u000bAccountType\u0018\u008f\u0001 \u0001(\u000e2C.Communications.HandsetObjects.HPeopleGroup.HPeopleGroupAccountType\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0012\n\tI"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "sDefault\u0018\u00d0\n \u0001(\u0008\u0012\r\n\u0004Name\u0018\u00dc\u0003 \u0001(\t\u0012\u0014\n\u000bPersonCount\u0018\u00c7\u0004 \u0001(\u0005\u0012?\n\rRollupGroupId\u0018\u0091\r \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"e\n\u0017HPeopleGroupAccountType\u0012\u0010\n\u000cAccountGmail\u0010\u0000\u0012\u0010\n\u000cAccountPhone\u0010\u0002\u0012\u0013\n\u000fAccountExchange\u0010\u0003\u0012\u0011\n\rAccountHidden\u0010\u0004\"S\n\u000eAddPeopleGroup\u0012A\n\u000bpeopleGroup\u0018\u00e3\r \u0002(\u000b2+.Communications.HandsetObjects.HPeopleGroup\"U\n\u000fAddPeopleGroups\u0012B\n\u000cpeopleGroups\u0018\u00f1\u000c \u0003(\u000b2+.Communications.HandsetObjects."

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "HPeopleGroup\"_\n\u0016AddPeopleToPeopleGroup\u0012E\n\u0007mapping\u0018\u00a6\u000f \u0003(\u000b23.Communications.HandsetObjects.HPersonToPeopleGroup\"d\n\u001bDeletePeopleFromPeopleGroup\u0012E\n\u0007mapping\u0018\u00a6\u000f \u0003(\u000b23.Communications.HandsetObjects.HPersonToPeopleGroup\"h\n\u0011DeletePeopleGroup\u0012?\n\rpeopleGroupId\u0018\u00f7\u000f \u0002(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0012\n\ttimestamp\u0018\u00b2\u000e \u0002(\u0003\"V\n\u0011UpdatePeopleGroup\u0012A\n\u000bpeopleGroup\u0018\u00e3\r \u0002(\u000b2+.Communications.HandsetObjects.HPeople"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "Group\"\u00ba\u0008\n\u0007HPerson\u0012O\n\u000bAccountType\u0018\u008f\u0001 \u0001(\u000e29.Communications.HandsetObjects.HPerson.HPersonAccountType\u0012D\n\u0012AggregatedPersonId\u0018\u009d\u000b \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0014\n\u000bCompanyName\u0018\u008e\t \u0001(\t\u0012\u0012\n\tFirstName\u0018\u0096\u0005 \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0011\n\u0008LastName\u0018\u0094\u0005 \u0001(\t\u0012\u000e\n\u0005Notes\u0018\u008a\u000b \u0001(\t\u0012G\n\u000fPersonAddresses\u0018\u00e0\n \u0003(\u000b2-.Communications.HandsetObjects.HPersonAddress\u0012\u001f\n\u0016PersonAddressesUpdated\u0018\u00c0"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "\u000e \u0002(\u0008\u0012Q\n\u0014PersonEmailAddresses\u0018\u008f\u0002 \u0003(\u000b22.Communications.HandsetObjects.HPersonEmailAddress\u0012$\n\u001bPersonEmailAddressesUpdated\u0018\u00ac\u000b \u0002(\u0008\u0012A\n\u000bPersonImage\u0018\u00cd\u0003 \u0001(\u000b2+.Communications.HandsetObjects.HPersonImage\u0012N\n\u0012PersonPhoneNumbers\u0018\u00da\u0001 \u0003(\u000b21.Communications.HandsetObjects.HPersonPhoneNumber\u0012\"\n\u0019PersonPhoneNumbersUpdated\u0018\u00fc\r \u0002(\u0008\u0012F\n\u000ePersonSettings\u0018\u00d3\u0008 \u0003(\u000b2-.Communications.HandsetObjects.HPersonSetting\u0012\u001e\n\u0015PersonSettingsU"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "pdated\u0018\u0084\u0005 \u0002(\u0008\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\u0012\u000e\n\u0005Title\u0018\u00fe\u0008 \u0001(\t\"`\n\u0012HPersonAccountType\u0012\u0010\n\u000cAccountGmail\u0010\u0000\u0012\u0010\n\u000cAccountPhone\u0010\u0002\u0012\u0013\n\u000fAccountExchange\u0010\u0003\u0012\u0011\n\rAccountHidden\u0010\u0004\"\u008c\u0001\n\u0017HPersonFriendStatusType\u0012\u0011\n\rFriendUnknown\u0010\u0000\u0012\u0013\n\u000fFriendPotential\u0010\u0001\u0012\u0011\n\rFriendPending\u0010\u0002\u0012\u0011\n\rFriendFriends\u0010\u0003\u0012\u0011\n\rFriendBlocked\u0010\u0004\u0012\u0010\n\u000cFriendInvite\u0010\u0005\"\u00c3\u0003\n\u000eHPersonAddress\u0012V\n\u000bAddressType\u0018\u00b1\u000c \u0001(\u000e2@.Communications.HandsetObjects.HPersonAddress.HPersonAddressType\u0012\r\n"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "\u0004City\u0018\u00fc\u0007 \u0001(\t\u0012\u0010\n\u0007Country\u0018\u00f0\n \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012:\n\u0008PersonId\u0018\u00a2\t \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0011\n\u0008Priority\u0018\u00d6\u000b \u0001(\u0005\u0012\u000f\n\u0006Region\u0018\u00d3\u0001 \u0001(\t\u0012\u000e\n\u0005State\u0018\u00a3\u000b \u0001(\t\u0012\u0010\n\u0007Street1\u0018\u0098\u000f \u0001(\t\u0012\u0010\n\u0007Street2\u0018\u00c6\u0003 \u0001(\t\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\u0012\u0010\n\u0007ZipCode\u0018\u00a6\u0003 \u0001(\t\"H\n\u0012HPersonAddressType\u0012\u000f\n\u000bAddressWork\u0010\u0001\u0012\u000f\n\u000bAddressHome\u0010\u0002\u0012\u0010\n\u000cAddressOther\u0010\u0003\"\u0086\u0003\n\u0013HPersonEmailAddress\u0012\u0015\n\u000cEmailAddress\u0018\u00d8\u000e \u0001(\t\u0012e\n\u0010Email"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "AddressType\u0018\u00c6\u0004 \u0001(\u000e2J.Communications.HandsetObjects.HPersonEmailAddress.HPersonEmailAddressType\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012:\n\u0008PersonId\u0018\u00a2\t \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0011\n\u0008Priority\u0018\u00d6\u000b \u0001(\u0005\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"X\n\u0017HPersonEmailAddressType\u0012\r\n\tEmailHome\u0010\u0001\u0012\r\n\tEmailWork\u0010\u0002\u0012\u000e\n\nEmailOther\u0010\u0003\u0012\u000f\n\u000bEmailCustom\u0010\u0004\"\u00db\u0001\n\u000cHPersonImage\u0012\u0014\n\u000bContentType\u0018\u00b4\u0005 \u0001(\t\u0012\r\n\u0004Data\u0018\u00ce\u0007 \u0001(\u000c\u0012\u0011\n\u0008FileT"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "ype\u0018\u00c7\u0008 \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\r\n\u0004Name\u0018\u00dc\u0003 \u0001(\t\u0012:\n\u0008PersonId\u0018\u00a2\t \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"\u00c2\u0004\n\u0012HPersonPhoneNumber\u0012\u001d\n\u0014CanonicalPhoneNumber\u0018\u00c8\t \u0001(\u0003\u0012\u001b\n\u0012DisplayPhoneNumber\u0018\u00eb\u0007 \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012:\n\u0008PersonId\u0018\u00a2\t \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012b\n\u000fPhoneNumberType\u0018\u0089\u000c \u0001(\u000e2H.Communications."

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "HandsetObjects.HPersonPhoneNumber.HPersonPhoneNumberType\u0012\u0011\n\u0008Priority\u0018\u00d6\u000b \u0001(\u0005\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"\u00f2\u0001\n\u0016HPersonPhoneNumberType\u0012\u000f\n\u000bPhoneMobile\u0010\u0001\u0012\r\n\tPhoneHome\u0010\u0002\u0012\r\n\tPhoneWork\u0010\u0003\u0012\u0010\n\u000cPhoneWorkFax\u0010\u0004\u0012\u0010\n\u000cPhoneHomeFax\u0010\u0005\u0012\u000e\n\nPhonePager\u0010\u0006\u0012\u000c\n\u0008PhoneCar\u0010\u0007\u0012\u0014\n\u0010PhoneCompanyMain\u0010\u0008\u0012\u000c\n\u0008PhoneMMS\u0010\t\u0012\u000e\n\nPhoneRadio\u0010\n\u0012\u0012\n\u000ePhoneAssistant\u0010\u000b\u0012\u000e\n\nPhoneOther\u0010\u000c\u0012\u000f\n\u000bPhoneCustom\u0010\r\"\u00fb\u0002\n\u000eHPersonSetting\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObj"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "ects.UniqueId\u0012\r\n\u0004Name\u0018\u00dc\u0003 \u0001(\t\u0012:\n\u0008PersonId\u0018\u00a2\t \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012V\n\u0011PersonSettingType\u0018\u00e2\u000f \u0001(\u000e2:.Communications.HandsetObjects.HPersonSetting.HSettingType\u0012\u0011\n\u0008Priority\u0018\u00d6\u000b \u0001(\u0005\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\u0012\u000e\n\u0005Value\u0018\u008e\u000f \u0001(\t\"Y\n\u000cHSettingType\u0012\u0012\n\u000eSettingUnknown\u0010\u0000\u0012\u000f\n\u000bSettingDate\u0010\u0001\u0012\u0011\n\rSettingString\u0010\u0002\u0012\u0011\n\rSettingNumber\u0010\u0003\"\u00dd\u0001\n\u0014HPersonToPeopleGroup\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueI"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "d\u0012?\n\rPeopleGroupId\u0018\u0080\u000e \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012:\n\u0008PersonId\u0018\u00a2\t \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"C\n\u0011HPhoneApplication\u0012\u000e\n\u0005AppId\u0018\u00df\u000e \u0001(\t\u0012\u000f\n\u0006AppURL\u0018\u0089\u0007 \u0001(\t\u0012\r\n\u0004Name\u0018\u00dc\u0003 \u0001(\t\"\u00a0\u0001\n\u0008HPudData\u0012\r\n\u0004Data\u0018\u00ce\u0007 \u0001(\u000c\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012;\n\tMessageId\u0018\u00b0\u0004 \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"\u0084\u0002\n\u0015HRecommendAppsOnP"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "hone\u0012\u000e\n\u0005AppId\u0018\u00df\u000e \u0001(\t\u0012\u0010\n\u0007AppType\u0018\u00c8\u0004 \u0001(\t\u0012\u000f\n\u0006AppURL\u0018\u0089\u0007 \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\r\n\u0004Name\u0018\u00dc\u0003 \u0001(\t\u0012_\n\u001aRecommendedApplicationIcon\u0018\u00c3\u0005 \u0001(\u000b2:.Communications.HandsetObjects.HRecommendedApplicationIcon\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"\u0098\u0002\n\u0015HRecommendCommentLike\u0012\u000e\n\u0005AppId\u0018\u00df\u000e \u0001(\t\u0012\u0010\n\u0007AppType\u0018\u00c8\u0004 \u0001(\t\u0012\u0010\n\u0007Comment\u0018\u00c4\n \u0001(\t\u0012\u001a\n\u0011CommentCreateDate\u0018\u00ea\u0007 \u0001(\u0003\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueI"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "d\u0012\u000f\n\u0006IsLike\u0018\u00c0\n \u0001(\u0008\u0012\u0017\n\u000eLikeCreateDate\u0018\u00a7\r \u0001(\u0003\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\";\n\u0012HRecommendAppTypes\u0012\u000f\n\u000bApplication\u0010\u0001\u0012\t\n\u0005Books\u0010\u0002\u0012\t\n\u0005Music\u0010\u0003\"e\n\u0017AddRecommendAppsOnPhone\u0012J\n\u000bappsOnPhone\u0018\u00e5\n \u0002(\u000b24.Communications.HandsetObjects.HRecommendAppsOnPhone\"t\n\u0017AddRecommendCommentLike\u0012H\n\trecommend\u0018\u008e\u0002 \u0002(\u000b24.Communications.HandsetObjects.HRecommendCommentLike\u0012\u000f\n\u0006isLike\u0018\u00a5\u000c \u0002(\u0008\"\\\n\u0014AddRecommendWishlist\u0012D\n\u0008wishlist\u0018\u00cf\r \u0002(\u000b21.Communica"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "tions.HandsetObjects.HRecommendWishlist\"h\n\u001aDeleteRecommendAppsOnPhone\u0012J\n\u000bappsOnPhone\u0018\u00e5\n \u0002(\u000b24.Communications.HandsetObjects.HRecommendAppsOnPhone\"O\n\u001aDeleteRecommendCommentLike\u0012\u000e\n\u0005appId\u0018\u00b1\u000c \u0002(\t\u0012\u0010\n\u0007appType\u0018\u008a\u000f \u0002(\t\u0012\u000f\n\u0006isLike\u0018\u00a5\u000c \u0002(\u0008\"=\n\u0019DeleteRecommendedWishlist\u0012\u000e\n\u0005appId\u0018\u00b1\u000c \u0002(\t\u0012\u0010\n\u0007appType\u0018\u008a\u000f \u0002(\t\"\u0098\u0001\n+GetMyAppsAndFriendsAppsRecommendCommentLike\u0012\u000e\n\u0005appId\u0018\u00b1\u000c \u0002(\t\u0012\u0010\n\u0007appType\u0018\u008a\u000f \u0002(\t\u0012\u000f\n\u0006sortBy\u0018\u00e3\u0001 \u0002(\t\u0012\u0016\n\u000esortDesc"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "ending\u0018N \u0002(\u0008\u0012\u000e\n\u0005start\u0018\u00cc\u000b \u0002(\u0005\u0012\u000e\n\u0005count\u0018\u00ec\n \u0002(\u0005\"r\n\'GetRecommendNewApplicationCommentsLikes\u0012\u000f\n\u0006sortBy\u0018\u00e3\u0001 \u0002(\t\u0012\u0016\n\u000esortDescending\u0018N \u0002(\u0008\u0012\u000e\n\u0005start\u0018\u00cc\u000b \u0002(\u0005\u0012\u000e\n\u0005count\u0018\u00ec\n \u0002(\u0005\"\u0088\u0001\n\u001aSearchRecommendCommentLike\u0012\u0011\n\u0008keywords\u0018\u00e7\u000c \u0002(\t\u0012\u000e\n\u0005appId\u0018\u00b1\u000c \u0002(\t\u0012\u000f\n\u0006sortBy\u0018\u00e3\u0001 \u0002(\t\u0012\u0016\n\u000esortDescending\u0018N \u0002(\u0008\u0012\u000e\n\u0005start\u0018\u00cc\u000b \u0002(\u0005\u0012\u000e\n\u0005count\u0018\u00ec\n \u0002(\u0005\"\'\n%UpdateRecommendAppCommentLastViewDate\" \n\u001eUpdateRecommendAppLastViewDate\"q\n\u001aUpdateRecommendAppsOnP"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "hone\u0012S\n\u0014recommendAppsOnPhone\u0018\u00d8\u0007 \u0002(\u000b24.Communications.HandsetObjects.HRecommendAppsOnPhone\"f\n\u001aUpdateRecommendCommentLike\u0012H\n\trecommend\u0018\u008e\u0002 \u0002(\u000b24.Communications.HandsetObjects.HRecommendCommentLike\"\u00d6\u0001\n\u001bHRecommendedApplicationIcon\u0012\r\n\u0004Data\u0018\u00ce\u0007 \u0001(\u000c\u0012\u0011\n\u0008FileType\u0018\u00c7\u0008 \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\r\n\u0004Name\u0018\u00dc\u0003 \u0001(\t\u0012<\n\nPhoneAppId\u0018\u00bd\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0012\n\tTimest"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "amp\u0018\u0091\u0004 \u0001(\u0003\"\u00e7\u0001\n\u0012HRecommendWishlist\u0012\u000e\n\u0005AppId\u0018\u00df\u000e \u0001(\t\u0012\u0010\n\u0007AppType\u0018\u00c8\u0004 \u0001(\t\u0012\u000f\n\u0006AppURL\u0018\u0089\u0007 \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0018\n\u000fIsHTCHubContent\u0018\u00df\u0005 \u0001(\u0008\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\":\n\u0011HWishlistAppTypes\u0012\u000f\n\u000bApplication\u0010\u0001\u0012\t\n\u0005Books\u0010\u0002\u0012\t\n\u0005Music\u0010\u0003\"\u0080\u0001\n\u0006HSound\u0012\u000f\n\u0006FeedId\u0018\u008f\u0008 \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\u0012\r\n\u0004Type\u0018\u00ba\u000b \u0001(\t\u0012\u000c\n\u0003Uri\u0018\u00e4\u000b \u0001(\t\"A\n\u0008AddSound\u00125\n\u0005sound\u0018\u00dd\u0003 "

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "\u0002(\u000b2%.Communications.HandsetObjects.HSound\"\u00da\t\n\tHSyncItem\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0015\n\u000cSyncItemType\u0018\u0098\u0007 \u0001(\u0005\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"\u00eb\u0008\n\rHSyncItemType\u0012\u000b\n\u0007Account\u0010\u0000\u0012\u0013\n\u000fAggregatePerson\u0010\u0001\u0012\u0018\n\u0014AggregatePersonImage\u0010\u0002\u0012\u0011\n\rBlockedDevice\u0010\u0003\u0012\u000e\n\nDataCenter\u0010\u0004\u0012\u0013\n\u000fDeviceGenealogy\u0010\u0005\u0012\r\n\tFootprint\u0010\u0006\u0012\u0015\n\u0011FootprintCategory\u0010\u0007\u0012\u0015\n\u0011FootprintFavorite\u0010\u0008\u0012\u0012\n\u000eFootprintImage\u0010\t\u0012\u001a\n\u0016FootprintKeywordSearch\u0010\n\u0012 \n\u001c"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "FootprintKeywordSearchResult\u0010\u000b\u0012\u0011\n\rFootprintMemo\u0010\u000c\u0012 \n\u001cFootprintToFootprintCategory\u0010\r\u0012&\n\"FreetextMessageKeywordSearchResult\u0010\u000e\u0012%\n!FreetextMessageKeywordSearchTable\u0010\u000f\u0012\u0011\n\rFriendRequest\u0010\u0010\u0012\u0011\n\rGlobalAccount\u0010\u0011\u0012\u0011\n\rGlobalSetting\u0010\u0012\u0012\u000b\n\u0007Message\u0010\u0013\u0012\u0015\n\u0011MessageAttachment\u0010\u0014\u0012\u0014\n\u0010MessageRecipient\u0010\u0015\u0012\u000f\n\u000bPeopleGroup\u0010\u0016\u0012\n\n\u0006Person\u0010\u0017\u0012\u0011\n\rPersonAddress\u0010\u0018\u0012\u0016\n\u0012PersonEmailAddress\u0010\u0019\u0012\u000f\n\u000bPersonImage\u0010\u001a\u0012\u0015\n\u0011PersonPhoneNumber\u0010\u001b\u0012\u0011\n\rPersonS"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "etting\u0010\u001c\u0012\u0017\n\u0013PersonToPeopleGroup\u0010\u001d\u0012\u0017\n\u0013PhysicalDeviceModel\u0010\u001e\u0012\u001c\n\u0018PhysicalDeviceModelImage\u0010\u001f\u0012\u001f\n\u001bPhysicalDeviceModelToRegion\u0010 \u0012\u0010\n\u000cProfileImage\u0010!\u0012\u000b\n\u0007PudData\u0010\"\u0012\u0018\n\u0014RecommendAppsOnPhone\u0010#\u0012 \n\u001cRecommendAppsPopularityCount\u0010$\u0012\u0018\n\u0014RecommendCommentLike\u0010%\u0012\u001e\n\u001aRecommendedApplicationIcon\u0010&\u0012\u0015\n\u0011RecommendWishlist\u0010\'\u0012\n\n\u0006Region\u0010(\u0012\t\n\u0005Sound\u0010)\u0012\u000c\n\u0008SyncItem\u0010*\u0012\u000f\n\u000bTrace_event\u0010+\u0012\u0010\n\u000ctrace_events\u0010,\u0012\u0011\n\rVirtualDevice\u0010-\u0012\u001b\n\u0017VirtualDevic"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "eMissedCall\u0010.\u0012\u0018\n\u0014VirtualDeviceSetting\u0010/\u0012\r\n\tWallpaper\u00100\u0012\u0010\n\u000cFeatureState\u00101\u0012\r\n\tMyProfile\u00102\"m\n\u000cHTrace_event\u0012\u0013\n\nEventClass\u0018\u00a2\t \u0001(\u0005\u0012\u0012\n\tEventName\u0018\u0089\u0006 \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\"E\n\rHtrace_events\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\"\u00ed\u0011\n\u000eHVirtualDevice\u0012;\n\tAccountId\u0018\u00c3\u0008 \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0018\n\u000fAlternateNumber\u0018\u00e3\u0003 \u0001(\t\u0012\u0011\n\u0008AreaCode\u0018\u00c3\t \u0001(\t\u0012?\n\rBi"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "ndRequestId\u0018\u00d7\t \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012a\n\u0013CallForwardingState\u0018\u00e7\u0006 \u0001(\u000e2C.Communications.HandsetObjects.HVirtualDevice.HPhoneOperationStatus\u0012\u001f\n\u0016CallForwardPhoneNumber\u0018\u00db\u0003 \u0001(\t\u0012E\n\u0013CallForwardRegionId\u0018\u00de\u0007 \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0014\n\u000bCountryCode\u0018\u00e5\u0004 \u0001(\t\u0012 \n\u0017CurrentLocationLatitude\u0018\u009f\u0002 \u0001(\u0001\u0012!\n\u0018CurrentLocationLongitude\u0018\u00c2\u000f \u0001(\u0001\u0012\u0016\n\rDeviceVersion\u0018\u00f8\u000e \u0001(\t\u0012\\\n\u000eForceRingState\u0018\u00f7\n \u0001"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "(\u000e2C.Communications.HandsetObjects.HVirtualDevice.HPhoneOperationStatus\u0012A\n\u000fHandsetDeviceId\u0018\u00a2\u0005 \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0016\n\rHandsetLocale\u0018\u0083\t \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u000c\n\u0003IDD\u0018\u00f1\u000f \u0001(\t\u0012\u000e\n\u0006IsCDMA\u0018W \u0001(\u0008\u0012\"\n\u0019IsLocationTrackingEnabled\u0018\u0097\t \u0001(\u0008\u0012\u0013\n\nIsVerified\u0018\u00a5\u000b \u0001(\u0008\u0012\u001f\n\u0016LastConnectedTimestamp\u0018\u008b\u0003 \u0001(\u0003\u0012\u001a\n\u0011LastKnownLocation\u0018\u00e7\u0002 \u0001(\u0003\u0012\u001b\n\u0013LastSeenAtTimestamp\u0018\u0012 \u0001(\u0003\u0012`\n\u0012Loc"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "kedHandsetState\u0018\u00d5\u000c \u0001(\u000e2C.Communications.HandsetObjects.HVirtualDevice.HPhoneOperationStatus\u0012\u001a\n\u0012LockHandsetMessage\u0018& \u0001(\t\u0012\u0017\n\u000eLockHandsetPin\u0018\u00ca\u000b \u0001(\t\u0012#\n\u001aMessageForwardEmailAddress\u0018\u00ec\u0007 \u0001(\t\u0012\"\n\u0019MessageForwardPhoneNumber\u0018\u00f3\u0002 \u0001(\t\u0012M\n\u001bMessageForwardPhoneRegionId\u0018\u009b\u0006 \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012f\n\u0018MessageForwardStateEmail\u0018\u0082\u000e \u0001(\u000e2C.Communications.HandsetObjects.HVirtualDevice.HPhoneOperationStatus"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "\u0012f\n\u0018MessageForwardStatePhone\u0018\u0097\u000b \u0001(\u000e2C.Communications.HandsetObjects.HVirtualDevice.HPhoneOperationStatus\u0012\u0013\n\nMMSMaxSize\u0018\u00ab\u0008 \u0001(\u0005\u0012\u0014\n\u000bMusicVendor\u0018\u00e7\u0001 \u0001(\u0005\u0012\u000c\n\u0003NDD\u0018\u00d2\u0007 \u0001(\t\u0012\u001a\n\u0011NewVoicemailCount\u0018\u00c6\u0008 \u0001(\u0005\u0012\u0014\n\u000bPhoneNumber\u0018\u00cd\u000b \u0001(\u0003\u0012\u001a\n\u0011PhoneNumberString\u0018\u00e5\u0002 \u0001(\t\u0012G\n\u0015PhysicalDeviceModelId\u0018\u00ec\r \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012)\n RecommendsAppCommentLastViewDate\u0018\u008c\u0007 \u0001(\u0003\u0012\"\n\u0019RecommendsAppLastViewDate\u0018\u009c\u0006 \u0001(\u0003\u0012#\n\u001aRemot"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "eDataWipeEraseSDState\u0018\u0090\u000e \u0001(\u0008\u0012a\n\u0013RemoteDataWipeState\u0018\u00b1\u0003 \u0001(\u000e2C.Communications.HandsetObjects.HVirtualDevice.HPhoneOperationStatus\u0012:\n\u0008ResyncId\u0018\u00ea\r \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012T\n\u000bResyncState\u0018\u00ea\u0003 \u0001(\u000e2>.Communications.HandsetObjects.HVirtualDevice.HResyncStateType\u0012\u0018\n\u000fResyncStateDate\u0018\u00bd\u0006 \u0001(\u0003\u0012\u001a\n\u0011TimeOffsetFromUtc\u0018\u00dd\u0006 \u0001(\u0003\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"5\n\u0015HPhoneOperationStatus\u0012\u000b\n\u0007Unknown\u0010\u0000\u0012\u0007\n\u0003Off\u0010\u0001\u0012\u0006\n\u0002On"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "\u0010\u0002\"\u0098\u0001\n\u0010HResyncStateType\u0012\u0015\n\u0011ResyncStateInSync\u0010\u0000\u0012\u001d\n\u0019ResyncStateBeginHandshake\u0010\u0001\u0012\u0016\n\u0012ResyncStatePending\u0010\u0002\u0012\u0019\n\u0015ResyncStateInProgress\u0010\u0003\u0012\u001b\n\u0017ResyncStateEndHandshake\u0010\u0004\"]\n\rAddMissedCall\u0012L\n\nmissedCall\u0018\u00a2\n \u0002(\u000b27.Communications.HandsetObjects.HVirtualDeviceMissedCall\"J\n\u000cAddSyncItems\u0012:\n\u0008syncList\u0018, \u0003(\u000b2(.Communications.HandsetObjects.HSyncItem\"L\n\u000eBeginFullMerge\u0012:\n\u0008resyncId\u0018\u0084\u000f \u0002(\u000b2\'.Communications.HandsetObjects.Un"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "iqueId\"\u0012\n\u0010CheckForMessages\"\u0015\n\u0013ClearAllMissedCalls\"g\n\u0010ClearMissedCalls\u0012?\n\rmissedCallIds\u0018\u00cf\u000f \u0003(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0012\n\ttimestamp\u0018\u00b2\u000e \u0002(\u0003\"5\n\u001dClearMissedCallsByPhoneNumber\u0012\u0014\n\u000bphoneNumber\u0018\u009e\r \u0002(\t\"\u000e\n\u000cEndFullMerge\"W\n\u000eLogRemoteError\u0012E\n\rexternalError\u0018\u00a6\u000b \u0002(\u000b2-.Communications.HandsetObjects.HExternalError\"\u0012\n\u0010ProcessSyncItems\"K\n\rRequestForAdd\u0012:\n\u0008syncList\u0018, \u0003(\u000b2(.Communications.HandsetObject"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "s.HSyncItem\"N\n\u0010RequestForUpdate\u0012:\n\u0008syncList\u0018, \u0003(\u000b2(.Communications.HandsetObjects.HSyncItem\"e\n\u0015SetMissedCallAsViewed\u0012L\n\nmissedCall\u0018\u00a2\n \u0002(\u000b27.Communications.HandsetObjects.HVirtualDeviceMissedCall\"f\n\u0016SetMissedCallsAsViewed\u0012L\n\u000bmissedCalls\u0018N \u0003(\u000b27.Communications.HandsetObjects.HVirtualDeviceMissedCall\"/\n\u0014SetNewVoiceMailCount\u0012\u0017\n\u000evoiceMailCount\u0018\u00d8\u000b \u0002(\u0005\"\\\n\u0013UpdateVirtualDevice\u0012E\n\rvirtualDevice\u0018\u00fc\u0004 \u0002(\u000b2-.Com"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "munications.HandsetObjects.HVirtualDevice\"\u00a2\u0001\n\u0018HVirtualDeviceMissedCall\u0012\u0013\n\nCreateDate\u0018\u009d\u0007 \u0001(\u0003\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0011\n\u0008IsViewed\u0018\u00fe\u0005 \u0001(\u0008\u0012\u0014\n\u000bPhoneNumber\u0018\u00cd\u000b \u0001(\t\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\"\u0080\u0001\n\u0015HVirtualDeviceSetting\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\r\n\u0004Name\u0018\u00dc\u0003 \u0001(\t\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\u0012\u000e\n\u0005Value\u0018\u008e\u000f \u0001(\t\"`\n\u0010AddDeviceSetting\u0012L\n\rdeviceSetting\u0018\u0084\r \u0002(\u000b24.Communications.H"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "andsetObjects.HVirtualDeviceSetting\"l\n\u0013DeleteDeviceSetting\u0012A\n\u000fdeviceSettingId\u0018\u00d9\n \u0002(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0012\n\ttimestamp\u0018\u00b2\u000e \u0002(\u0003\"c\n\u0013UpdateDeviceSetting\u0012L\n\rdeviceSetting\u0018\u0084\r \u0002(\u000b24.Communications.HandsetObjects.HVirtualDeviceSetting\"\u0084\u0001\n\nHWallpaper\u0012\u000f\n\u0006FeedId\u0018\u008f\u0008 \u0001(\t\u00124\n\u0002Id\u0018\u0092\n \u0001(\u000b2\'.Communications.HandsetObjects.UniqueId\u0012\u0012\n\tTimestamp\u0018\u0091\u0004 \u0001(\u0003\u0012\r\n\u0004Type\u0018\u00ba\u000b \u0001(\t\u0012\u000c\n\u0003Uri\u0018\u00e4\u000b \u0001(\t\"M\n\u000cAddWallpaper\u0012=\n"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "\twallpaper\u0018\u0092\u0002 \u0002(\u000b2).Communications.HandsetObjects.HWallpaper\"a\n\u0017MessageQueueTestMessage\u0012\u0011\n\tqueueName\u0018= \u0002(\t\u0012\u0012\n\ttimestamp\u0018\u00b2\u000e \u0002(\u0003\u0012\u0010\n\u0007ordinal\u0018\u008a\u0007 \u0002(\u0005\u0012\r\n\u0004data\u0018\u00ba\u000c \u0002(\u000c\"\u00a73\n\u000cHSyncMessage\u0012>\n\u0004type\u0018\u0001 \u0002(\u000e20.Communications.HandsetObjects.HSyncMessage.Type\u0012N\n\u0012addAggregatePerson\u0018\u00a1\u0001 \u0001(\u000b21.Communications.HandsetObjects.AddAggregatePerson\u0012T\n\u0015updateAggregatePerson\u0018\u00a3\n \u0001(\u000b24.Communications.HandsetObjects.UpdateAggregate"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "Person\u0012T\n\u0015deleteAggregatePerson\u0018\u00fd\t \u0001(\u000b24.Communications.HandsetObjects.DeleteAggregatePerson\u0012X\n\u0017getAggregatePersonImage\u0018\u00c8\r \u0001(\u000b26.Communications.HandsetObjects.GetAggregatePersonImage\u0012X\n\u0017setAggregatePersonImage\u0018\u009d\u0005 \u0001(\u000b26.Communications.HandsetObjects.SetAggregatePersonImage\u0012^\n\u001adeleteAggregatePersonImage\u0018\u00a7\u0008 \u0001(\u000b29.Communications.HandsetObjects.DeleteAggregatePersonImage\u0012[\n\u0019deletePeopleByAccountType\u0018Z "

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "\u0001(\u000b28.Communications.HandsetObjects.DeletePeopleByAccountType\u0012F\n\u000esetPersonImage\u0018\u00d0\u0007 \u0001(\u000b2-.Communications.HandsetObjects.SetPersonImage\u0012B\n\u000caddFootprint\u0018\u00f8\r \u0001(\u000b2+.Communications.HandsetObjects.AddFootprint\u0012H\n\u000fupdateFootprint\u0018\u008a\u000f \u0001(\u000b2..Communications.HandsetObjects.UpdateFootprint\u0012H\n\u000fdeleteFootprint\u0018\u00c6\u000c \u0001(\u000b2..Communications.HandsetObjects.DeleteFootprint\u0012L\n\u0011setFootprintImage\u0018\u00c4\u0005 \u0001(\u000b20.Communications.Hands"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "etObjects.SetFootprintImage\u0012J\n\u0010setFootprintMemo\u0018\u00bf\u0005 \u0001(\u000b2/.Communications.HandsetObjects.SetFootprintMemo\u0012>\n\naddMessage\u0018\u00a2\u0004 \u0001(\u000b2).Communications.HandsetObjects.AddMessage\u0012D\n\rupdateMessage\u0018\u00e4\n \u0001(\u000b2,.Communications.HandsetObjects.UpdateMessage\u0012D\n\rdeleteMessage\u0018\u0098\u0004 \u0001(\u000b2,.Communications.HandsetObjects.DeleteMessage\u0012B\n\u000caddMyProfile\u0018\u00b3\u000f \u0001(\u000b2+.Communications.HandsetObjects.AddMyProfile\u0012H\n\u000fupdateMyProfile\u0018\u0093\u0002 \u0001("

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "\u000b2..Communications.HandsetObjects.UpdateMyProfile\u0012F\n\u000eaddPeopleGroup\u0018\u00a5\u000b \u0001(\u000b2-.Communications.HandsetObjects.AddPeopleGroup\u0012H\n\u000faddPeopleGroups\u0018\u0093\t \u0001(\u000b2..Communications.HandsetObjects.AddPeopleGroups\u0012L\n\u0011updatePeopleGroup\u0018\u00f2\u0002 \u0001(\u000b20.Communications.HandsetObjects.UpdatePeopleGroup\u0012V\n\u0016addPeopleToPeopleGroup\u0018\u0098\u0001 \u0001(\u000b25.Communications.HandsetObjects.AddPeopleToPeopleGroup\u0012`\n\u001bdeletePeopleFromPeopleGroup\u0018\u00be\u0001 \u0001(\u000b2"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, ":.Communications.HandsetObjects.DeletePeopleFromPeopleGroup\u0012L\n\u0011deletePeopleGroup\u0018\u00c7\u0002 \u0001(\u000b20.Communications.HandsetObjects.DeletePeopleGroup\u0012X\n\u0017addRecommendCommentLike\u0018\u0086\u0003 \u0001(\u000b26.Communications.HandsetObjects.AddRecommendCommentLike\u0012R\n\u0014addRecommendWishlist\u0018\u00ee\n \u0001(\u000b23.Communications.HandsetObjects.AddRecommendWishlist\u0012\\\n\u0019deleteRecommendedWishlist\u0018\u00b1\n \u0001(\u000b28.Communications.HandsetObjects.DeleteRecommendedWis"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "hlist\u0012X\n\u0017addRecommendAppsOnPhone\u0018\u00a4\u0008 \u0001(\u000b26.Communications.HandsetObjects.AddRecommendAppsOnPhone\u0012^\n\u001adeleteRecommendAppsOnPhone\u0018\u00dc\u0008 \u0001(\u000b29.Communications.HandsetObjects.DeleteRecommendAppsOnPhone\u0012]\n\u001aupdateRecommendCommentLike\u0018( \u0001(\u000b29.Communications.HandsetObjects.UpdateRecommendCommentLike\u0012^\n\u001aupdateRecommendAppsOnPhone\u0018\u00eb\t \u0001(\u000b29.Communications.HandsetObjects.UpdateRecommendAppsOnPhone\u0012f\n\u001eupdateRecommen"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "dAppLastViewDate\u0018\u00b7\u000c \u0001(\u000b2=.Communications.HandsetObjects.UpdateRecommendAppLastViewDate\u0012t\n%updateRecommendAppCommentLastViewDate\u0018\u008f\u0006 \u0001(\u000b2D.Communications.HandsetObjects.UpdateRecommendAppCommentLastViewDate\u0012^\n\u001adeleteRecommendCommentLike\u0018\u00d2\u000b \u0001(\u000b29.Communications.HandsetObjects.DeleteRecommendCommentLike\u0012^\n\u001asearchRecommendCommentLike\u0018\u00e9\u0008 \u0001(\u000b29.Communications.HandsetObjects.SearchRecommendCommentLike\u0012x\n\'"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "getRecommendNewApplicationCommentsLikes\u0018\u00a2\u000e \u0001(\u000b2F.Communications.HandsetObjects.GetRecommendNewApplicationCommentsLikes\u0012\u0080\u0001\n+getMyAppsAndFriendsAppsRecommendCommentLike\u0018\u00d9\u0007 \u0001(\u000b2J.Communications.HandsetObjects.GetMyAppsAndFriendsAppsRecommendCommentLike\u0012:\n\u0008addSound\u0018\u00b2\u0004 \u0001(\u000b2\'.Communications.HandsetObjects.AddSound\u0012F\n\u000elogRemoteError\u0018\u0085\u0006 \u0001(\u000b2-.Communications.HandsetObjects.LogRemoteError\u0012P\n\u0013updateVirtualDe"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "vice\u0018\u0082\u0004 \u0001(\u000b22.Communications.HandsetObjects.UpdateVirtualDevice\u0012B\n\u000caddSyncItems\u0018\u00d8\r \u0001(\u000b2+.Communications.HandsetObjects.AddSyncItems\u0012J\n\u0010processSyncItems\u0018\u00f9\r \u0001(\u000b2/.Communications.HandsetObjects.ProcessSyncItems\u0012F\n\u000ebeginFullMerge\u0018\u0083\u000b \u0001(\u000b2-.Communications.HandsetObjects.BeginFullMerge\u0012C\n\rrequestForAdd\u0018\u0017 \u0001(\u000b2,.Communications.HandsetObjects.RequestForAdd\u0012J\n\u0010requestForUpdate\u0018\u00bd\u000c \u0001(\u000b2/.Communications.Handset"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "Objects.RequestForUpdate\u0012B\n\u000cendFullMerge\u0018\u00d4\u000e \u0001(\u000b2+.Communications.HandsetObjects.EndFullMerge\u0012J\n\u0010checkForMessages\u0018\u0081\u0003 \u0001(\u000b2/.Communications.HandsetObjects.CheckForMessages\u0012R\n\u0014setNewVoiceMailCount\u0018\u00f5\u0008 \u0001(\u000b23.Communications.HandsetObjects.SetNewVoiceMailCount\u0012C\n\raddMissedCall\u0018\u001d \u0001(\u000b2,.Communications.HandsetObjects.AddMissedCall\u0012d\n\u001dclearMissedCallsByPhoneNumber\u0018\u00e6\r \u0001(\u000b2<.Communications.HandsetObjects.ClearM"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "issedCallsByPhoneNumber\u0012J\n\u0010clearMissedCalls\u0018\u00e7\u0005 \u0001(\u000b2/.Communications.HandsetObjects.ClearMissedCalls\u0012P\n\u0013clearAllMissedCalls\u0018\u00fd\u000f \u0001(\u000b22.Communications.HandsetObjects.ClearAllMissedCalls\u0012T\n\u0015setMissedCallAsViewed\u0018\u00cc\u0006 \u0001(\u000b24.Communications.HandsetObjects.SetMissedCallAsViewed\u0012V\n\u0016setMissedCallsAsViewed\u0018\u0083\u000e \u0001(\u000b25.Communications.HandsetObjects.SetMissedCallsAsViewed\u0012J\n\u0010addDeviceSetting\u0018\u00b4\u0002 \u0001(\u000b2/.Communications."

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "HandsetObjects.AddDeviceSetting\u0012P\n\u0013updateDeviceSetting\u0018\u00d6\u0002 \u0001(\u000b22.Communications.HandsetObjects.UpdateDeviceSetting\u0012O\n\u0013deleteDeviceSetting\u0018q \u0001(\u000b22.Communications.HandsetObjects.DeleteDeviceSetting\u0012B\n\u000caddWallpaper\u0018\u00f4\u0001 \u0001(\u000b2+.Communications.HandsetObjects.AddWallpaper\u0012X\n\u0017messageQueueTestMessage\u0018\u00c9\t \u0001(\u000b26.Communications.HandsetObjects.MessageQueueTestMessage\"\u00a6\u000c\n\u0004Type\u0012\u0017\n\u0012AddAggregatePerson\u0010\u00a1\u0001\u0012\u001a\n\u0015UpdateAggr"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "egatePerson\u0010\u00a3\n\u0012\u001a\n\u0015DeleteAggregatePerson\u0010\u00fd\t\u0012\u001c\n\u0017GetAggregatePersonImage\u0010\u00c8\r\u0012\u001c\n\u0017SetAggregatePersonImage\u0010\u009d\u0005\u0012\u001f\n\u001aDeleteAggregatePersonImage\u0010\u00a7\u0008\u0012\u001d\n\u0019DeletePeopleByAccountType\u0010Z\u0012\u0013\n\u000eSetPersonImage\u0010\u00d0\u0007\u0012\u0011\n\u000cAddFootprint\u0010\u00f8\r\u0012\u0014\n\u000fUpdateFootprint\u0010\u008a\u000f\u0012\u0014\n\u000fDeleteFootprint\u0010\u00c6\u000c\u0012\u0016\n\u0011SetFootprintImage\u0010\u00c4\u0005\u0012\u0015\n\u0010SetFootprintMemo\u0010\u00bf\u0005\u0012\u000f\n\nAddMessage\u0010\u00a2\u0004\u0012\u0012\n\rUpdateMessage\u0010\u00e4\n\u0012\u0012\n\rDeleteMessage\u0010\u0098\u0004\u0012\u0011\n\u000cAddMyProfile\u0010\u00b3\u000f\u0012\u0014\n\u000fUpdateMyProfile\u0010\u0093\u0002\u0012\u0013\n\u000eA"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "ddPeopleGroup\u0010\u00a5\u000b\u0012\u0014\n\u000fAddPeopleGroups\u0010\u0093\t\u0012\u0016\n\u0011UpdatePeopleGroup\u0010\u00f2\u0002\u0012\u001b\n\u0016AddPeopleToPeopleGroup\u0010\u0098\u0001\u0012 \n\u001bDeletePeopleFromPeopleGroup\u0010\u00be\u0001\u0012\u0016\n\u0011DeletePeopleGroup\u0010\u00c7\u0002\u0012\u001c\n\u0017AddRecommendCommentLike\u0010\u0086\u0003\u0012\u0019\n\u0014AddRecommendWishlist\u0010\u00ee\n\u0012\u001e\n\u0019DeleteRecommendedWishlist\u0010\u00b1\n\u0012\u001c\n\u0017AddRecommendAppsOnPhone\u0010\u00a4\u0008\u0012\u001f\n\u001aDeleteRecommendAppsOnPhone\u0010\u00dc\u0008\u0012\u001e\n\u001aUpdateRecommendCommentLike\u0010(\u0012\u001f\n\u001aUpdateRecommendAppsOnPhone\u0010\u00eb\t\u0012#\n\u001eUpdateRecommendAppLastViewDate"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "\u0010\u00b7\u000c\u0012*\n%UpdateRecommendAppCommentLastViewDate\u0010\u008f\u0006\u0012\u001f\n\u001aDeleteRecommendCommentLike\u0010\u00d2\u000b\u0012\u001f\n\u001aSearchRecommendCommentLike\u0010\u00e9\u0008\u0012,\n\'GetRecommendNewApplicationCommentsLikes\u0010\u00a2\u000e\u00120\n+GetMyAppsAndFriendsAppsRecommendCommentLike\u0010\u00d9\u0007\u0012\r\n\u0008AddSound\u0010\u00b2\u0004\u0012\u0013\n\u000eLogRemoteError\u0010\u0085\u0006\u0012\u0018\n\u0013UpdateVirtualDevice\u0010\u0082\u0004\u0012\u0011\n\u000cAddSyncItems\u0010\u00d8\r\u0012\u0015\n\u0010ProcessSyncItems\u0010\u00f9\r\u0012\u0013\n\u000eBeginFullMerge\u0010\u0083\u000b\u0012\u0011\n\rRequestForAdd\u0010\u0017\u0012\u0015\n\u0010RequestForUpdate\u0010\u00bd\u000c\u0012\u0011\n\u000cEndFullMerge\u0010\u00d4\u000e\u0012\u0015\n\u0010C"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "heckForMessages\u0010\u0081\u0003\u0012\u0019\n\u0014SetNewVoiceMailCount\u0010\u00f5\u0008\u0012\u0011\n\rAddMissedCall\u0010\u001d\u0012\"\n\u001dClearMissedCallsByPhoneNumber\u0010\u00e6\r\u0012\u0015\n\u0010ClearMissedCalls\u0010\u00e7\u0005\u0012\u0018\n\u0013ClearAllMissedCalls\u0010\u00fd\u000f\u0012\u001a\n\u0015SetMissedCallAsViewed\u0010\u00cc\u0006\u0012\u001b\n\u0016SetMissedCallsAsViewed\u0010\u0083\u000e\u0012\u0015\n\u0010AddDeviceSetting\u0010\u00b4\u0002\u0012\u0018\n\u0013UpdateDeviceSetting\u0010\u00d6\u0002\u0012\u0017\n\u0013DeleteDeviceSetting\u0010q\u0012\u0011\n\u000cAddWallpaper\u0010\u00f4\u0001\u0012\u001c\n\u0017MessageQueueTestMessage\u0010\u00c9\tB\u001a\n\u0018com.htc.cscore.transport"

    aput-object v3, v1, v2

    .line 55352
    .local v1, descriptorData:[Ljava/lang/String;
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$1;-><init>()V

    .line 56240
    .local v0, assigner:Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 56244
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UniqueId_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UniqueId_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UniqueId_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$100900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_GetRecommendNewApplicationCommentsLikes_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_GetRecommendNewApplicationCommentsLikes_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$101000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_GetRecommendNewApplicationCommentsLikes_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$101002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_GetRecommendNewApplicationCommentsLikes_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UniqueId_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$102200()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SearchRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$102202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SearchRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$102300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SearchRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SearchRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$103900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateRecommendAppCommentLastViewDate_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$103902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateRecommendAppCommentLastViewDate_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$104000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateRecommendAppCommentLastViewDate_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$104002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateRecommendAppCommentLastViewDate_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$104400()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateRecommendAppLastViewDate_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$104402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateRecommendAppLastViewDate_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$104500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateRecommendAppLastViewDate_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$104502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateRecommendAppLastViewDate_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$104900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateRecommendAppsOnPhone_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$104902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateRecommendAppsOnPhone_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$105000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateRecommendAppsOnPhone_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$105002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateRecommendAppsOnPhone_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$105600()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$105602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$105700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$105702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$106300()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HRecommendedApplicationIcon_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$106302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HRecommendedApplicationIcon_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$106400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HRecommendedApplicationIcon_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$106402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HRecommendedApplicationIcon_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$108000()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HRecommendWishlist_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$108002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HRecommendWishlist_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$108100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HRecommendWishlist_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$108102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HRecommendWishlist_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$109700()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HSound_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$109702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HSound_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$109800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HSound_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$109802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HSound_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$111200()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddSound_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$111202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddSound_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$111300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddSound_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$111302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddSound_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$111900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HSyncItem_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$111902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HSyncItem_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$112000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HSyncItem_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$112002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HSyncItem_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$11300()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HApplicationInformation_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$113000()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HTrace_event_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$113002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HTrace_event_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$11302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HApplicationInformation_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$113100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HTrace_event_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$113102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HTrace_event_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$11400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HApplicationInformation_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HApplicationInformation_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$114100()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_Htrace_events_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$114102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_Htrace_events_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$114200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_Htrace_events_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$114202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_Htrace_events_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$114800()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HVirtualDevice_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$114802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HVirtualDevice_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$114900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HVirtualDevice_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$114902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HVirtualDevice_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$124500()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddMissedCall_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$124502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddMissedCall_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$124600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddMissedCall_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$124602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddMissedCall_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$125200()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddSyncItems_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$125202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddSyncItems_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$125300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddSyncItems_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$125302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddSyncItems_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$125800()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_BeginFullMerge_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$125802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_BeginFullMerge_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$125900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_BeginFullMerge_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$125902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_BeginFullMerge_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$126500()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_CheckForMessages_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$126502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_CheckForMessages_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$126600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_CheckForMessages_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$126602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_CheckForMessages_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$127000()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_ClearAllMissedCalls_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$127002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_ClearAllMissedCalls_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$127100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_ClearAllMissedCalls_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$127102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_ClearAllMissedCalls_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$127500()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_ClearMissedCalls_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$127502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_ClearMissedCalls_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$127600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_ClearMissedCalls_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$127602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_ClearMissedCalls_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$128300()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_ClearMissedCallsByPhoneNumber_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$128302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_ClearMissedCallsByPhoneNumber_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$128400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_ClearMissedCallsByPhoneNumber_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$128402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_ClearMissedCallsByPhoneNumber_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$129000()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_EndFullMerge_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$129002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_EndFullMerge_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$129100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_EndFullMerge_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$129102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_EndFullMerge_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$129500()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_LogRemoteError_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$129502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_LogRemoteError_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$129600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_LogRemoteError_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$129602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_LogRemoteError_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$130200()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_ProcessSyncItems_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$130202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_ProcessSyncItems_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$130300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_ProcessSyncItems_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$130302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_ProcessSyncItems_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$130700()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_RequestForAdd_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$130702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_RequestForAdd_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$130800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_RequestForAdd_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$130802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_RequestForAdd_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$131300()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_RequestForUpdate_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$131302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_RequestForUpdate_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$131400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_RequestForUpdate_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$131402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_RequestForUpdate_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$131900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetMissedCallAsViewed_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$131902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetMissedCallAsViewed_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$132000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetMissedCallAsViewed_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$132002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetMissedCallAsViewed_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$132600()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetMissedCallsAsViewed_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$132602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetMissedCallsAsViewed_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$132700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetMissedCallsAsViewed_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$132702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetMissedCallsAsViewed_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$133200()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetNewVoiceMailCount_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$133202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetNewVoiceMailCount_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$133300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetNewVoiceMailCount_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$133302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetNewVoiceMailCount_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$133900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateVirtualDevice_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$133902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateVirtualDevice_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$134000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateVirtualDevice_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$134002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateVirtualDevice_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$134600()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HVirtualDeviceMissedCall_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$134602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HVirtualDeviceMissedCall_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$134700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HVirtualDeviceMissedCall_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$134702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HVirtualDeviceMissedCall_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$13600()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HExternalError_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$13602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HExternalError_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$136100()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HVirtualDeviceSetting_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$136102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HVirtualDeviceSetting_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$136200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HVirtualDeviceSetting_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$136202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HVirtualDeviceSetting_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$13700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HExternalError_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$13702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HExternalError_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$137400()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddDeviceSetting_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$137402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddDeviceSetting_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$137500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddDeviceSetting_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$137502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddDeviceSetting_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$138100()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteDeviceSetting_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$138102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteDeviceSetting_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$138200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteDeviceSetting_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$138202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteDeviceSetting_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$139000()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateDeviceSetting_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$139002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateDeviceSetting_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$139100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateDeviceSetting_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$139102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateDeviceSetting_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$139700()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HWallpaper_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$139702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HWallpaper_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$139800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HWallpaper_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$139802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HWallpaper_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HAggregatePerson_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HAggregatePerson_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$141200()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddWallpaper_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$141202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddWallpaper_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$141300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddWallpaper_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$141302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddWallpaper_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$141900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_MessageQueueTestMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$141902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_MessageQueueTestMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$142000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_MessageQueueTestMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$142002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_MessageQueueTestMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$143200()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HSyncMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$143202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HSyncMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$143300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HSyncMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$143302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HSyncMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$14900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFeatureState_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$14902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFeatureState_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HAggregatePerson_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$15000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFeatureState_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$15002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFeatureState_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HAggregatePerson_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$155702(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$16400()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFootprint_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$16402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFootprint_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$16500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFootprint_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$16502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFootprint_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$20700()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddFootprint_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$20702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddFootprint_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$20800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddFootprint_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$20802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddFootprint_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$21400()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteFootprint_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$21402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteFootprint_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$21500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteFootprint_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$21502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteFootprint_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$22300()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetFootprintImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$22302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetFootprintImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$22400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetFootprintImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$22402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetFootprintImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$23000()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetFootprintMemo_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$23002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetFootprintMemo_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$23100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetFootprintMemo_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$23102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetFootprintMemo_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$23700()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateFootprint_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$23702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateFootprint_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$23800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateFootprint_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$23802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateFootprint_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$24400()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFootprintCategory_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$24402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFootprintCategory_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$24500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFootprintCategory_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$24502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFootprintCategory_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$25500()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFootprintImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$25502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFootprintImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$25600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFootprintImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$25602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFootprintImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$27600()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFootprintMemo_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$27602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFootprintMemo_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$27700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFootprintMemo_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$27702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFootprintMemo_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$29500()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFreetextMessageKeywordSearchResult_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$29502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFreetextMessageKeywordSearchResult_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$29600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFreetextMessageKeywordSearchResult_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$29602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFreetextMessageKeywordSearchResult_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$30600()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFreetextMessageKeywordSearchTable_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$30602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFreetextMessageKeywordSearchTable_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$30700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFreetextMessageKeywordSearchTable_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$30702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFreetextMessageKeywordSearchTable_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$31300()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFriendRequest_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$31302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFriendRequest_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$31400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFriendRequest_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$31402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HFriendRequest_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$32800()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$32802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$32900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$32902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$35900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$35902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3600()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddAggregatePerson_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$36000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$36002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddAggregatePerson_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$36600()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$36602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$36700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$36702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddAggregatePerson_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddAggregatePerson_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$37500()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$37502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateMessage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$37600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$37602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateMessage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$38200()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMessageAttachment_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$38202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMessageAttachment_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$38300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMessageAttachment_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$38302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMessageAttachment_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$39900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMessageRecipient_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$39902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMessageRecipient_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$40000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMessageRecipient_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$40002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMessageRecipient_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$41400()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfile_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$41402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfile_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$41500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfile_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$41502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfile_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4300()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteAggregatePerson_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteAggregatePerson_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteAggregatePerson_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteAggregatePerson_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$46100()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddMyProfile_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$46102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddMyProfile_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$46200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddMyProfile_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$46202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddMyProfile_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$46800()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateMyProfile_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$46802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateMyProfile_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$46900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateMyProfile_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$46902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateMyProfile_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$47500()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileAddress_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$47502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileAddress_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$47600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileAddress_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$47602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileAddress_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$50400()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileEmailAddress_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$50402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileEmailAddress_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$50500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileEmailAddress_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$50502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileEmailAddress_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5200()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteAggregatePersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteAggregatePersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$52100()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileEvent_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$52102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileEvent_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$52200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileEvent_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$52202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileEvent_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteAggregatePersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteAggregatePersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$54000()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$54002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$54100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$54102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$56100()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileInstantMessagingID_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$56102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileInstantMessagingID_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$56200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileInstantMessagingID_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$56202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileInstantMessagingID_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$57800()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileNote_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$57802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileNote_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$57900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileNote_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$57902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileNote_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeletePeopleByAccountType_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeletePeopleByAccountType_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$59300()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileOrganization_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$59302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileOrganization_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$59400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileOrganization_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$59402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileOrganization_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$6000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeletePeopleByAccountType_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeletePeopleByAccountType_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$61000()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfilePhoneNumber_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$61002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfilePhoneNumber_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$61100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfilePhoneNumber_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$61102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfilePhoneNumber_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$62900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileWebSite_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$62902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileWebSite_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$63000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileWebSite_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$63002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HMyProfileWebSite_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$64400()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HNewItemNotification_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$64402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HNewItemNotification_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$64500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HNewItemNotification_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$64502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HNewItemNotification_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$6600()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_GetAggregatePersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_GetAggregatePersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$66500()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$66502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$66600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$66602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$6700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_GetAggregatePersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_GetAggregatePersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$68400()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddPeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$68402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddPeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$68500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddPeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$68502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddPeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$69100()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddPeopleGroups_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$69102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddPeopleGroups_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$69200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddPeopleGroups_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$69202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddPeopleGroups_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$69700()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddPeopleToPeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$69702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddPeopleToPeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$69800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddPeopleToPeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$69802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddPeopleToPeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$700()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_Image_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_Image_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$70300()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeletePeopleFromPeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$70302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeletePeopleFromPeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$70400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeletePeopleFromPeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$70402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeletePeopleFromPeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$70900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeletePeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$70902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeletePeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$71000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeletePeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$71002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeletePeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$71800()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdatePeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$71802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdatePeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$71900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdatePeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$71902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdatePeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$72500()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPerson_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$72502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPerson_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$72600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPerson_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$72602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPerson_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$7300()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetAggregatePersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetAggregatePersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$7400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetAggregatePersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetAggregatePersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$76200()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonAddress_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$76202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonAddress_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$76300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonAddress_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$76302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonAddress_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$79100()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonEmailAddress_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$79102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonEmailAddress_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$79200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonEmailAddress_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$79202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonEmailAddress_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_Image_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8000()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetPersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetPersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_Image_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$80800()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$80802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$80900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$80902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$8100()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetPersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_SetPersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$82700()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonPhoneNumber_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$82702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonPhoneNumber_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$82800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonPhoneNumber_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$82802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonPhoneNumber_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$84600()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonSetting_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$84602(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonSetting_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$84700()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonSetting_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$84702(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonSetting_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$86500()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonToPeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$86502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonToPeopleGroup_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$86600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonToPeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$86602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPersonToPeopleGroup_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$8700()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateAggregatePerson_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$8702(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateAggregatePerson_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$87800()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPhoneApplication_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$87802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPhoneApplication_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$87900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPhoneApplication_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$87902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPhoneApplication_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$8800()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateAggregatePerson_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_UpdateAggregatePerson_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$88900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPudData_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$88902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPudData_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$89000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPudData_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$89002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HPudData_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$90200()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HRecommendAppsOnPhone_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$90202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HRecommendAppsOnPhone_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$90300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HRecommendAppsOnPhone_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$90302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HRecommendAppsOnPhone_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$92100()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$92102(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$92200()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$92202(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$9400()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HAggregatePersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9402(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HAggregatePersonImage_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$94200()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddRecommendAppsOnPhone_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$94202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddRecommendAppsOnPhone_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$94300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddRecommendAppsOnPhone_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$94302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddRecommendAppsOnPhone_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$94900()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$94902(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$9500()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HAggregatePersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$95000()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$95002(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$9502(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_HAggregatePersonImage_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$95800()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddRecommendWishlist_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$95802(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddRecommendWishlist_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$95900()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddRecommendWishlist_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$95902(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_AddRecommendWishlist_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$96500()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteRecommendAppsOnPhone_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$96502(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteRecommendAppsOnPhone_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$96600()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteRecommendAppsOnPhone_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$96602(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteRecommendAppsOnPhone_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$97200()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$97202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$97300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$97302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$98300()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteRecommendedWishlist_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$98302(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteRecommendedWishlist_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$98400()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteRecommendedWishlist_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$98402(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_DeleteRecommendedWishlist_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$99200()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_GetMyAppsAndFriendsAppsRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$99202(Lcom/htc/protobuf/Descriptors$Descriptor;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_GetMyAppsAndFriendsAppsRecommendCommentLike_descriptor:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$99300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_GetMyAppsAndFriendsAppsRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$99302(Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 5
    sput-object p0, Lcom/htc/cscore/transport/SyncProtocol;->internal_static_Communications_HandsetObjects_GetMyAppsAndFriendsAppsRecommendCommentLike_fieldAccessorTable:Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 54576
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol;->descriptor:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 56246
    return-void
.end method

.method public static registerAllExtensions(Lcom/htc/protobuf/ExtensionRegistry;)V
    .locals 0
    .parameter "registry"

    .prologue
    .line 9
    return-void
.end method
