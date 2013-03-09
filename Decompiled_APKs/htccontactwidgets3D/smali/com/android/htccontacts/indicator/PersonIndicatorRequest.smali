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
.field protected static final ALLEMAIL_URI:Landroid/net/Uri; = null

.field public static final KEY_CALLLOG:Ljava/lang/String; = "CALLLOG"

.field public static final KEY_EMAIL:Ljava/lang/String; = "EMAIL"

.field public static final KEY_EVENT:Ljava/lang/String; = "EVENT"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "MESSAGE"

.field public static final KEY_SOCIAL_NETWORK:Ljava/lang/String; = "SOCIAL_NETWORK"

.field private static final MAX_DATA_ID_SELECTION_SIZE:I = 0x64

.field private static final MAX_WHERE_OR_DEPTH:I = 0xf0

.field protected static final MISSCALL_INFO_PHOTO_URI:Landroid/net/Uri; = null

.field protected static final MISSCALL_OBSERVER_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "PersonIndicatorRequest"

.field public static final TYPE_BY_CONTACT_ID:I = 0x0

.field public static final TYPE_BY_RAW_CONTACT_ID:I = 0x1

.field public static final TYPE_BY_URI:I = 0x2

.field public static final TYPE_REQUEST_COUNT_ONLY:I = 0x65

.field public static final TYPE_REQUEST_COUNT_PLUS_DETAILS:I = 0x66

.field protected static final UNREAD_EMAIL_URI:Landroid/net/Uri;

.field protected static final UNREAD_MESSAGE_URI:Landroid/net/Uri;


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

.field protected mRequestContentType:I

.field protected mRequestType:I

.field protected mResolver:Landroid/content/ContentResolver;

.field private mSocialNetworkObserver:Landroid/database/ContentObserver;

.field protected final mSocialNetworkQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

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
    .line 84
    const-string v0, "content://mail/allmessagesCountUnread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->UNREAD_EMAIL_URI:Landroid/net/Uri;

    .line 85
    const-string v0, "content://call_log/miss_calls_count_by_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->MISSCALL_OBSERVER_URI:Landroid/net/Uri;

    .line 86
    const-string v0, "content://mms-sms/allmessages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->UNREAD_MESSAGE_URI:Landroid/net/Uri;

    .line 87
    const-string v0, "content://call_log/calls_photo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->MISSCALL_INFO_PHOTO_URI:Landroid/net/Uri;

    .line 88
    const-string v0, "content://mail/allmessages_with_account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->ALLEMAIL_URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "listener"
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    .line 1072
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/indicator/IndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;)V

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusId:J

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstanceIdSet:Ljava/util/HashSet;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIdSet:Ljava/util/HashSet;

    .line 118
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

    .line 125
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 252
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 437
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 522
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 634
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$5;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$5;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 680
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 729
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 942
    iput-object v5, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    .line 943
    iput-object v5, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    .line 944
    iput-object v5, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkObserver:Landroid/database/ContentObserver;

    .line 945
    iput-object v5, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    .line 1073
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    .line 1074
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;JI)V
    .locals 5
    .parameter "context"
    .parameter "listener"
    .parameter "bundle"
    .parameter "contactId"
    .parameter "nRequestContentType"

    .prologue
    .line 1077
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/indicator/IndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;)V

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusId:J

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstanceIdSet:Ljava/util/HashSet;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIdSet:Ljava/util/HashSet;

    .line 118
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

    .line 125
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 252
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 437
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 522
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 634
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$5;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$5;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 680
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 729
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 942
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    .line 943
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    .line 944
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkObserver:Landroid/database/ContentObserver;

    .line 945
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    .line 1078
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    .line 1079
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mShouldQuery:Z

    .line 1080
    iput-wide p4, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mContactId:J

    .line 1081
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    .line 1082
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mHandler:Landroid/os/Handler;

    .line 1083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIsRequestStillValid:Z

    .line 1085
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestContentType:I

    .line 1087
    const/16 v0, 0x65

    if-eq p6, v0, :cond_2

    const/16 v0, 0x66

    if-eq p6, v0, :cond_2

    .line 1088
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestContentType:I

    .line 1093
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1094
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1097
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1099
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$SocialNetwork;->isSocialNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x3ff999999999999aL

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1103
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1114
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://mail/allmessages_with_account"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->getUnreadEmailObserver()Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1122
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$SocialNetwork;->isSocialNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide v0, 0x3ff999999999999aL

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1123
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/ProfileUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->getSocialNetworkObserver()Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1127
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->getSocialNetworkObserver()Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->UNREAD_MESSAGE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->getUnreadMessageObserver()Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1139
    return-void

    .line 1090
    :cond_2
    iput p6, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestContentType:I

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "listener"
    .parameter "bundle"
    .parameter "rawIds"

    .prologue
    const-wide v7, 0x3ff999999999999aL

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1143
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/indicator/IndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;)V

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusId:J

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventInstanceIdSet:Ljava/util/HashSet;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataIdSet:Ljava/util/HashSet;

    .line 118
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

    .line 125
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$1;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 252
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$2;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 437
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$3;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 522
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$4;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 634
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$5;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$5;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 680
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$6;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 729
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$7;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 942
    iput-object v6, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    .line 943
    iput-object v6, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    .line 944
    iput-object v6, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkObserver:Landroid/database/ContentObserver;

    .line 945
    iput-object v6, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    .line 1144
    iput v5, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    .line 1145
    iput-boolean v5, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mShouldQuery:Z

    .line 1146
    iput-object p4, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    .line 1147
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    .line 1148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mHandler:Landroid/os/Handler;

    .line 1149
    iput-boolean v5, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIsRequestStillValid:Z

    .line 1150
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestContentType:I

    .line 1154
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1156
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$SocialNetwork;->isSocialNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v7, v8}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1170
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://mail/allmessages_with_account"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->getUnreadEmailObserver()Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1179
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$SocialNetwork;->isSocialNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v7, v8}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/ProfileUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->getSocialNetworkObserver()Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1184
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/Event;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->getSocialNetworkObserver()Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1191
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->UNREAD_MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->getUnreadMessageObserver()Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1196
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->isSense40Above()Z

    move-result v0

    return v0
.end method

.method private isSense40Above()Z
    .locals 3

    .prologue
    .line 1199
    const/4 v1, 0x0

    .line 1200
    .local v1, senseVersion:F
    const/4 v0, 0x0

    .line 1202
    .local v0, retVal:Z
    :try_start_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1205
    :goto_0
    const/high16 v2, 0x4080

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 1206
    const/4 v0, 0x1

    .line 1208
    :cond_0
    return v0

    .line 1203
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public changePersonId(Landroid/os/Bundle;J)V
    .locals 3
    .parameter "bundle"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    .line 1026
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    if-ne v0, v1, :cond_0

    .line 1027
    iput v2, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    .line 1029
    :cond_0
    iget v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    if-eqz v0, :cond_1

    .line 1030
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

    .line 1032
    :cond_1
    iget-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mIsExecuting:Z

    if-eqz v0, :cond_2

    .line 1033
    iput-boolean v2, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIsRequestStillValid:Z

    .line 1035
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->changeBundle(Landroid/os/Bundle;)V

    .line 1036
    iput-wide p2, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mContactId:J

    .line 1037
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->reQueueAll()V

    .line 1038
    return-void
.end method

.method public changePersonId(Ljava/lang/String;)V
    .locals 3
    .parameter "rawIds"

    .prologue
    const/4 v2, 0x1

    .line 1052
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    if-ne v0, v1, :cond_0

    .line 1053
    iput v2, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    .line 1055
    :cond_0
    iget v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRequestType:I

    if-eq v2, v0, :cond_1

    .line 1056
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

    .line 1058
    :cond_1
    iput-object p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    .line 1059
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->reQueueAll()V

    .line 1060
    return-void
.end method

.method public changeStatusId(J)V
    .locals 0
    .parameter "statusId"

    .prologue
    .line 1022
    iput-wide p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusId:J

    .line 1023
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 997
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 999
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$SocialNetwork;->isSocialNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x3ff999999999999aL

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1002
    :cond_0
    return-void
.end method

.method protected getMissCallObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 949
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$8;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$8;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method protected getSocialNetworkObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 971
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$10;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$10;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkObserver:Landroid/database/ContentObserver;

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method protected getUnreadEmailObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 960
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$9;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$9;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method protected getUnreadMessageObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 983
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$11;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest$11;-><init>(Lcom/android/htccontacts/indicator/PersonIndicatorRequest;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method protected onExecutingStatusChanged(Z)V
    .locals 1
    .parameter "isExecuting"

    .prologue
    .line 1045
    if-nez p1, :cond_0

    .line 1046
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIsRequestStillValid:Z

    .line 1048
    :cond_0
    return-void
.end method

.method public query()V
    .locals 0

    .prologue
    .line 1064
    invoke-super {p0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->query()V

    .line 1065
    return-void
.end method

.method public reQueueAll()V
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1007
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 1008
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mStatusQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 1011
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 1013
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$SocialNetwork;->isSocialNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x3ff999999999999aL

    invoke-static {v0, v1}, Lcom/htc/util/contacts/BuildUtils$HtcSense;->isAboveOrEqualToVer(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mSocialNetworkQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 1017
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 1019
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1068
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
    .line 1041
    iget-boolean v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mIsRequestStillValid:Z

    return v0
.end method
