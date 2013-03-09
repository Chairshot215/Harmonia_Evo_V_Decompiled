.class public final enum Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
.super Ljava/lang/Enum;
.source "SyncProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;",
        ">;",
        "Lcom/htc/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum AddAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum AddDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum AddFootprint:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum AddMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum AddMissedCall:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum AddMyProfile:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum AddPeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum AddPeopleGroups:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum AddPeopleToPeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum AddRecommendAppsOnPhone:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum AddRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum AddRecommendWishlist:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum AddSound:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum AddSyncItems:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum AddWallpaper:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum BeginFullMerge:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum CheckForMessages:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum ClearAllMissedCalls:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum ClearMissedCalls:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum ClearMissedCallsByPhoneNumber:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum DeleteAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum DeleteAggregatePersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum DeleteDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum DeleteFootprint:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum DeleteMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum DeletePeopleByAccountType:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum DeletePeopleFromPeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum DeletePeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum DeleteRecommendAppsOnPhone:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum DeleteRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum DeleteRecommendedWishlist:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum EndFullMerge:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum GetAggregatePersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum GetMyAppsAndFriendsAppsRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum GetRecommendNewApplicationCommentsLikes:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum LogRemoteError:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum MessageQueueTestMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum ProcessSyncItems:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum RequestForAdd:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum RequestForUpdate:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum SearchRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum SetAggregatePersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum SetFootprintImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum SetFootprintMemo:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum SetMissedCallAsViewed:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum SetMissedCallsAsViewed:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum SetNewVoiceMailCount:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum SetPersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum UpdateAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum UpdateDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum UpdateFootprint:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum UpdateMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum UpdateMyProfile:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum UpdatePeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum UpdateRecommendAppCommentLastViewDate:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum UpdateRecommendAppLastViewDate:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum UpdateRecommendAppsOnPhone:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum UpdateRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field public static final enum UpdateVirtualDevice:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field private static final VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

.field private static internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x28

    const/16 v6, 0x1d

    const/16 v5, 0x17

    .line 49717
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "AddAggregatePerson"

    const/16 v2, 0xa1

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49718
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "UpdateAggregatePerson"

    const/16 v2, 0x523

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49719
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "DeleteAggregatePerson"

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/16 v4, 0x4fd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49720
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "GetAggregatePersonImage"

    const/4 v2, 0x3

    const/4 v3, 0x3

    const/16 v4, 0x6c8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->GetAggregatePersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49721
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "SetAggregatePersonImage"

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/16 v4, 0x29d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetAggregatePersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49722
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "DeleteAggregatePersonImage"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0x427

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteAggregatePersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49723
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "DeletePeopleByAccountType"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0x5a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeletePeopleByAccountType:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49724
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "SetPersonImage"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x3d0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetPersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49725
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "AddFootprint"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x6f8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddFootprint:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49726
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "UpdateFootprint"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x78a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateFootprint:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49727
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "DeleteFootprint"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0x646

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteFootprint:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49728
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "SetFootprintImage"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0x2c4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetFootprintImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49729
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "SetFootprintMemo"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0x2bf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetFootprintMemo:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49730
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "AddMessage"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0x222

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49731
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "UpdateMessage"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0x564

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49732
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "DeleteMessage"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x218

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49733
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "AddMyProfile"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x7b3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddMyProfile:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49734
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "UpdateMyProfile"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x113

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateMyProfile:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49735
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "AddPeopleGroup"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x5a5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddPeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49736
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "AddPeopleGroups"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x493

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddPeopleGroups:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49737
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "UpdatePeopleGroup"

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x172

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdatePeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49738
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "AddPeopleToPeopleGroup"

    const/16 v2, 0x15

    const/16 v3, 0x15

    const/16 v4, 0x98

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddPeopleToPeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49739
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "DeletePeopleFromPeopleGroup"

    const/16 v2, 0x16

    const/16 v3, 0x16

    const/16 v4, 0xbe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeletePeopleFromPeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49740
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "DeletePeopleGroup"

    const/16 v2, 0x147

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeletePeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49741
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "AddRecommendCommentLike"

    const/16 v2, 0x18

    const/16 v3, 0x18

    const/16 v4, 0x186

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49742
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "AddRecommendWishlist"

    const/16 v2, 0x19

    const/16 v3, 0x19

    const/16 v4, 0x56e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddRecommendWishlist:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49743
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "DeleteRecommendedWishlist"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const/16 v4, 0x531

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteRecommendedWishlist:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49744
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "AddRecommendAppsOnPhone"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const/16 v4, 0x424

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddRecommendAppsOnPhone:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49745
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "DeleteRecommendAppsOnPhone"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const/16 v4, 0x45c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteRecommendAppsOnPhone:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49746
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "UpdateRecommendCommentLike"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49747
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "UpdateRecommendAppsOnPhone"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    const/16 v4, 0x4eb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateRecommendAppsOnPhone:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49748
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "UpdateRecommendAppLastViewDate"

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    const/16 v4, 0x637

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateRecommendAppLastViewDate:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49749
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "UpdateRecommendAppCommentLastViewDate"

    const/16 v2, 0x20

    const/16 v3, 0x20

    const/16 v4, 0x30f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateRecommendAppCommentLastViewDate:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49750
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "DeleteRecommendCommentLike"

    const/16 v2, 0x21

    const/16 v3, 0x21

    const/16 v4, 0x5d2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49751
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "SearchRecommendCommentLike"

    const/16 v2, 0x22

    const/16 v3, 0x22

    const/16 v4, 0x469

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SearchRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49752
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "GetRecommendNewApplicationCommentsLikes"

    const/16 v2, 0x23

    const/16 v3, 0x23

    const/16 v4, 0x722

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->GetRecommendNewApplicationCommentsLikes:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49753
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "GetMyAppsAndFriendsAppsRecommendCommentLike"

    const/16 v2, 0x24

    const/16 v3, 0x24

    const/16 v4, 0x3d9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->GetMyAppsAndFriendsAppsRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49754
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "AddSound"

    const/16 v2, 0x25

    const/16 v3, 0x25

    const/16 v4, 0x232

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddSound:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49755
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "LogRemoteError"

    const/16 v2, 0x26

    const/16 v3, 0x26

    const/16 v4, 0x305

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->LogRemoteError:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49756
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "UpdateVirtualDevice"

    const/16 v2, 0x27

    const/16 v3, 0x27

    const/16 v4, 0x202

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateVirtualDevice:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49757
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "AddSyncItems"

    const/16 v2, 0x6d8

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddSyncItems:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49758
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "ProcessSyncItems"

    const/16 v2, 0x29

    const/16 v3, 0x29

    const/16 v4, 0x6f9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->ProcessSyncItems:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49759
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "BeginFullMerge"

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    const/16 v4, 0x583

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->BeginFullMerge:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49760
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "RequestForAdd"

    const/16 v2, 0x2b

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->RequestForAdd:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49761
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "RequestForUpdate"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    const/16 v4, 0x63d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->RequestForUpdate:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49762
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "EndFullMerge"

    const/16 v2, 0x2d

    const/16 v3, 0x2d

    const/16 v4, 0x754

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->EndFullMerge:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49763
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "CheckForMessages"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x181

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->CheckForMessages:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49764
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "SetNewVoiceMailCount"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const/16 v4, 0x475

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetNewVoiceMailCount:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49765
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "AddMissedCall"

    const/16 v2, 0x30

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddMissedCall:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49766
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "ClearMissedCallsByPhoneNumber"

    const/16 v2, 0x31

    const/16 v3, 0x31

    const/16 v4, 0x6e6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->ClearMissedCallsByPhoneNumber:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49767
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "ClearMissedCalls"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x2e7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->ClearMissedCalls:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49768
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "ClearAllMissedCalls"

    const/16 v2, 0x33

    const/16 v3, 0x33

    const/16 v4, 0x7fd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->ClearAllMissedCalls:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49769
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "SetMissedCallAsViewed"

    const/16 v2, 0x34

    const/16 v3, 0x34

    const/16 v4, 0x34c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetMissedCallAsViewed:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49770
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "SetMissedCallsAsViewed"

    const/16 v2, 0x35

    const/16 v3, 0x35

    const/16 v4, 0x703

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetMissedCallsAsViewed:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49771
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "AddDeviceSetting"

    const/16 v2, 0x36

    const/16 v3, 0x36

    const/16 v4, 0x134

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49772
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "UpdateDeviceSetting"

    const/16 v2, 0x37

    const/16 v3, 0x37

    const/16 v4, 0x156

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49773
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "DeleteDeviceSetting"

    const/16 v2, 0x38

    const/16 v3, 0x38

    const/16 v4, 0x71

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49774
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "AddWallpaper"

    const/16 v2, 0x39

    const/16 v3, 0x39

    const/16 v4, 0xf4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddWallpaper:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49775
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    const-string v1, "MessageQueueTestMessage"

    const/16 v2, 0x3a

    const/16 v3, 0x3a

    const/16 v4, 0x4c9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->MessageQueueTestMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49715
    const/16 v0, 0x3b

    new-array v0, v0, [Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->GetAggregatePersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetAggregatePersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteAggregatePersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeletePeopleByAccountType:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetPersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddFootprint:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateFootprint:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteFootprint:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetFootprintImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetFootprintMemo:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddMyProfile:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateMyProfile:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddPeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddPeopleGroups:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdatePeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddPeopleToPeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeletePeopleFromPeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeletePeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v1, v0, v5

    const/16 v1, 0x18

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddRecommendWishlist:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteRecommendedWishlist:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddRecommendAppsOnPhone:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteRecommendAppsOnPhone:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v1, v0, v6

    const/16 v1, 0x1e

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateRecommendAppsOnPhone:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateRecommendAppLastViewDate:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateRecommendAppCommentLastViewDate:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SearchRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->GetRecommendNewApplicationCommentsLikes:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->GetMyAppsAndFriendsAppsRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddSound:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->LogRemoteError:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateVirtualDevice:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddSyncItems:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v1, v0, v7

    const/16 v1, 0x29

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->ProcessSyncItems:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->BeginFullMerge:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->RequestForAdd:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->RequestForUpdate:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->EndFullMerge:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->CheckForMessages:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetNewVoiceMailCount:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddMissedCall:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->ClearMissedCallsByPhoneNumber:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->ClearMissedCalls:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->ClearAllMissedCalls:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetMissedCallAsViewed:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetMissedCallsAsViewed:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddWallpaper:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->MessageQueueTestMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49851
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type$1;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type$1;-><init>()V

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    .line 49871
    const/16 v0, 0x3b

    new-array v0, v0, [Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->GetAggregatePersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetAggregatePersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteAggregatePersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeletePeopleByAccountType:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetPersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddFootprint:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateFootprint:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteFootprint:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetFootprintImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetFootprintMemo:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddMyProfile:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateMyProfile:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddPeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddPeopleGroups:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdatePeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddPeopleToPeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeletePeopleFromPeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeletePeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v1, v0, v5

    const/16 v1, 0x18

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddRecommendWishlist:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteRecommendedWishlist:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddRecommendAppsOnPhone:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteRecommendAppsOnPhone:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v1, v0, v6

    const/16 v1, 0x1e

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateRecommendAppsOnPhone:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateRecommendAppLastViewDate:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateRecommendAppCommentLastViewDate:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SearchRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->GetRecommendNewApplicationCommentsLikes:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->GetMyAppsAndFriendsAppsRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddSound:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->LogRemoteError:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateVirtualDevice:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddSyncItems:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v1, v0, v7

    const/16 v1, 0x29

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->ProcessSyncItems:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->BeginFullMerge:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->RequestForAdd:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->RequestForUpdate:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->EndFullMerge:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->CheckForMessages:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetNewVoiceMailCount:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddMissedCall:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->ClearMissedCallsByPhoneNumber:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->ClearMissedCalls:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->ClearAllMissedCalls:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetMissedCallAsViewed:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetMissedCallsAsViewed:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddWallpaper:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->MessageQueueTestMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    .line 49890
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol;->getDescriptor()Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 49891
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 49884
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49885
    iput p3, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->index:I

    .line 49886
    iput p4, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->value:I

    .line 49887
    return-void
.end method

.method public static final getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 49868
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/htc/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49848
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->internalValueMap:Lcom/htc/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    .locals 1
    .parameter "value"

    .prologue
    .line 49782
    sparse-switch p0, :sswitch_data_0

    .line 49842
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 49783
    :sswitch_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49784
    :sswitch_1
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49785
    :sswitch_2
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteAggregatePerson:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49786
    :sswitch_3
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->GetAggregatePersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49787
    :sswitch_4
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetAggregatePersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49788
    :sswitch_5
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteAggregatePersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49789
    :sswitch_6
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeletePeopleByAccountType:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49790
    :sswitch_7
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetPersonImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49791
    :sswitch_8
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddFootprint:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49792
    :sswitch_9
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateFootprint:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49793
    :sswitch_a
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteFootprint:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49794
    :sswitch_b
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetFootprintImage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49795
    :sswitch_c
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetFootprintMemo:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49796
    :sswitch_d
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49797
    :sswitch_e
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49798
    :sswitch_f
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49799
    :sswitch_10
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddMyProfile:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49800
    :sswitch_11
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateMyProfile:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49801
    :sswitch_12
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddPeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49802
    :sswitch_13
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddPeopleGroups:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49803
    :sswitch_14
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdatePeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49804
    :sswitch_15
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddPeopleToPeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49805
    :sswitch_16
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeletePeopleFromPeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49806
    :sswitch_17
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeletePeopleGroup:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49807
    :sswitch_18
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49808
    :sswitch_19
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddRecommendWishlist:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49809
    :sswitch_1a
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteRecommendedWishlist:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49810
    :sswitch_1b
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddRecommendAppsOnPhone:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49811
    :sswitch_1c
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteRecommendAppsOnPhone:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49812
    :sswitch_1d
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49813
    :sswitch_1e
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateRecommendAppsOnPhone:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49814
    :sswitch_1f
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateRecommendAppLastViewDate:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49815
    :sswitch_20
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateRecommendAppCommentLastViewDate:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49816
    :sswitch_21
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49817
    :sswitch_22
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SearchRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49818
    :sswitch_23
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->GetRecommendNewApplicationCommentsLikes:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49819
    :sswitch_24
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->GetMyAppsAndFriendsAppsRecommendCommentLike:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49820
    :sswitch_25
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddSound:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49821
    :sswitch_26
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->LogRemoteError:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49822
    :sswitch_27
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateVirtualDevice:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49823
    :sswitch_28
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddSyncItems:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49824
    :sswitch_29
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->ProcessSyncItems:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto :goto_0

    .line 49825
    :sswitch_2a
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->BeginFullMerge:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49826
    :sswitch_2b
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->RequestForAdd:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49827
    :sswitch_2c
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->RequestForUpdate:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49828
    :sswitch_2d
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->EndFullMerge:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49829
    :sswitch_2e
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->CheckForMessages:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49830
    :sswitch_2f
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetNewVoiceMailCount:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49831
    :sswitch_30
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddMissedCall:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49832
    :sswitch_31
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->ClearMissedCallsByPhoneNumber:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49833
    :sswitch_32
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->ClearMissedCalls:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49834
    :sswitch_33
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->ClearAllMissedCalls:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49835
    :sswitch_34
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetMissedCallAsViewed:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49836
    :sswitch_35
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->SetMissedCallsAsViewed:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49837
    :sswitch_36
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49838
    :sswitch_37
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->UpdateDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49839
    :sswitch_38
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->DeleteDeviceSetting:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49840
    :sswitch_39
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->AddWallpaper:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49841
    :sswitch_3a
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->MessageQueueTestMessage:Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    goto/16 :goto_0

    .line 49782
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2b
        0x1d -> :sswitch_30
        0x28 -> :sswitch_1d
        0x5a -> :sswitch_6
        0x71 -> :sswitch_38
        0x98 -> :sswitch_15
        0xa1 -> :sswitch_0
        0xbe -> :sswitch_16
        0xf4 -> :sswitch_39
        0x113 -> :sswitch_11
        0x134 -> :sswitch_36
        0x147 -> :sswitch_17
        0x156 -> :sswitch_37
        0x172 -> :sswitch_14
        0x181 -> :sswitch_2e
        0x186 -> :sswitch_18
        0x202 -> :sswitch_27
        0x218 -> :sswitch_f
        0x222 -> :sswitch_d
        0x232 -> :sswitch_25
        0x29d -> :sswitch_4
        0x2bf -> :sswitch_c
        0x2c4 -> :sswitch_b
        0x2e7 -> :sswitch_32
        0x305 -> :sswitch_26
        0x30f -> :sswitch_20
        0x34c -> :sswitch_34
        0x3d0 -> :sswitch_7
        0x3d9 -> :sswitch_24
        0x424 -> :sswitch_1b
        0x427 -> :sswitch_5
        0x45c -> :sswitch_1c
        0x469 -> :sswitch_22
        0x475 -> :sswitch_2f
        0x493 -> :sswitch_13
        0x4c9 -> :sswitch_3a
        0x4eb -> :sswitch_1e
        0x4fd -> :sswitch_2
        0x523 -> :sswitch_1
        0x531 -> :sswitch_1a
        0x564 -> :sswitch_e
        0x56e -> :sswitch_19
        0x583 -> :sswitch_2a
        0x5a5 -> :sswitch_12
        0x5d2 -> :sswitch_21
        0x637 -> :sswitch_1f
        0x63d -> :sswitch_2c
        0x646 -> :sswitch_a
        0x6c8 -> :sswitch_3
        0x6d8 -> :sswitch_28
        0x6e6 -> :sswitch_31
        0x6f8 -> :sswitch_8
        0x6f9 -> :sswitch_29
        0x703 -> :sswitch_35
        0x722 -> :sswitch_23
        0x754 -> :sswitch_2d
        0x78a -> :sswitch_9
        0x7b3 -> :sswitch_10
        0x7fd -> :sswitch_33
    .end sparse-switch
.end method

.method public static valueOf(Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    .locals 2
    .parameter "desc"

    .prologue
    .line 49876
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 49877
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49880
    :cond_0
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 49715
    const-class v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;
    .locals 1

    .prologue
    .line 49715
    sget-object v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->$VALUES:[Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    invoke-virtual {v0}, [Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 49864
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 49779
    iget v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 49860
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->getDescriptor()Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage$Type;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
