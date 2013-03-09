.class public final Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
.super Lcom/htc/protobuf/GeneratedMessage;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HSyncMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;,
        Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    }
.end annotation


# static fields
.field public static final ADDAGGREGATEPERSON_FIELD_NUMBER:I = 0xa1

.field public static final ADDDEVICESETTING_FIELD_NUMBER:I = 0x134

.field public static final ADDFOOTPRINT_FIELD_NUMBER:I = 0x6f8

.field public static final ADDMESSAGE_FIELD_NUMBER:I = 0x222

.field public static final ADDMISSEDCALL_FIELD_NUMBER:I = 0x1d

.field public static final ADDMYPROFILE_FIELD_NUMBER:I = 0x7b3

.field public static final ADDPEOPLEGROUPS_FIELD_NUMBER:I = 0x493

.field public static final ADDPEOPLEGROUP_FIELD_NUMBER:I = 0x5a5

.field public static final ADDPEOPLETOPEOPLEGROUP_FIELD_NUMBER:I = 0x98

.field public static final ADDRECOMMENDAPPSONPHONE_FIELD_NUMBER:I = 0x424

.field public static final ADDRECOMMENDCOMMENTLIKE_FIELD_NUMBER:I = 0x186

.field public static final ADDRECOMMENDWISHLIST_FIELD_NUMBER:I = 0x56e

.field public static final ADDSOUND_FIELD_NUMBER:I = 0x232

.field public static final ADDSYNCITEMS_FIELD_NUMBER:I = 0x6d8

.field public static final ADDWALLPAPER_FIELD_NUMBER:I = 0xf4

.field public static final BEGINFULLMERGE_FIELD_NUMBER:I = 0x583

.field public static final CHECKFORMESSAGES_FIELD_NUMBER:I = 0x181

.field public static final CLEARALLMISSEDCALLS_FIELD_NUMBER:I = 0x7fd

.field public static final CLEARMISSEDCALLSBYPHONENUMBER_FIELD_NUMBER:I = 0x6e6

.field public static final CLEARMISSEDCALLS_FIELD_NUMBER:I = 0x2e7

.field public static final DELETEAGGREGATEPERSONIMAGE_FIELD_NUMBER:I = 0x427

.field public static final DELETEAGGREGATEPERSON_FIELD_NUMBER:I = 0x4fd

.field public static final DELETEDEVICESETTING_FIELD_NUMBER:I = 0x71

.field public static final DELETEFOOTPRINT_FIELD_NUMBER:I = 0x646

.field public static final DELETEMESSAGE_FIELD_NUMBER:I = 0x218

.field public static final DELETEPEOPLEBYACCOUNTTYPE_FIELD_NUMBER:I = 0x5a

.field public static final DELETEPEOPLEFROMPEOPLEGROUP_FIELD_NUMBER:I = 0xbe

.field public static final DELETEPEOPLEGROUP_FIELD_NUMBER:I = 0x147

.field public static final DELETERECOMMENDAPPSONPHONE_FIELD_NUMBER:I = 0x45c

.field public static final DELETERECOMMENDCOMMENTLIKE_FIELD_NUMBER:I = 0x5d2

.field public static final DELETERECOMMENDEDWISHLIST_FIELD_NUMBER:I = 0x531

.field public static final ENDFULLMERGE_FIELD_NUMBER:I = 0x754

.field public static final GETAGGREGATEPERSONIMAGE_FIELD_NUMBER:I = 0x6c8

.field public static final GETMYAPPSANDFRIENDSAPPSRECOMMENDCOMMENTLIKE_FIELD_NUMBER:I = 0x3d9

.field public static final GETRECOMMENDNEWAPPLICATIONCOMMENTSLIKES_FIELD_NUMBER:I = 0x722

.field public static final LOGREMOTEERROR_FIELD_NUMBER:I = 0x305

.field public static final MESSAGEQUEUETESTMESSAGE_FIELD_NUMBER:I = 0x4c9

.field public static final PROCESSSYNCITEMS_FIELD_NUMBER:I = 0x6f9

.field public static final REQUESTFORADD_FIELD_NUMBER:I = 0x17

.field public static final REQUESTFORUPDATE_FIELD_NUMBER:I = 0x63d

.field public static final SEARCHRECOMMENDCOMMENTLIKE_FIELD_NUMBER:I = 0x469

.field public static final SETAGGREGATEPERSONIMAGE_FIELD_NUMBER:I = 0x29d

.field public static final SETFOOTPRINTIMAGE_FIELD_NUMBER:I = 0x2c4

.field public static final SETFOOTPRINTMEMO_FIELD_NUMBER:I = 0x2bf

.field public static final SETMISSEDCALLASVIEWED_FIELD_NUMBER:I = 0x34c

.field public static final SETMISSEDCALLSASVIEWED_FIELD_NUMBER:I = 0x703

.field public static final SETNEWVOICEMAILCOUNT_FIELD_NUMBER:I = 0x475

.field public static final SETPERSONIMAGE_FIELD_NUMBER:I = 0x3d0

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final UPDATEAGGREGATEPERSON_FIELD_NUMBER:I = 0x523

.field public static final UPDATEDEVICESETTING_FIELD_NUMBER:I = 0x156

.field public static final UPDATEFOOTPRINT_FIELD_NUMBER:I = 0x78a

.field public static final UPDATEMESSAGE_FIELD_NUMBER:I = 0x564

.field public static final UPDATEMYPROFILE_FIELD_NUMBER:I = 0x113

.field public static final UPDATEPEOPLEGROUP_FIELD_NUMBER:I = 0x172

.field public static final UPDATERECOMMENDAPPCOMMENTLASTVIEWDATE_FIELD_NUMBER:I = 0x30f

.field public static final UPDATERECOMMENDAPPLASTVIEWDATE_FIELD_NUMBER:I = 0x637

.field public static final UPDATERECOMMENDAPPSONPHONE_FIELD_NUMBER:I = 0x4eb

.field public static final UPDATERECOMMENDCOMMENTLIKE_FIELD_NUMBER:I = 0x28

.field public static final UPDATEVIRTUALDEVICE_FIELD_NUMBER:I = 0x202

.field private static final defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;


# instance fields
.field private addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

.field private addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

.field private addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

.field private addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

.field private addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

.field private addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

.field private addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

.field private addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

.field private addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

.field private addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

.field private addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

.field private addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

.field private addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

.field private addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

.field private addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

.field private beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

.field private checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

.field private clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

.field private clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

.field private clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

.field private deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

.field private deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

.field private deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

.field private deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

.field private deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

.field private deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

.field private deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

.field private deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

.field private deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

.field private deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

.field private deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

.field private endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

.field private getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

.field private getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

.field private getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

.field private hasAddAggregatePerson:Z

.field private hasAddDeviceSetting:Z

.field private hasAddFootprint:Z

.field private hasAddMessage:Z

.field private hasAddMissedCall:Z

.field private hasAddMyProfile:Z

.field private hasAddPeopleGroup:Z

.field private hasAddPeopleGroups:Z

.field private hasAddPeopleToPeopleGroup:Z

.field private hasAddRecommendAppsOnPhone:Z

.field private hasAddRecommendCommentLike:Z

.field private hasAddRecommendWishlist:Z

.field private hasAddSound:Z

.field private hasAddSyncItems:Z

.field private hasAddWallpaper:Z

.field private hasBeginFullMerge:Z

.field private hasCheckForMessages:Z

.field private hasClearAllMissedCalls:Z

.field private hasClearMissedCalls:Z

.field private hasClearMissedCallsByPhoneNumber:Z

.field private hasDeleteAggregatePerson:Z

.field private hasDeleteAggregatePersonImage:Z

.field private hasDeleteDeviceSetting:Z

.field private hasDeleteFootprint:Z

.field private hasDeleteMessage:Z

.field private hasDeletePeopleByAccountType:Z

.field private hasDeletePeopleFromPeopleGroup:Z

.field private hasDeletePeopleGroup:Z

.field private hasDeleteRecommendAppsOnPhone:Z

.field private hasDeleteRecommendCommentLike:Z

.field private hasDeleteRecommendedWishlist:Z

.field private hasEndFullMerge:Z

.field private hasGetAggregatePersonImage:Z

.field private hasGetMyAppsAndFriendsAppsRecommendCommentLike:Z

.field private hasGetRecommendNewApplicationCommentsLikes:Z

.field private hasLogRemoteError:Z

.field private hasMessageQueueTestMessage:Z

.field private hasProcessSyncItems:Z

.field private hasRequestForAdd:Z

.field private hasRequestForUpdate:Z

.field private hasSearchRecommendCommentLike:Z

.field private hasSetAggregatePersonImage:Z

.field private hasSetFootprintImage:Z

.field private hasSetFootprintMemo:Z

.field private hasSetMissedCallAsViewed:Z

.field private hasSetMissedCallsAsViewed:Z

.field private hasSetNewVoiceMailCount:Z

.field private hasSetPersonImage:Z

.field private hasType:Z

.field private hasUpdateAggregatePerson:Z

.field private hasUpdateDeviceSetting:Z

.field private hasUpdateFootprint:Z

.field private hasUpdateMessage:Z

.field private hasUpdateMyProfile:Z

.field private hasUpdatePeopleGroup:Z

.field private hasUpdateRecommendAppCommentLastViewDate:Z

.field private hasUpdateRecommendAppLastViewDate:Z

.field private hasUpdateRecommendAppsOnPhone:Z

.field private hasUpdateRecommendCommentLike:Z

.field private hasUpdateVirtualDevice:Z

.field private logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

.field private memoizedSerializedSize:I

.field private messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

.field private processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

.field private requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

.field private requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

.field private searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

.field private setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

.field private setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

.field private setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

.field private setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

.field private setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

.field private setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

.field private setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

.field private type_:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field private updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

.field private updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

.field private updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

.field private updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

.field private updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

.field private updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

.field private updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

.field private updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

.field private updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

.field private updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

.field private updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->type_:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;-><init>()V

    return-void
.end method

.method static synthetic access$143702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType:Z

    return p1
.end method

.method static synthetic access$143802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->type_:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    return-object p1
.end method

.method static synthetic access$143902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson:Z

    return p1
.end method

.method static synthetic access$144000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    return-object v0
.end method

.method static synthetic access$144002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    return-object p1
.end method

.method static synthetic access$144102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson:Z

    return p1
.end method

.method static synthetic access$144200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    return-object v0
.end method

.method static synthetic access$144202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    return-object p1
.end method

.method static synthetic access$144302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson:Z

    return p1
.end method

.method static synthetic access$144400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    return-object v0
.end method

.method static synthetic access$144402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    return-object p1
.end method

.method static synthetic access$144502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage:Z

    return p1
.end method

.method static synthetic access$144600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    return-object v0
.end method

.method static synthetic access$144602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    return-object p1
.end method

.method static synthetic access$144702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage:Z

    return p1
.end method

.method static synthetic access$144800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    return-object v0
.end method

.method static synthetic access$144802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    return-object p1
.end method

.method static synthetic access$144902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage:Z

    return p1
.end method

.method static synthetic access$145000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    return-object v0
.end method

.method static synthetic access$145002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    return-object p1
.end method

.method static synthetic access$145102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType:Z

    return p1
.end method

.method static synthetic access$145200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    return-object v0
.end method

.method static synthetic access$145202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    return-object p1
.end method

.method static synthetic access$145302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage:Z

    return p1
.end method

.method static synthetic access$145400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    return-object v0
.end method

.method static synthetic access$145402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    return-object p1
.end method

.method static synthetic access$145502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint:Z

    return p1
.end method

.method static synthetic access$145600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    return-object v0
.end method

.method static synthetic access$145602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    return-object p1
.end method

.method static synthetic access$145702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint:Z

    return p1
.end method

.method static synthetic access$145800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    return-object v0
.end method

.method static synthetic access$145802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    return-object p1
.end method

.method static synthetic access$145902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint:Z

    return p1
.end method

.method static synthetic access$146000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    return-object v0
.end method

.method static synthetic access$146002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    return-object p1
.end method

.method static synthetic access$146102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage:Z

    return p1
.end method

.method static synthetic access$146200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    return-object v0
.end method

.method static synthetic access$146202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    return-object p1
.end method

.method static synthetic access$146302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo:Z

    return p1
.end method

.method static synthetic access$146400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    return-object v0
.end method

.method static synthetic access$146402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    return-object p1
.end method

.method static synthetic access$146502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage:Z

    return p1
.end method

.method static synthetic access$146600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    return-object v0
.end method

.method static synthetic access$146602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    return-object p1
.end method

.method static synthetic access$146702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage:Z

    return p1
.end method

.method static synthetic access$146800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    return-object v0
.end method

.method static synthetic access$146802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    return-object p1
.end method

.method static synthetic access$146902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage:Z

    return p1
.end method

.method static synthetic access$147000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    return-object v0
.end method

.method static synthetic access$147002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    return-object p1
.end method

.method static synthetic access$147102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile:Z

    return p1
.end method

.method static synthetic access$147200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    return-object v0
.end method

.method static synthetic access$147202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    return-object p1
.end method

.method static synthetic access$147302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile:Z

    return p1
.end method

.method static synthetic access$147400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    return-object v0
.end method

.method static synthetic access$147402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    return-object p1
.end method

.method static synthetic access$147502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup:Z

    return p1
.end method

.method static synthetic access$147600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    return-object v0
.end method

.method static synthetic access$147602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    return-object p1
.end method

.method static synthetic access$147702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups:Z

    return p1
.end method

.method static synthetic access$147800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    return-object v0
.end method

.method static synthetic access$147802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    return-object p1
.end method

.method static synthetic access$147902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup:Z

    return p1
.end method

.method static synthetic access$148000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    return-object v0
.end method

.method static synthetic access$148002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    return-object p1
.end method

.method static synthetic access$148102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup:Z

    return p1
.end method

.method static synthetic access$148200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    return-object v0
.end method

.method static synthetic access$148202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    return-object p1
.end method

.method static synthetic access$148302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup:Z

    return p1
.end method

.method static synthetic access$148400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    return-object v0
.end method

.method static synthetic access$148402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    return-object p1
.end method

.method static synthetic access$148502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup:Z

    return p1
.end method

.method static synthetic access$148600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    return-object v0
.end method

.method static synthetic access$148602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    return-object p1
.end method

.method static synthetic access$148702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike:Z

    return p1
.end method

.method static synthetic access$148800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    return-object v0
.end method

.method static synthetic access$148802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    return-object p1
.end method

.method static synthetic access$148902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist:Z

    return p1
.end method

.method static synthetic access$149000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    return-object v0
.end method

.method static synthetic access$149002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    return-object p1
.end method

.method static synthetic access$149102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist:Z

    return p1
.end method

.method static synthetic access$149200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    return-object v0
.end method

.method static synthetic access$149202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    return-object p1
.end method

.method static synthetic access$149302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone:Z

    return p1
.end method

.method static synthetic access$149400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    return-object v0
.end method

.method static synthetic access$149402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    return-object p1
.end method

.method static synthetic access$149502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone:Z

    return p1
.end method

.method static synthetic access$149600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    return-object v0
.end method

.method static synthetic access$149602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    return-object p1
.end method

.method static synthetic access$149702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike:Z

    return p1
.end method

.method static synthetic access$149800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    return-object v0
.end method

.method static synthetic access$149802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    return-object p1
.end method

.method static synthetic access$149902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone:Z

    return p1
.end method

.method static synthetic access$150000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    return-object v0
.end method

.method static synthetic access$150002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    return-object p1
.end method

.method static synthetic access$150102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate:Z

    return p1
.end method

.method static synthetic access$150200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    return-object v0
.end method

.method static synthetic access$150202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    return-object p1
.end method

.method static synthetic access$150302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate:Z

    return p1
.end method

.method static synthetic access$150400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    return-object v0
.end method

.method static synthetic access$150402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    return-object p1
.end method

.method static synthetic access$150502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike:Z

    return p1
.end method

.method static synthetic access$150600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    return-object v0
.end method

.method static synthetic access$150602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    return-object p1
.end method

.method static synthetic access$150702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike:Z

    return p1
.end method

.method static synthetic access$150800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object v0
.end method

.method static synthetic access$150802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object p1
.end method

.method static synthetic access$150902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes:Z

    return p1
.end method

.method static synthetic access$151000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    return-object v0
.end method

.method static synthetic access$151002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    return-object p1
.end method

.method static synthetic access$151102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike:Z

    return p1
.end method

.method static synthetic access$151200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    return-object v0
.end method

.method static synthetic access$151202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    return-object p1
.end method

.method static synthetic access$151302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound:Z

    return p1
.end method

.method static synthetic access$151400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    return-object v0
.end method

.method static synthetic access$151402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    return-object p1
.end method

.method static synthetic access$151502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError:Z

    return p1
.end method

.method static synthetic access$151600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    return-object v0
.end method

.method static synthetic access$151602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    return-object p1
.end method

.method static synthetic access$151702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice:Z

    return p1
.end method

.method static synthetic access$151800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    return-object v0
.end method

.method static synthetic access$151802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    return-object p1
.end method

.method static synthetic access$151902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems:Z

    return p1
.end method

.method static synthetic access$152000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    return-object v0
.end method

.method static synthetic access$152002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    return-object p1
.end method

.method static synthetic access$152102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems:Z

    return p1
.end method

.method static synthetic access$152200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    return-object v0
.end method

.method static synthetic access$152202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    return-object p1
.end method

.method static synthetic access$152302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge:Z

    return p1
.end method

.method static synthetic access$152400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    return-object v0
.end method

.method static synthetic access$152402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    return-object p1
.end method

.method static synthetic access$152502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd:Z

    return p1
.end method

.method static synthetic access$152600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    return-object v0
.end method

.method static synthetic access$152602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    return-object p1
.end method

.method static synthetic access$152702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate:Z

    return p1
.end method

.method static synthetic access$152800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    return-object v0
.end method

.method static synthetic access$152802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    return-object p1
.end method

.method static synthetic access$152902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge:Z

    return p1
.end method

.method static synthetic access$153000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    return-object v0
.end method

.method static synthetic access$153002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    return-object p1
.end method

.method static synthetic access$153102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages:Z

    return p1
.end method

.method static synthetic access$153200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    return-object v0
.end method

.method static synthetic access$153202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    return-object p1
.end method

.method static synthetic access$153302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount:Z

    return p1
.end method

.method static synthetic access$153400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    return-object v0
.end method

.method static synthetic access$153402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    return-object p1
.end method

.method static synthetic access$153502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall:Z

    return p1
.end method

.method static synthetic access$153600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    return-object v0
.end method

.method static synthetic access$153602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    return-object p1
.end method

.method static synthetic access$153702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber:Z

    return p1
.end method

.method static synthetic access$153800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    return-object v0
.end method

.method static synthetic access$153802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    return-object p1
.end method

.method static synthetic access$153902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls:Z

    return p1
.end method

.method static synthetic access$154000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    return-object v0
.end method

.method static synthetic access$154002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    return-object p1
.end method

.method static synthetic access$154102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls:Z

    return p1
.end method

.method static synthetic access$154200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    return-object v0
.end method

.method static synthetic access$154202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    return-object p1
.end method

.method static synthetic access$154302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed:Z

    return p1
.end method

.method static synthetic access$154400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    return-object v0
.end method

.method static synthetic access$154402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    return-object p1
.end method

.method static synthetic access$154502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed:Z

    return p1
.end method

.method static synthetic access$154600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    return-object v0
.end method

.method static synthetic access$154602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    return-object p1
.end method

.method static synthetic access$154702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting:Z

    return p1
.end method

.method static synthetic access$154800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    return-object v0
.end method

.method static synthetic access$154802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    return-object p1
.end method

.method static synthetic access$154902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting:Z

    return p1
.end method

.method static synthetic access$155000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    return-object v0
.end method

.method static synthetic access$155002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    return-object p1
.end method

.method static synthetic access$155102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting:Z

    return p1
.end method

.method static synthetic access$155200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    return-object v0
.end method

.method static synthetic access$155202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    return-object p1
.end method

.method static synthetic access$155302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper:Z

    return p1
.end method

.method static synthetic access$155400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    return-object v0
.end method

.method static synthetic access$155402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    return-object p1
.end method

.method static synthetic access$155502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage:Z

    return p1
.end method

.method static synthetic access$155600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    return-object v0
.end method

.method static synthetic access$155602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 0

    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$143200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 1

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->access$143500()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->access$143400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->access$143400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->access$143400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/protobuf/ByteString;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->access$143400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->access$143400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->access$143400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->access$143400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->access$143400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom([B)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->access$143400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom([BLcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->access$143400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    return-object v0
.end method

.method public getAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    return-object v0
.end method

.method public getAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    return-object v0
.end method

.method public getAddMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    return-object v0
.end method

.method public getAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    return-object v0
.end method

.method public getAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    return-object v0
.end method

.method public getAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    return-object v0
.end method

.method public getAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    return-object v0
.end method

.method public getAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    return-object v0
.end method

.method public getAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    return-object v0
.end method

.method public getAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    return-object v0
.end method

.method public getAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    return-object v0
.end method

.method public getAddSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    return-object v0
.end method

.method public getAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    return-object v0
.end method

.method public getAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    return-object v0
.end method

.method public getBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    return-object v0
.end method

.method public getCheckForMessages()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    return-object v0
.end method

.method public getClearAllMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    return-object v0
.end method

.method public getClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    return-object v0
.end method

.method public getClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1

    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    return-object v0
.end method

.method public getDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    return-object v0
.end method

.method public getDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    return-object v0
.end method

.method public getDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    return-object v0
.end method

.method public getDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    return-object v0
.end method

.method public getDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    return-object v0
.end method

.method public getDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    return-object v0
.end method

.method public getDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    return-object v0
.end method

.method public getDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    return-object v0
.end method

.method public getDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    return-object v0
.end method

.method public getDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    return-object v0
.end method

.method public getEndFullMerge()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    return-object v0
.end method

.method public getGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    return-object v0
.end method

.method public getGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    return-object v0
.end method

.method public getGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    return-object v0
.end method

.method public getLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    return-object v0
.end method

.method public getMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    return-object v0
.end method

.method public getProcessSyncItems()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    return-object v0
.end method

.method public getRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    return-object v0
.end method

.method public getRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    return-object v0
.end method

.method public getSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x28

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x5a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x71

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x98

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0xa1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0xbe

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper()Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0xf4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile()Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x113

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting()Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x134

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup()Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x147

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting()Z

    move-result v2

    if-eqz v2, :cond_e

    const/16 v2, 0x156

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup()Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v2, 0x172

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages()Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v2, 0x181

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getCheckForMessages()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_10
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike()Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v2, 0x186

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice()Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x202

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_12
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage()Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x218

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_13
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage()Z

    move-result v2

    if-eqz v2, :cond_14

    const/16 v2, 0x222

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound()Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v2, 0x232

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_15
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage()Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x29d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_16
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo()Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v2, 0x2bf

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_17
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage()Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x2c4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_18
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls()Z

    move-result v2

    if-eqz v2, :cond_19

    const/16 v2, 0x2e7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_19
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v2, 0x305

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/16 v2, 0x30f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/16 v2, 0x34c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/16 v2, 0x3d0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/16 v2, 0x3d9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone()Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v2, 0x424

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage()Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v2, 0x427

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_20
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone()Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v2, 0x45c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_21
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike()Z

    move-result v2

    if-eqz v2, :cond_22

    const/16 v2, 0x469

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_22
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount()Z

    move-result v2

    if-eqz v2, :cond_23

    const/16 v2, 0x475

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_23
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups()Z

    move-result v2

    if-eqz v2, :cond_24

    const/16 v2, 0x493

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_24
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage()Z

    move-result v2

    if-eqz v2, :cond_25

    const/16 v2, 0x4c9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_25
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone()Z

    move-result v2

    if-eqz v2, :cond_26

    const/16 v2, 0x4eb

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_26
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson()Z

    move-result v2

    if-eqz v2, :cond_27

    const/16 v2, 0x4fd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_27
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson()Z

    move-result v2

    if-eqz v2, :cond_28

    const/16 v2, 0x523

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_28
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist()Z

    move-result v2

    if-eqz v2, :cond_29

    const/16 v2, 0x531

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_29
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage()Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0x564

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist()Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x56e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge()Z

    move-result v2

    if-eqz v2, :cond_2c

    const/16 v2, 0x583

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup()Z

    move-result v2

    if-eqz v2, :cond_2d

    const/16 v2, 0x5a5

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0x5d2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate()Z

    move-result v2

    if-eqz v2, :cond_2f

    const/16 v2, 0x637

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate()Z

    move-result v2

    if-eqz v2, :cond_30

    const/16 v2, 0x63d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_30
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint()Z

    move-result v2

    if-eqz v2, :cond_31

    const/16 v2, 0x646

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_31
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage()Z

    move-result v2

    if-eqz v2, :cond_32

    const/16 v2, 0x6c8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_32
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems()Z

    move-result v2

    if-eqz v2, :cond_33

    const/16 v2, 0x6d8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_33
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_34

    const/16 v2, 0x6e6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_34
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint()Z

    move-result v2

    if-eqz v2, :cond_35

    const/16 v2, 0x6f8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_35
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems()Z

    move-result v2

    if-eqz v2, :cond_36

    const/16 v2, 0x6f9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getProcessSyncItems()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_36
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed()Z

    move-result v2

    if-eqz v2, :cond_37

    const/16 v2, 0x703

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_37
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes()Z

    move-result v2

    if-eqz v2, :cond_38

    const/16 v2, 0x722

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_38
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge()Z

    move-result v2

    if-eqz v2, :cond_39

    const/16 v2, 0x754

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getEndFullMerge()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_39
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint()Z

    move-result v2

    if-eqz v2, :cond_3a

    const/16 v2, 0x78a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile()Z

    move-result v2

    if-eqz v2, :cond_3b

    const/16 v2, 0x7b3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls()Z

    move-result v2

    if-eqz v2, :cond_3c

    const/16 v2, 0x7fd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearAllMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->memoizedSerializedSize:I

    move v1, v0

    goto/16 :goto_0
.end method

.method public getSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    return-object v0
.end method

.method public getSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    return-object v0
.end method

.method public getSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    return-object v0
.end method

.method public getSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    return-object v0
.end method

.method public getSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    return-object v0
.end method

.method public getSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    return-object v0
.end method

.method public getSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    return-object v0
.end method

.method public getType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->type_:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    return-object v0
.end method

.method public getUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    return-object v0
.end method

.method public getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    return-object v0
.end method

.method public getUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    return-object v0
.end method

.method public getUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    return-object v0
.end method

.method public getUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    return-object v0
.end method

.method public getUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    return-object v0
.end method

.method public getUpdateRecommendAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    return-object v0
.end method

.method public getUpdateRecommendAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    return-object v0
.end method

.method public getUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    return-object v0
.end method

.method public getUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    return-object v0
.end method

.method public getUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    return-object v0
.end method

.method public hasAddAggregatePerson()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson:Z

    return v0
.end method

.method public hasAddDeviceSetting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting:Z

    return v0
.end method

.method public hasAddFootprint()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint:Z

    return v0
.end method

.method public hasAddMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage:Z

    return v0
.end method

.method public hasAddMissedCall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall:Z

    return v0
.end method

.method public hasAddMyProfile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile:Z

    return v0
.end method

.method public hasAddPeopleGroup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup:Z

    return v0
.end method

.method public hasAddPeopleGroups()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups:Z

    return v0
.end method

.method public hasAddPeopleToPeopleGroup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup:Z

    return v0
.end method

.method public hasAddRecommendAppsOnPhone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone:Z

    return v0
.end method

.method public hasAddRecommendCommentLike()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike:Z

    return v0
.end method

.method public hasAddRecommendWishlist()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist:Z

    return v0
.end method

.method public hasAddSound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound:Z

    return v0
.end method

.method public hasAddSyncItems()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems:Z

    return v0
.end method

.method public hasAddWallpaper()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper:Z

    return v0
.end method

.method public hasBeginFullMerge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge:Z

    return v0
.end method

.method public hasCheckForMessages()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages:Z

    return v0
.end method

.method public hasClearAllMissedCalls()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls:Z

    return v0
.end method

.method public hasClearMissedCalls()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls:Z

    return v0
.end method

.method public hasClearMissedCallsByPhoneNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber:Z

    return v0
.end method

.method public hasDeleteAggregatePerson()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson:Z

    return v0
.end method

.method public hasDeleteAggregatePersonImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage:Z

    return v0
.end method

.method public hasDeleteDeviceSetting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting:Z

    return v0
.end method

.method public hasDeleteFootprint()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint:Z

    return v0
.end method

.method public hasDeleteMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage:Z

    return v0
.end method

.method public hasDeletePeopleByAccountType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType:Z

    return v0
.end method

.method public hasDeletePeopleFromPeopleGroup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup:Z

    return v0
.end method

.method public hasDeletePeopleGroup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup:Z

    return v0
.end method

.method public hasDeleteRecommendAppsOnPhone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone:Z

    return v0
.end method

.method public hasDeleteRecommendCommentLike()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike:Z

    return v0
.end method

.method public hasDeleteRecommendedWishlist()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist:Z

    return v0
.end method

.method public hasEndFullMerge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge:Z

    return v0
.end method

.method public hasGetAggregatePersonImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage:Z

    return v0
.end method

.method public hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike:Z

    return v0
.end method

.method public hasGetRecommendNewApplicationCommentsLikes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes:Z

    return v0
.end method

.method public hasLogRemoteError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError:Z

    return v0
.end method

.method public hasMessageQueueTestMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage:Z

    return v0
.end method

.method public hasProcessSyncItems()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems:Z

    return v0
.end method

.method public hasRequestForAdd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd:Z

    return v0
.end method

.method public hasRequestForUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate:Z

    return v0
.end method

.method public hasSearchRecommendCommentLike()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike:Z

    return v0
.end method

.method public hasSetAggregatePersonImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage:Z

    return v0
.end method

.method public hasSetFootprintImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage:Z

    return v0
.end method

.method public hasSetFootprintMemo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo:Z

    return v0
.end method

.method public hasSetMissedCallAsViewed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed:Z

    return v0
.end method

.method public hasSetMissedCallsAsViewed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed:Z

    return v0
.end method

.method public hasSetNewVoiceMailCount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount:Z

    return v0
.end method

.method public hasSetPersonImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType:Z

    return v0
.end method

.method public hasUpdateAggregatePerson()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson:Z

    return v0
.end method

.method public hasUpdateDeviceSetting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting:Z

    return v0
.end method

.method public hasUpdateFootprint()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint:Z

    return v0
.end method

.method public hasUpdateMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage:Z

    return v0
.end method

.method public hasUpdateMyProfile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile:Z

    return v0
.end method

.method public hasUpdatePeopleGroup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup:Z

    return v0
.end method

.method public hasUpdateRecommendAppCommentLastViewDate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate:Z

    return v0
.end method

.method public hasUpdateRecommendAppLastViewDate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate:Z

    return v0
.end method

.method public hasUpdateRecommendAppsOnPhone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone:Z

    return v0
.end method

.method public hasUpdateRecommendCommentLike()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike:Z

    return v0
.end method

.method public hasUpdateVirtualDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$143300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_10
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_12
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_13
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_15
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_16
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_17
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_18
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_19
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_20
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_21
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_22
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_23
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_24
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_25
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_26
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_27
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_28
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_29
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_30
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_31
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_32
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_33
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_34
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_35
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_36
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 1

    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x17

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x28

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x5a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x71

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x98

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xbe

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xf4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x113

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x134

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x147

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x156

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x172

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x181

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getCheckForMessages()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x186

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_10
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x202

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage()Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x218

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_12
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage()Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x222

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_13
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x232

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x29d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_15
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x2bf

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_16
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage()Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x2c4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_17
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x2e7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_18
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError()Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x305

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_19
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x30f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_1a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x34c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_1b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0x3d0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x3d9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_1d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x424

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_1e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0x427

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_1f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x45c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_20
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x469

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_21
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount()Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x475

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_22
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups()Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0x493

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_23
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage()Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0x4c9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_24
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0x4eb

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_25
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson()Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v0, 0x4fd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_26
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson()Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 v0, 0x523

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_27
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist()Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0x531

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_28
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage()Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0x564

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_29
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v0, 0x56e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_2a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x583

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_2b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v0, 0x5a5

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_2c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v0, 0x5d2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_2d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0x637

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_2e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x63d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_2f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint()Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0x646

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_30
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v0, 0x6c8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_31
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems()Z

    move-result v0

    if-eqz v0, :cond_32

    const/16 v0, 0x6d8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_32
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0x6e6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_33
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint()Z

    move-result v0

    if-eqz v0, :cond_34

    const/16 v0, 0x6f8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_34
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems()Z

    move-result v0

    if-eqz v0, :cond_35

    const/16 v0, 0x6f9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getProcessSyncItems()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_35
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed()Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0x703

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_36
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes()Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v0, 0x722

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_37
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge()Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v0, 0x754

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getEndFullMerge()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_38
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint()Z

    move-result v0

    if-eqz v0, :cond_39

    const/16 v0, 0x78a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_39
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/16 v0, 0x7b3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_3a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 v0, 0x7fd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearAllMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    :cond_3b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    return-void
.end method
