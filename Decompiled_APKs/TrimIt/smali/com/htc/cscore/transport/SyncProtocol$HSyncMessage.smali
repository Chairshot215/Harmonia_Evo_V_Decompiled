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

    .prologue
    .line 49696
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    .line 54015
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 54019
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->internalForceInit()V

    .line 54020
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49694
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage;-><init>()V

    .line 49897
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->type_:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49904
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    .line 49911
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    .line 49918
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    .line 49925
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    .line 49932
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    .line 49939
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    .line 49946
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    .line 49953
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    .line 49960
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    .line 49967
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    .line 49974
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    .line 49981
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    .line 49988
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    .line 49995
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    .line 50002
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    .line 50009
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    .line 50016
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    .line 50023
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    .line 50030
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    .line 50037
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    .line 50044
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    .line 50051
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    .line 50058
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    .line 50065
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    .line 50072
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    .line 50079
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    .line 50086
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    .line 50093
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    .line 50100
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    .line 50107
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    .line 50114
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    .line 50121
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    .line 50128
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    .line 50135
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    .line 50142
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    .line 50149
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    .line 50156
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    .line 50163
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    .line 50170
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    .line 50177
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    .line 50184
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    .line 50191
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    .line 50198
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    .line 50205
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    .line 50212
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    .line 50219
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    .line 50226
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    .line 50233
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    .line 50240
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    .line 50247
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    .line 50254
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    .line 50261
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    .line 50268
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    .line 50275
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    .line 50282
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    .line 50289
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    .line 50296
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    .line 50303
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    .line 50310
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    .line 50663
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->memoizedSerializedSize:I

    .line 49694
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49691
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;-><init>()V

    return-void
.end method

.method static synthetic access$143702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType:Z

    return p1
.end method

.method static synthetic access$143802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->type_:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    return-object p1
.end method

.method static synthetic access$143902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson:Z

    return p1
.end method

.method static synthetic access$144000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    return-object v0
.end method

.method static synthetic access$144002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    return-object p1
.end method

.method static synthetic access$144102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson:Z

    return p1
.end method

.method static synthetic access$144200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    return-object v0
.end method

.method static synthetic access$144202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    return-object p1
.end method

.method static synthetic access$144302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson:Z

    return p1
.end method

.method static synthetic access$144400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    return-object v0
.end method

.method static synthetic access$144402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    return-object p1
.end method

.method static synthetic access$144502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage:Z

    return p1
.end method

.method static synthetic access$144600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    return-object v0
.end method

.method static synthetic access$144602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    return-object p1
.end method

.method static synthetic access$144702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage:Z

    return p1
.end method

.method static synthetic access$144800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    return-object v0
.end method

.method static synthetic access$144802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    return-object p1
.end method

.method static synthetic access$144902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage:Z

    return p1
.end method

.method static synthetic access$145000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    return-object v0
.end method

.method static synthetic access$145002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    return-object p1
.end method

.method static synthetic access$145102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType:Z

    return p1
.end method

.method static synthetic access$145200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    return-object v0
.end method

.method static synthetic access$145202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    return-object p1
.end method

.method static synthetic access$145302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage:Z

    return p1
.end method

.method static synthetic access$145400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    return-object v0
.end method

.method static synthetic access$145402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    return-object p1
.end method

.method static synthetic access$145502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint:Z

    return p1
.end method

.method static synthetic access$145600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    return-object v0
.end method

.method static synthetic access$145602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;)Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    return-object p1
.end method

.method static synthetic access$145702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint:Z

    return p1
.end method

.method static synthetic access$145800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    return-object v0
.end method

.method static synthetic access$145802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;)Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    return-object p1
.end method

.method static synthetic access$145902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint:Z

    return p1
.end method

.method static synthetic access$146000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    return-object v0
.end method

.method static synthetic access$146002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;)Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    return-object p1
.end method

.method static synthetic access$146102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage:Z

    return p1
.end method

.method static synthetic access$146200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    return-object v0
.end method

.method static synthetic access$146202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    return-object p1
.end method

.method static synthetic access$146302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo:Z

    return p1
.end method

.method static synthetic access$146400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    return-object v0
.end method

.method static synthetic access$146402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    return-object p1
.end method

.method static synthetic access$146502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage:Z

    return p1
.end method

.method static synthetic access$146600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    return-object v0
.end method

.method static synthetic access$146602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    return-object p1
.end method

.method static synthetic access$146702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage:Z

    return p1
.end method

.method static synthetic access$146800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    return-object v0
.end method

.method static synthetic access$146802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    return-object p1
.end method

.method static synthetic access$146902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage:Z

    return p1
.end method

.method static synthetic access$147000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    return-object v0
.end method

.method static synthetic access$147002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    return-object p1
.end method

.method static synthetic access$147102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile:Z

    return p1
.end method

.method static synthetic access$147200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    return-object v0
.end method

.method static synthetic access$147202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    return-object p1
.end method

.method static synthetic access$147302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile:Z

    return p1
.end method

.method static synthetic access$147400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    return-object v0
.end method

.method static synthetic access$147402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    return-object p1
.end method

.method static synthetic access$147502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup:Z

    return p1
.end method

.method static synthetic access$147600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    return-object v0
.end method

.method static synthetic access$147602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    return-object p1
.end method

.method static synthetic access$147702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups:Z

    return p1
.end method

.method static synthetic access$147800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    return-object v0
.end method

.method static synthetic access$147802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    return-object p1
.end method

.method static synthetic access$147902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup:Z

    return p1
.end method

.method static synthetic access$148000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    return-object v0
.end method

.method static synthetic access$148002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    return-object p1
.end method

.method static synthetic access$148102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup:Z

    return p1
.end method

.method static synthetic access$148200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    return-object v0
.end method

.method static synthetic access$148202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    return-object p1
.end method

.method static synthetic access$148302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup:Z

    return p1
.end method

.method static synthetic access$148400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    return-object v0
.end method

.method static synthetic access$148402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    return-object p1
.end method

.method static synthetic access$148502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup:Z

    return p1
.end method

.method static synthetic access$148600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    return-object v0
.end method

.method static synthetic access$148602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    return-object p1
.end method

.method static synthetic access$148702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike:Z

    return p1
.end method

.method static synthetic access$148800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    return-object v0
.end method

.method static synthetic access$148802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    return-object p1
.end method

.method static synthetic access$148902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist:Z

    return p1
.end method

.method static synthetic access$149000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    return-object v0
.end method

.method static synthetic access$149002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    return-object p1
.end method

.method static synthetic access$149102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist:Z

    return p1
.end method

.method static synthetic access$149200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    return-object v0
.end method

.method static synthetic access$149202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    return-object p1
.end method

.method static synthetic access$149302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone:Z

    return p1
.end method

.method static synthetic access$149400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    return-object v0
.end method

.method static synthetic access$149402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    return-object p1
.end method

.method static synthetic access$149502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone:Z

    return p1
.end method

.method static synthetic access$149600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    return-object v0
.end method

.method static synthetic access$149602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    return-object p1
.end method

.method static synthetic access$149702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike:Z

    return p1
.end method

.method static synthetic access$149800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    return-object v0
.end method

.method static synthetic access$149802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    return-object p1
.end method

.method static synthetic access$149902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone:Z

    return p1
.end method

.method static synthetic access$150000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    return-object v0
.end method

.method static synthetic access$150002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    return-object p1
.end method

.method static synthetic access$150102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate:Z

    return p1
.end method

.method static synthetic access$150200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    return-object v0
.end method

.method static synthetic access$150202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    return-object p1
.end method

.method static synthetic access$150302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate:Z

    return p1
.end method

.method static synthetic access$150400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    return-object v0
.end method

.method static synthetic access$150402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    return-object p1
.end method

.method static synthetic access$150502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike:Z

    return p1
.end method

.method static synthetic access$150600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    return-object v0
.end method

.method static synthetic access$150602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    return-object p1
.end method

.method static synthetic access$150702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike:Z

    return p1
.end method

.method static synthetic access$150800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object v0
.end method

.method static synthetic access$150802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object p1
.end method

.method static synthetic access$150902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes:Z

    return p1
.end method

.method static synthetic access$151000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    return-object v0
.end method

.method static synthetic access$151002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;)Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    return-object p1
.end method

.method static synthetic access$151102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike:Z

    return p1
.end method

.method static synthetic access$151200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    return-object v0
.end method

.method static synthetic access$151202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    return-object p1
.end method

.method static synthetic access$151302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound:Z

    return p1
.end method

.method static synthetic access$151400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    return-object v0
.end method

.method static synthetic access$151402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSound;)Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    return-object p1
.end method

.method static synthetic access$151502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError:Z

    return p1
.end method

.method static synthetic access$151600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    return-object v0
.end method

.method static synthetic access$151602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    return-object p1
.end method

.method static synthetic access$151702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice:Z

    return p1
.end method

.method static synthetic access$151800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    return-object v0
.end method

.method static synthetic access$151802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    return-object p1
.end method

.method static synthetic access$151902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems:Z

    return p1
.end method

.method static synthetic access$152000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    return-object v0
.end method

.method static synthetic access$152002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    return-object p1
.end method

.method static synthetic access$152102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems:Z

    return p1
.end method

.method static synthetic access$152200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    return-object v0
.end method

.method static synthetic access$152202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;)Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    return-object p1
.end method

.method static synthetic access$152302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge:Z

    return p1
.end method

.method static synthetic access$152400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    return-object v0
.end method

.method static synthetic access$152402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    return-object p1
.end method

.method static synthetic access$152502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd:Z

    return p1
.end method

.method static synthetic access$152600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    return-object v0
.end method

.method static synthetic access$152602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    return-object p1
.end method

.method static synthetic access$152702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate:Z

    return p1
.end method

.method static synthetic access$152800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    return-object v0
.end method

.method static synthetic access$152802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    return-object p1
.end method

.method static synthetic access$152902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge:Z

    return p1
.end method

.method static synthetic access$153000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    return-object v0
.end method

.method static synthetic access$153002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    return-object p1
.end method

.method static synthetic access$153102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages:Z

    return p1
.end method

.method static synthetic access$153200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    return-object v0
.end method

.method static synthetic access$153202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;)Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    return-object p1
.end method

.method static synthetic access$153302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount:Z

    return p1
.end method

.method static synthetic access$153400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    return-object v0
.end method

.method static synthetic access$153402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    return-object p1
.end method

.method static synthetic access$153502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall:Z

    return p1
.end method

.method static synthetic access$153600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    return-object v0
.end method

.method static synthetic access$153602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    return-object p1
.end method

.method static synthetic access$153702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber:Z

    return p1
.end method

.method static synthetic access$153800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    return-object v0
.end method

.method static synthetic access$153802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    return-object p1
.end method

.method static synthetic access$153902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls:Z

    return p1
.end method

.method static synthetic access$154000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    return-object v0
.end method

.method static synthetic access$154002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    return-object p1
.end method

.method static synthetic access$154102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls:Z

    return p1
.end method

.method static synthetic access$154200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    return-object v0
.end method

.method static synthetic access$154202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;)Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    return-object p1
.end method

.method static synthetic access$154302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed:Z

    return p1
.end method

.method static synthetic access$154400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    return-object v0
.end method

.method static synthetic access$154402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    return-object p1
.end method

.method static synthetic access$154502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed:Z

    return p1
.end method

.method static synthetic access$154600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    return-object v0
.end method

.method static synthetic access$154602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    return-object p1
.end method

.method static synthetic access$154702(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting:Z

    return p1
.end method

.method static synthetic access$154800(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    return-object v0
.end method

.method static synthetic access$154802(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    return-object p1
.end method

.method static synthetic access$154902(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting:Z

    return p1
.end method

.method static synthetic access$155000(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    return-object v0
.end method

.method static synthetic access$155002(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    return-object p1
.end method

.method static synthetic access$155102(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting:Z

    return p1
.end method

.method static synthetic access$155200(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    return-object v0
.end method

.method static synthetic access$155202(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    return-object p1
.end method

.method static synthetic access$155302(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper:Z

    return p1
.end method

.method static synthetic access$155400(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    return-object v0
.end method

.method static synthetic access$155402(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;)Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    return-object p1
.end method

.method static synthetic access$155502(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-boolean p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage:Z

    return p1
.end method

.method static synthetic access$155600(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    return-object v0
.end method

.method static synthetic access$155602(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49691
    iput-object p1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1

    .prologue
    .line 49698
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 49707
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$143200()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 1

    .prologue
    .line 50972
    #calls: Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->access$143500()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 50975
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50950
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
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50956
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
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 50917
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
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 50923
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
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50962
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
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50968
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
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50939
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
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50945
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
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 50928
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
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 50934
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

    .prologue
    .line 49906
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    return-object v0
.end method

.method public getAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;
    .locals 1

    .prologue
    .line 50284
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    return-object v0
.end method

.method public getAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;
    .locals 1

    .prologue
    .line 49962
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addFootprint_:Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    return-object v0
.end method

.method public getAddMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;
    .locals 1

    .prologue
    .line 49997
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMessage_:Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    return-object v0
.end method

.method public getAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1

    .prologue
    .line 50242
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMissedCall_:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    return-object v0
.end method

.method public getAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;
    .locals 1

    .prologue
    .line 50018
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    return-object v0
.end method

.method public getAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;
    .locals 1

    .prologue
    .line 50032
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    return-object v0
.end method

.method public getAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1

    .prologue
    .line 50039
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleGroups_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    return-object v0
.end method

.method public getAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;
    .locals 1

    .prologue
    .line 50053
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addPeopleToPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    return-object v0
.end method

.method public getAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 50095
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    return-object v0
.end method

.method public getAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1

    .prologue
    .line 50074
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    return-object v0
.end method

.method public getAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1

    .prologue
    .line 50081
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addRecommendWishlist_:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    return-object v0
.end method

.method public getAddSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound;
    .locals 1

    .prologue
    .line 50165
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSound_:Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    return-object v0
.end method

.method public getAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;
    .locals 1

    .prologue
    .line 50186
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    return-object v0
.end method

.method public getAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;
    .locals 1

    .prologue
    .line 50305
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->addWallpaper_:Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    return-object v0
.end method

.method public getBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;
    .locals 1

    .prologue
    .line 50200
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->beginFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    return-object v0
.end method

.method public getCheckForMessages()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;
    .locals 1

    .prologue
    .line 50228
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->checkForMessages_:Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    return-object v0
.end method

.method public getClearAllMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;
    .locals 1

    .prologue
    .line 50263
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearAllMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    return-object v0
.end method

.method public getClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;
    .locals 1

    .prologue
    .line 50256
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCalls_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    return-object v0
.end method

.method public getClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;
    .locals 1

    .prologue
    .line 50249
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->clearMissedCallsByPhoneNumber_:Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
    .locals 1

    .prologue
    .line 49702
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->defaultInstance:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 49691
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 49691
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;
    .locals 1

    .prologue
    .line 49920
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    return-object v0
.end method

.method public getDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;
    .locals 1

    .prologue
    .line 49941
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    return-object v0
.end method

.method public getDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;
    .locals 1

    .prologue
    .line 50298
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    return-object v0
.end method

.method public getDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;
    .locals 1

    .prologue
    .line 49976
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteFootprint_:Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    return-object v0
.end method

.method public getDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;
    .locals 1

    .prologue
    .line 50011
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteMessage_:Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    return-object v0
.end method

.method public getDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1

    .prologue
    .line 49948
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleByAccountType_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    return-object v0
.end method

.method public getDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1

    .prologue
    .line 50060
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleFromPeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    return-object v0
.end method

.method public getDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;
    .locals 1

    .prologue
    .line 50067
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deletePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    return-object v0
.end method

.method public getDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 50102
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    return-object v0
.end method

.method public getDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1

    .prologue
    .line 50137
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    return-object v0
.end method

.method public getDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1

    .prologue
    .line 50088
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->deleteRecommendedWishlist_:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    return-object v0
.end method

.method public getEndFullMerge()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1

    .prologue
    .line 50221
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->endFullMerge_:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    return-object v0
.end method

.method public getGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;
    .locals 1

    .prologue
    .line 49927
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    return-object v0
.end method

.method public getGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1

    .prologue
    .line 50158
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMyAppsAndFriendsAppsRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    return-object v0
.end method

.method public getGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;
    .locals 1

    .prologue
    .line 50151
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRecommendNewApplicationCommentsLikes_:Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    return-object v0
.end method

.method public getLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1

    .prologue
    .line 50172
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->logRemoteError_:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    return-object v0
.end method

.method public getMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1

    .prologue
    .line 50312
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->messageQueueTestMessage_:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    return-object v0
.end method

.method public getProcessSyncItems()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;
    .locals 1

    .prologue
    .line 50193
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->processSyncItems_:Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    return-object v0
.end method

.method public getRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    .locals 1

    .prologue
    .line 50207
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForAdd_:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    return-object v0
.end method

.method public getRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1

    .prologue
    .line 50214
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->requestForUpdate_:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    return-object v0
.end method

.method public getSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1

    .prologue
    .line 50144
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->searchRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 50665
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->memoizedSerializedSize:I

    .line 50666
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 50911
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 50668
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 50669
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50670
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 50673
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50674
    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50677
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50678
    const/16 v2, 0x1d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50681
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 50682
    const/16 v2, 0x28

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50685
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 50686
    const/16 v2, 0x5a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50689
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 50690
    const/16 v2, 0x71

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50693
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 50694
    const/16 v2, 0x98

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50697
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 50698
    const/16 v2, 0xa1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50701
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 50702
    const/16 v2, 0xbe

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50705
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 50706
    const/16 v2, 0xf4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50709
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 50710
    const/16 v2, 0x113

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50713
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 50714
    const/16 v2, 0x134

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50717
    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 50718
    const/16 v2, 0x147

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50721
    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 50722
    const/16 v2, 0x156

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50725
    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 50726
    const/16 v2, 0x172

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50729
    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 50730
    const/16 v2, 0x181

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getCheckForMessages()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50733
    :cond_10
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 50734
    const/16 v2, 0x186

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50737
    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 50738
    const/16 v2, 0x202

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50741
    :cond_12
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 50742
    const/16 v2, 0x218

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50745
    :cond_13
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 50746
    const/16 v2, 0x222

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50749
    :cond_14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 50750
    const/16 v2, 0x232

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50753
    :cond_15
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 50754
    const/16 v2, 0x29d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50757
    :cond_16
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 50758
    const/16 v2, 0x2bf

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50761
    :cond_17
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 50762
    const/16 v2, 0x2c4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50765
    :cond_18
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 50766
    const/16 v2, 0x2e7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50769
    :cond_19
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 50770
    const/16 v2, 0x305

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50773
    :cond_1a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 50774
    const/16 v2, 0x30f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50777
    :cond_1b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 50778
    const/16 v2, 0x34c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50781
    :cond_1c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 50782
    const/16 v2, 0x3d0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50785
    :cond_1d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 50786
    const/16 v2, 0x3d9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50789
    :cond_1e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 50790
    const/16 v2, 0x424

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50793
    :cond_1f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 50794
    const/16 v2, 0x427

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50797
    :cond_20
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 50798
    const/16 v2, 0x45c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50801
    :cond_21
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 50802
    const/16 v2, 0x469

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50805
    :cond_22
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 50806
    const/16 v2, 0x475

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50809
    :cond_23
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 50810
    const/16 v2, 0x493

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50813
    :cond_24
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 50814
    const/16 v2, 0x4c9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50817
    :cond_25
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 50818
    const/16 v2, 0x4eb

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50821
    :cond_26
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 50822
    const/16 v2, 0x4fd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50825
    :cond_27
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 50826
    const/16 v2, 0x523

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50829
    :cond_28
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 50830
    const/16 v2, 0x531

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50833
    :cond_29
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 50834
    const/16 v2, 0x564

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50837
    :cond_2a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 50838
    const/16 v2, 0x56e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50841
    :cond_2b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 50842
    const/16 v2, 0x583

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50845
    :cond_2c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 50846
    const/16 v2, 0x5a5

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50849
    :cond_2d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 50850
    const/16 v2, 0x5d2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50853
    :cond_2e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 50854
    const/16 v2, 0x637

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50857
    :cond_2f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 50858
    const/16 v2, 0x63d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50861
    :cond_30
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 50862
    const/16 v2, 0x646

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50865
    :cond_31
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 50866
    const/16 v2, 0x6c8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50869
    :cond_32
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 50870
    const/16 v2, 0x6d8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50873
    :cond_33
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 50874
    const/16 v2, 0x6e6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50877
    :cond_34
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 50878
    const/16 v2, 0x6f8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50881
    :cond_35
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 50882
    const/16 v2, 0x6f9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getProcessSyncItems()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50885
    :cond_36
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 50886
    const/16 v2, 0x703

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50889
    :cond_37
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 50890
    const/16 v2, 0x722

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50893
    :cond_38
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 50894
    const/16 v2, 0x754

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getEndFullMerge()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50897
    :cond_39
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 50898
    const/16 v2, 0x78a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50901
    :cond_3a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 50902
    const/16 v2, 0x7b3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50905
    :cond_3b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 50906
    const/16 v2, 0x7fd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearAllMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50909
    :cond_3c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 50910
    iput v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->memoizedSerializedSize:I

    move v1, v0

    .line 50911
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;
    .locals 1

    .prologue
    .line 49934
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setAggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    return-object v0
.end method

.method public getSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;
    .locals 1

    .prologue
    .line 49983
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintImage_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    return-object v0
.end method

.method public getSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;
    .locals 1

    .prologue
    .line 49990
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setFootprintMemo_:Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    return-object v0
.end method

.method public getSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;
    .locals 1

    .prologue
    .line 50270
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    return-object v0
.end method

.method public getSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 1

    .prologue
    .line 50277
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setMissedCallsAsViewed_:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    return-object v0
.end method

.method public getSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    .locals 1

    .prologue
    .line 50235
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setNewVoiceMailCount_:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    return-object v0
.end method

.method public getSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;
    .locals 1

    .prologue
    .line 49955
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->setPersonImage_:Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    return-object v0
.end method

.method public getType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    .locals 1

    .prologue
    .line 49899
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->type_:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    return-object v0
.end method

.method public getUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;
    .locals 1

    .prologue
    .line 49913
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateAggregatePerson_:Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    return-object v0
.end method

.method public getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1

    .prologue
    .line 50291
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateDeviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    return-object v0
.end method

.method public getUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;
    .locals 1

    .prologue
    .line 49969
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateFootprint_:Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    return-object v0
.end method

.method public getUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1

    .prologue
    .line 50004
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMessage_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    return-object v0
.end method

.method public getUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;
    .locals 1

    .prologue
    .line 50025
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateMyProfile_:Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    return-object v0
.end method

.method public getUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;
    .locals 1

    .prologue
    .line 50046
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updatePeopleGroup_:Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    return-object v0
.end method

.method public getUpdateRecommendAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;
    .locals 1

    .prologue
    .line 50130
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppCommentLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    return-object v0
.end method

.method public getUpdateRecommendAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;
    .locals 1

    .prologue
    .line 50123
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppLastViewDate_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    return-object v0
.end method

.method public getUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 50116
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    return-object v0
.end method

.method public getUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;
    .locals 1

    .prologue
    .line 50109
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateRecommendCommentLike_:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    return-object v0
.end method

.method public getUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1

    .prologue
    .line 50179
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->updateVirtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    return-object v0
.end method

.method public hasAddAggregatePerson()Z
    .locals 1

    .prologue
    .line 49905
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson:Z

    return v0
.end method

.method public hasAddDeviceSetting()Z
    .locals 1

    .prologue
    .line 50283
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting:Z

    return v0
.end method

.method public hasAddFootprint()Z
    .locals 1

    .prologue
    .line 49961
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint:Z

    return v0
.end method

.method public hasAddMessage()Z
    .locals 1

    .prologue
    .line 49996
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage:Z

    return v0
.end method

.method public hasAddMissedCall()Z
    .locals 1

    .prologue
    .line 50241
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall:Z

    return v0
.end method

.method public hasAddMyProfile()Z
    .locals 1

    .prologue
    .line 50017
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile:Z

    return v0
.end method

.method public hasAddPeopleGroup()Z
    .locals 1

    .prologue
    .line 50031
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup:Z

    return v0
.end method

.method public hasAddPeopleGroups()Z
    .locals 1

    .prologue
    .line 50038
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups:Z

    return v0
.end method

.method public hasAddPeopleToPeopleGroup()Z
    .locals 1

    .prologue
    .line 50052
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup:Z

    return v0
.end method

.method public hasAddRecommendAppsOnPhone()Z
    .locals 1

    .prologue
    .line 50094
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone:Z

    return v0
.end method

.method public hasAddRecommendCommentLike()Z
    .locals 1

    .prologue
    .line 50073
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike:Z

    return v0
.end method

.method public hasAddRecommendWishlist()Z
    .locals 1

    .prologue
    .line 50080
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist:Z

    return v0
.end method

.method public hasAddSound()Z
    .locals 1

    .prologue
    .line 50164
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound:Z

    return v0
.end method

.method public hasAddSyncItems()Z
    .locals 1

    .prologue
    .line 50185
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems:Z

    return v0
.end method

.method public hasAddWallpaper()Z
    .locals 1

    .prologue
    .line 50304
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper:Z

    return v0
.end method

.method public hasBeginFullMerge()Z
    .locals 1

    .prologue
    .line 50199
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge:Z

    return v0
.end method

.method public hasCheckForMessages()Z
    .locals 1

    .prologue
    .line 50227
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages:Z

    return v0
.end method

.method public hasClearAllMissedCalls()Z
    .locals 1

    .prologue
    .line 50262
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls:Z

    return v0
.end method

.method public hasClearMissedCalls()Z
    .locals 1

    .prologue
    .line 50255
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls:Z

    return v0
.end method

.method public hasClearMissedCallsByPhoneNumber()Z
    .locals 1

    .prologue
    .line 50248
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber:Z

    return v0
.end method

.method public hasDeleteAggregatePerson()Z
    .locals 1

    .prologue
    .line 49919
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson:Z

    return v0
.end method

.method public hasDeleteAggregatePersonImage()Z
    .locals 1

    .prologue
    .line 49940
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage:Z

    return v0
.end method

.method public hasDeleteDeviceSetting()Z
    .locals 1

    .prologue
    .line 50297
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting:Z

    return v0
.end method

.method public hasDeleteFootprint()Z
    .locals 1

    .prologue
    .line 49975
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint:Z

    return v0
.end method

.method public hasDeleteMessage()Z
    .locals 1

    .prologue
    .line 50010
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage:Z

    return v0
.end method

.method public hasDeletePeopleByAccountType()Z
    .locals 1

    .prologue
    .line 49947
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType:Z

    return v0
.end method

.method public hasDeletePeopleFromPeopleGroup()Z
    .locals 1

    .prologue
    .line 50059
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup:Z

    return v0
.end method

.method public hasDeletePeopleGroup()Z
    .locals 1

    .prologue
    .line 50066
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup:Z

    return v0
.end method

.method public hasDeleteRecommendAppsOnPhone()Z
    .locals 1

    .prologue
    .line 50101
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone:Z

    return v0
.end method

.method public hasDeleteRecommendCommentLike()Z
    .locals 1

    .prologue
    .line 50136
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike:Z

    return v0
.end method

.method public hasDeleteRecommendedWishlist()Z
    .locals 1

    .prologue
    .line 50087
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist:Z

    return v0
.end method

.method public hasEndFullMerge()Z
    .locals 1

    .prologue
    .line 50220
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge:Z

    return v0
.end method

.method public hasGetAggregatePersonImage()Z
    .locals 1

    .prologue
    .line 49926
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage:Z

    return v0
.end method

.method public hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z
    .locals 1

    .prologue
    .line 50157
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike:Z

    return v0
.end method

.method public hasGetRecommendNewApplicationCommentsLikes()Z
    .locals 1

    .prologue
    .line 50150
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes:Z

    return v0
.end method

.method public hasLogRemoteError()Z
    .locals 1

    .prologue
    .line 50171
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError:Z

    return v0
.end method

.method public hasMessageQueueTestMessage()Z
    .locals 1

    .prologue
    .line 50311
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage:Z

    return v0
.end method

.method public hasProcessSyncItems()Z
    .locals 1

    .prologue
    .line 50192
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems:Z

    return v0
.end method

.method public hasRequestForAdd()Z
    .locals 1

    .prologue
    .line 50206
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd:Z

    return v0
.end method

.method public hasRequestForUpdate()Z
    .locals 1

    .prologue
    .line 50213
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate:Z

    return v0
.end method

.method public hasSearchRecommendCommentLike()Z
    .locals 1

    .prologue
    .line 50143
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike:Z

    return v0
.end method

.method public hasSetAggregatePersonImage()Z
    .locals 1

    .prologue
    .line 49933
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage:Z

    return v0
.end method

.method public hasSetFootprintImage()Z
    .locals 1

    .prologue
    .line 49982
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage:Z

    return v0
.end method

.method public hasSetFootprintMemo()Z
    .locals 1

    .prologue
    .line 49989
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo:Z

    return v0
.end method

.method public hasSetMissedCallAsViewed()Z
    .locals 1

    .prologue
    .line 50269
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed:Z

    return v0
.end method

.method public hasSetMissedCallsAsViewed()Z
    .locals 1

    .prologue
    .line 50276
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed:Z

    return v0
.end method

.method public hasSetNewVoiceMailCount()Z
    .locals 1

    .prologue
    .line 50234
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount:Z

    return v0
.end method

.method public hasSetPersonImage()Z
    .locals 1

    .prologue
    .line 49954
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 49898
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType:Z

    return v0
.end method

.method public hasUpdateAggregatePerson()Z
    .locals 1

    .prologue
    .line 49912
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson:Z

    return v0
.end method

.method public hasUpdateDeviceSetting()Z
    .locals 1

    .prologue
    .line 50290
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting:Z

    return v0
.end method

.method public hasUpdateFootprint()Z
    .locals 1

    .prologue
    .line 49968
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint:Z

    return v0
.end method

.method public hasUpdateMessage()Z
    .locals 1

    .prologue
    .line 50003
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage:Z

    return v0
.end method

.method public hasUpdateMyProfile()Z
    .locals 1

    .prologue
    .line 50024
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile:Z

    return v0
.end method

.method public hasUpdatePeopleGroup()Z
    .locals 1

    .prologue
    .line 50045
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup:Z

    return v0
.end method

.method public hasUpdateRecommendAppCommentLastViewDate()Z
    .locals 1

    .prologue
    .line 50129
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate:Z

    return v0
.end method

.method public hasUpdateRecommendAppLastViewDate()Z
    .locals 1

    .prologue
    .line 50122
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate:Z

    return v0
.end method

.method public hasUpdateRecommendAppsOnPhone()Z
    .locals 1

    .prologue
    .line 50115
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone:Z

    return v0
.end method

.method public hasUpdateRecommendCommentLike()Z
    .locals 1

    .prologue
    .line 50108
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike:Z

    return v0
.end method

.method public hasUpdateVirtualDevice()Z
    .locals 1

    .prologue
    .line 50178
    iget-boolean v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 49712
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->access$143300()Lcom/htc/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 50315
    iget-boolean v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType:Z

    if-nez v1, :cond_1

    .line 50475
    :cond_0
    :goto_0
    return v0

    .line 50316
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50317
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50319
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50320
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50322
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 50323
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50325
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 50326
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50328
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 50329
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50331
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 50332
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50334
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 50335
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50337
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 50338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50340
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 50341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50343
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 50344
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50346
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 50347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50349
    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 50350
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50352
    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 50353
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50355
    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 50356
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50358
    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 50359
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50361
    :cond_10
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 50362
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50364
    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 50365
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50367
    :cond_12
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 50368
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50370
    :cond_13
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 50371
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50373
    :cond_14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 50374
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50376
    :cond_15
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 50377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50379
    :cond_16
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 50380
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50382
    :cond_17
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 50383
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50385
    :cond_18
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 50386
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50388
    :cond_19
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 50389
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50391
    :cond_1a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 50392
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50394
    :cond_1b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 50395
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50397
    :cond_1c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 50398
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50400
    :cond_1d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 50401
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50403
    :cond_1e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 50404
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50406
    :cond_1f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 50407
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50409
    :cond_20
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 50410
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50412
    :cond_21
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 50413
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50415
    :cond_22
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 50416
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50418
    :cond_23
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 50419
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50421
    :cond_24
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 50422
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSound;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50424
    :cond_25
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 50425
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50427
    :cond_26
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 50428
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50430
    :cond_27
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 50431
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50433
    :cond_28
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 50434
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50436
    :cond_29
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 50437
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50439
    :cond_2a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 50440
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50442
    :cond_2b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 50443
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50445
    :cond_2c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 50446
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50448
    :cond_2d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 50449
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50451
    :cond_2e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 50452
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50454
    :cond_2f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 50455
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50457
    :cond_30
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 50458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50460
    :cond_31
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 50461
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50463
    :cond_32
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 50464
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50466
    :cond_33
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 50467
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50469
    :cond_34
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 50470
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50472
    :cond_35
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 50473
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50475
    :cond_36
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 1

    .prologue
    .line 50973
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 49691
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 49691
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilderForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;
    .locals 1

    .prologue
    .line 50977
    invoke-static {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 49691
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 49691
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->toBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50481
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getType()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 50483
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForAdd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50484
    const/16 v0, 0x17

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForAdd()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50486
    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMissedCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50487
    const/16 v0, 0x1d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50489
    :cond_2
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50490
    const/16 v0, 0x28

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendCommentLike;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50492
    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleByAccountType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50493
    const/16 v0, 0x5a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleByAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50495
    :cond_4
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 50496
    const/16 v0, 0x71

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$DeleteDeviceSetting;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50498
    :cond_5
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleToPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50499
    const/16 v0, 0x98

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleToPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleToPeopleGroup;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50501
    :cond_6
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddAggregatePerson()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 50502
    const/16 v0, 0xa1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$AddAggregatePerson;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50504
    :cond_7
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleFromPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 50505
    const/16 v0, 0xbe

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleFromPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50507
    :cond_8
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddWallpaper()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 50508
    const/16 v0, 0xf4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddWallpaper()Lcom/htc/cscore/transport/SyncProtocol$AddWallpaper;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50510
    :cond_9
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMyProfile()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 50511
    const/16 v0, 0x113

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMyProfile()Lcom/htc/cscore/transport/SyncProtocol$UpdateMyProfile;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50513
    :cond_a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 50514
    const/16 v0, 0x134

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$AddDeviceSetting;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50516
    :cond_b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeletePeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 50517
    const/16 v0, 0x147

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeletePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleGroup;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50519
    :cond_c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 50520
    const/16 v0, 0x156

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50522
    :cond_d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdatePeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 50523
    const/16 v0, 0x172

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdatePeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$UpdatePeopleGroup;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50525
    :cond_e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasCheckForMessages()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 50526
    const/16 v0, 0x181

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getCheckForMessages()Lcom/htc/cscore/transport/SyncProtocol$CheckForMessages;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50528
    :cond_f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 50529
    const/16 v0, 0x186

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50531
    :cond_10
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateVirtualDevice()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 50532
    const/16 v0, 0x202

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50534
    :cond_11
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteMessage()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 50535
    const/16 v0, 0x218

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteMessage()Lcom/htc/cscore/transport/SyncProtocol$DeleteMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50537
    :cond_12
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMessage()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 50538
    const/16 v0, 0x222

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMessage()Lcom/htc/cscore/transport/SyncProtocol$AddMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50540
    :cond_13
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSound()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 50541
    const/16 v0, 0x232

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSound()Lcom/htc/cscore/transport/SyncProtocol$AddSound;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50543
    :cond_14
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 50544
    const/16 v0, 0x29d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetAggregatePersonImage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50546
    :cond_15
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintMemo()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 50547
    const/16 v0, 0x2bf

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintMemo()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintMemo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50549
    :cond_16
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetFootprintImage()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 50550
    const/16 v0, 0x2c4

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetFootprintImage()Lcom/htc/cscore/transport/SyncProtocol$SetFootprintImage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50552
    :cond_17
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCalls()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 50553
    const/16 v0, 0x2e7

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCalls;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50555
    :cond_18
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasLogRemoteError()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 50556
    const/16 v0, 0x305

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getLogRemoteError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50558
    :cond_19
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppCommentLastViewDate()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 50559
    const/16 v0, 0x30f

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppCommentLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppCommentLastViewDate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50561
    :cond_1a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallAsViewed()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 50562
    const/16 v0, 0x34c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallAsViewed;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50564
    :cond_1b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetPersonImage()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 50565
    const/16 v0, 0x3d0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetPersonImage()Lcom/htc/cscore/transport/SyncProtocol$SetPersonImage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50567
    :cond_1c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetMyAppsAndFriendsAppsRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 50568
    const/16 v0, 0x3d9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetMyAppsAndFriendsAppsRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50570
    :cond_1d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 50571
    const/16 v0, 0x424

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50573
    :cond_1e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 50574
    const/16 v0, 0x427

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePersonImage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50576
    :cond_1f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 50577
    const/16 v0, 0x45c

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50579
    :cond_20
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSearchRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 50580
    const/16 v0, 0x469

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSearchRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50582
    :cond_21
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetNewVoiceMailCount()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 50583
    const/16 v0, 0x475

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetNewVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50585
    :cond_22
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroups()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 50586
    const/16 v0, 0x493

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50588
    :cond_23
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasMessageQueueTestMessage()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 50589
    const/16 v0, 0x4c9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getMessageQueueTestMessage()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50591
    :cond_24
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 50592
    const/16 v0, 0x4eb

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50594
    :cond_25
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteAggregatePerson()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 50595
    const/16 v0, 0x4fd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$DeleteAggregatePerson;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50597
    :cond_26
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateAggregatePerson()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 50598
    const/16 v0, 0x523

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateAggregatePerson()Lcom/htc/cscore/transport/SyncProtocol$UpdateAggregatePerson;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50600
    :cond_27
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendedWishlist()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 50601
    const/16 v0, 0x531

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendedWishlist()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50603
    :cond_28
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateMessage()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 50604
    const/16 v0, 0x564

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50606
    :cond_29
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddRecommendWishlist()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 50607
    const/16 v0, 0x56e

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddRecommendWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50609
    :cond_2a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasBeginFullMerge()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 50610
    const/16 v0, 0x583

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getBeginFullMerge()Lcom/htc/cscore/transport/SyncProtocol$BeginFullMerge;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50612
    :cond_2b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddPeopleGroup()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 50613
    const/16 v0, 0x5a5

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddPeopleGroup()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroup;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50615
    :cond_2c
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteRecommendCommentLike()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 50616
    const/16 v0, 0x5d2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteRecommendCommentLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50618
    :cond_2d
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateRecommendAppLastViewDate()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 50619
    const/16 v0, 0x637

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateRecommendAppLastViewDate()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppLastViewDate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50621
    :cond_2e
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasRequestForUpdate()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 50622
    const/16 v0, 0x63d

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getRequestForUpdate()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50624
    :cond_2f
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasDeleteFootprint()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 50625
    const/16 v0, 0x646

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDeleteFootprint()Lcom/htc/cscore/transport/SyncProtocol$DeleteFootprint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50627
    :cond_30
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 50628
    const/16 v0, 0x6c8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$GetAggregatePersonImage;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50630
    :cond_31
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddSyncItems()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 50631
    const/16 v0, 0x6d8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddSyncItems()Lcom/htc/cscore/transport/SyncProtocol$AddSyncItems;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50633
    :cond_32
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearMissedCallsByPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 50634
    const/16 v0, 0x6e6

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearMissedCallsByPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$ClearMissedCallsByPhoneNumber;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50636
    :cond_33
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddFootprint()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 50637
    const/16 v0, 0x6f8

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddFootprint()Lcom/htc/cscore/transport/SyncProtocol$AddFootprint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50639
    :cond_34
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasProcessSyncItems()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 50640
    const/16 v0, 0x6f9

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getProcessSyncItems()Lcom/htc/cscore/transport/SyncProtocol$ProcessSyncItems;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50642
    :cond_35
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasSetMissedCallsAsViewed()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 50643
    const/16 v0, 0x703

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getSetMissedCallsAsViewed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50645
    :cond_36
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasGetRecommendNewApplicationCommentsLikes()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 50646
    const/16 v0, 0x722

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getGetRecommendNewApplicationCommentsLikes()Lcom/htc/cscore/transport/SyncProtocol$GetRecommendNewApplicationCommentsLikes;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50648
    :cond_37
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasEndFullMerge()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 50649
    const/16 v0, 0x754

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getEndFullMerge()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50651
    :cond_38
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasUpdateFootprint()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 50652
    const/16 v0, 0x78a

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUpdateFootprint()Lcom/htc/cscore/transport/SyncProtocol$UpdateFootprint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50654
    :cond_39
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasAddMyProfile()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 50655
    const/16 v0, 0x7b3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getAddMyProfile()Lcom/htc/cscore/transport/SyncProtocol$AddMyProfile;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50657
    :cond_3a
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->hasClearAllMissedCalls()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 50658
    const/16 v0, 0x7fd

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getClearAllMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$ClearAllMissedCalls;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeMessage(ILcom/htc/protobuf/MessageLite;)V

    .line 50660
    :cond_3b
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 50661
    return-void
.end method
