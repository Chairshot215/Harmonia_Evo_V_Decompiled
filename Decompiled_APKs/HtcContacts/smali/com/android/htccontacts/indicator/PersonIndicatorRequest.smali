.class public Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
.super Lcom/android/htccontacts/indicator/IndicatorRequest;
.source "PersonIndicatorRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final KEY_CALLLOG:Ljava/lang/String; = "CALLLOG"

.field public static final KEY_EMAIL:Ljava/lang/String; = "EMAIL"

.field public static final KEY_EVENT:Ljava/lang/String; = "EVENT"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "MESSAGE"

.field public static final KEY_SOCIAL_NETWORK:Ljava/lang/String; = "SOCIAL_NETWORK"

.field private static final MAX_DATA_ID_SELECTION_SIZE:I = 0x64

.field private static final MAX_WHERE_OR_DEPTH:I = 0xf0

.field protected static final MISSCALL_OBSERVER_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "PersonIndicatorRequest"

.field public static final TYPE_BY_CONTACT_ID:I = 0x0

.field public static final TYPE_BY_RAW_CONTACT_ID:I = 0x1

.field public static final TYPE_BY_URI:I = 0x2

.field protected static final UNREAD_EMAIL_URI:Landroid/net/Uri;

.field protected static final UNREAD_MESSAGE_URI:Landroid/net/Uri;

.field protected static final UNREAD_MESSAGE_VVM_URI:Landroid/net/Uri;


# instance fields
.field protected mContactId:J

.field protected final mDataIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataIds:Ljava/lang/String;

.field protected final mDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

.field protected final mEmailSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mEventInstanceIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mEventInstancesIds:Ljava/lang/String;

.field protected final mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

.field protected mHandler:Landroid/os/Handler;

.field protected mIncludeExtraStatuses:Z

.field private mIsRegistered:Z

.field private mIsRequestStillValid:Z

.field private mMissCallObserver:Landroid/database/ContentObserver;

.field protected final mMissCallQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

.field protected final mPhoneSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRawContactIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mRawIds:Ljava/lang/String;

.field protected mRequestType:I

.field protected mResolver:Landroid/content/ContentResolver;

.field protected final mSocialNetworkService:[Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

.field protected mStatusId:J

.field protected final mStatusQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

.field private mUnreadEmailObserver:Landroid/database/ContentObserver;

.field protected final mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

.field private mUnreadMessageObserver:Landroid/database/ContentObserver;

.field protected final mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "content://mail/allmessagesCountUnread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->UNREAD_EMAIL_URI:Landroid/net/Uri;

    .line 73
    const-string v0, "content://call_log/miss_calls_count_by_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->MISSCALL_OBSERVER_URI:Landroid/net/Uri;

    .line 74
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->UNREAD_MESSAGE_URI:Landroid/net/Uri;

    .line 75
    const-string v0, "content://allmessages/allmessages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->UNREAD_MESSAGE_VVM_URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "listener"
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    .line 651
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/indicator/IndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;)V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusId:J

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstanceIdSet:Ljava/util/HashSet;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIdSet:Ljava/util/HashSet;

    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    const-string v3, "vnd.android.cursor.item/vnd.facebook.profile"

    const-string v4, "content://com.htc.socialnetwork.facebook/status_update"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    const-string v3, "vnd.android.cursor.item/vnd.htcfacebook.profile"

    const-string v4, "content://com.htc.socialnetwork.facebook/status_update"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    const-string v3, "vnd.android.cursor.item/vnd.htctwitter.profile"

    const-string v4, "content://com.htc.htctwitter/status_update"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    const-string v3, "vnd.android.cursor.item/vnd.plurk.profile"

    const-string v4, "content://com.htc.socialnetwork.plurk/status_update"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkService:[Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    .line 109
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 222
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 383
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 414
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 463
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$5;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$5;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 501
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 538
    iput-object v5, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    .line 539
    iput-object v5, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    .line 540
    iput-object v5, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    .line 652
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    .line 653
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;J)V
    .locals 7
    .parameter "context"
    .parameter "listener"
    .parameter "bundle"
    .parameter "contactId"

    .prologue
    .line 656
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;JZ)V

    .line 657
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;JZ)V
    .locals 8
    .parameter "context"
    .parameter "listener"
    .parameter "bundle"
    .parameter "contactId"
    .parameter "includeExtraStatuses"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 660
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/indicator/IndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;)V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusId:J

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstanceIdSet:Ljava/util/HashSet;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIdSet:Ljava/util/HashSet;

    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    new-instance v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    const-string v2, "vnd.android.cursor.item/vnd.facebook.profile"

    const-string v3, "content://com.htc.socialnetwork.facebook/status_update"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    const-string v2, "vnd.android.cursor.item/vnd.htcfacebook.profile"

    const-string v3, "content://com.htc.socialnetwork.facebook/status_update"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    const-string v3, "vnd.android.cursor.item/vnd.htctwitter.profile"

    const-string v4, "content://com.htc.htctwitter/status_update"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    const-string v3, "vnd.android.cursor.item/vnd.plurk.profile"

    const-string v4, "content://com.htc.socialnetwork.plurk/status_update"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkService:[Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    .line 109
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 222
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 383
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 414
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 463
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$5;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$5;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 501
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 538
    iput-object v6, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    .line 539
    iput-object v6, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    .line 540
    iput-object v6, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    .line 661
    iput v7, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    .line 662
    iput-boolean v5, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mShouldQuery:Z

    .line 663
    iput-wide p4, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mContactId:J

    .line 664
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    .line 665
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mHandler:Landroid/os/Handler;

    .line 666
    iput-boolean v5, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIsRequestStillValid:Z

    .line 667
    iput-boolean p6, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIncludeExtraStatuses:Z

    .line 669
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 670
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 673
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 674
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 675
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 685
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->enableObservers()V

    .line 700
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "listener"
    .parameter "bundle"
    .parameter "rawIds"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 704
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/indicator/IndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;)V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusId:J

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstanceIdSet:Ljava/util/HashSet;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIdSet:Ljava/util/HashSet;

    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    const-string v3, "vnd.android.cursor.item/vnd.facebook.profile"

    const-string v4, "content://com.htc.socialnetwork.facebook/status_update"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    const-string v2, "vnd.android.cursor.item/vnd.htcfacebook.profile"

    const-string v3, "content://com.htc.socialnetwork.facebook/status_update"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-instance v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    const-string v3, "vnd.android.cursor.item/vnd.htctwitter.profile"

    const-string v4, "content://com.htc.htctwitter/status_update"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    const-string v3, "vnd.android.cursor.item/vnd.plurk.profile"

    const-string v4, "content://com.htc.socialnetwork.plurk/status_update"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkService:[Lcom/android/htccontacts/indicator/PersonIndicatorRequest$SocialNetworkService;

    .line 109
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 222
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 383
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 414
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 463
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$5;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$5;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 501
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 538
    iput-object v6, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    .line 539
    iput-object v6, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    .line 540
    iput-object v6, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    .line 705
    iput v5, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    .line 706
    iput-boolean v5, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mShouldQuery:Z

    .line 707
    iput-object p4, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    .line 708
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    .line 709
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mHandler:Landroid/os/Handler;

    .line 710
    iput-boolean v5, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIsRequestStillValid:Z

    .line 713
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 714
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 724
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->enableObservers()V

    .line 739
    return-void
.end method


# virtual methods
.method public changePersonId(Landroid/os/Bundle;J)V
    .locals 3
    .parameter "bundle"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    .line 605
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    if-ne v0, v1, :cond_0

    .line 606
    iput v2, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    .line 608
    :cond_0
    iget v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    if-eqz v0, :cond_1

    .line 609
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request using rawIds is not OK when the request type is already decided to be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_1
    iget-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mIsExecuting:Z

    if-eqz v0, :cond_2

    .line 612
    iput-boolean v2, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIsRequestStillValid:Z

    .line 614
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->changeBundle(Landroid/os/Bundle;)V

    .line 615
    iput-wide p2, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mContactId:J

    .line 616
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->reQueueAll()V

    .line 617
    return-void
.end method

.method public changePersonId(Ljava/lang/String;)V
    .locals 3
    .parameter "rawIds"

    .prologue
    const/4 v2, 0x1

    .line 631
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    if-ne v0, v1, :cond_0

    .line 632
    iput v2, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    .line 634
    :cond_0
    iget v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    if-eq v2, v0, :cond_1

    .line 635
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request using rawIds is not OK when the request type is already decided to be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_1
    iput-object p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    .line 638
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->reQueueAll()V

    .line 639
    return-void
.end method

.method public changeStatusId(J)V
    .locals 0
    .parameter "statusId"

    .prologue
    .line 601
    iput-wide p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusId:J

    .line 602
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->disableObservers()V

    .line 585
    return-void
.end method

.method public disableObservers()V
    .locals 2

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 763
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIsRegistered:Z

    .line 766
    :cond_0
    return-void
.end method

.method public enableObservers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 743
    iget-boolean v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://mail/allmessages_with_account"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->getUnreadEmailObserver()Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 751
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->UNREAD_MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->getUnreadMessageObserver()Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 756
    iput-boolean v3, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIsRegistered:Z

    .line 758
    :cond_0
    return-void
.end method

.method protected getMissCallObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method protected getUnreadEmailObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$8;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$8;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method protected getUnreadMessageObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$9;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$9;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method protected onExecutingStatusChanged(Z)V
    .locals 1
    .parameter "isExecuting"

    .prologue
    .line 624
    if-nez p1, :cond_0

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIsRequestStillValid:Z

    .line 627
    :cond_0
    return-void
.end method

.method public query()V
    .locals 0

    .prologue
    .line 643
    invoke-super {p0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->query()V

    .line 644
    return-void
.end method

.method public reQueueAll()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 590
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 591
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 594
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 595
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 596
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 598
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersonIndicatorRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validateRequest()Z
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIsRequestStillValid:Z

    return v0
.end method
