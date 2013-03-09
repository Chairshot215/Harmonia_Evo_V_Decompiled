.class public Lcom/android/htccontacts/indicator/GroupIndicatorRequest;
.super Lcom/android/htccontacts/indicator/IndicatorRequest;
.source "GroupIndicatorRequest.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final KEY_CALLLOG:Ljava/lang/String; = "CALLLOG"

.field public static final KEY_EMAIL:Ljava/lang/String; = "EMAIL"

.field public static final KEY_EVENT:Ljava/lang/String; = "EVENT"

.field public static final KEY_MEMBER_COUNT:Ljava/lang/String; = "MEMBER_COUNT"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "MESSAGE"

.field public static final KEY_SOCIAL_NETWORK:Ljava/lang/String; = "SOCIAL_NETWORK"

.field private static final MAX_DATA_PER_LOOP:I = 0xc8

.field protected static final MISSCALL_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "GroupIndicatorRequest"

.field protected static final UNREAD_EMAIL_URI:Landroid/net/Uri;

.field protected static final UNREAD_MESSAGE_URI:Landroid/net/Uri;


# instance fields
.field mBuilder:Ljava/lang/StringBuilder;

.field private mContactIdArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mContactIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mEmailSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

.field protected mExceptGroupObserver:Landroid/database/ContentObserver;

.field protected final mGroupDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

.field protected mGroupName:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field private mIsRequestStillValid:Z

.field private mMemberContactIdArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMemberIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMissCallObserver:Landroid/database/ContentObserver;

.field protected final mMissCallQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

.field private mPhoneArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhoneSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactIdArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRawContactIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mResolver:Landroid/content/ContentResolver;

.field private mSocialNetworkObserver:Landroid/database/ContentObserver;

.field protected final mSocialNetworkQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

.field private mUnreadEmailObserver:Landroid/database/ContentObserver;

.field protected final mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

.field private mUnreadMessageObserver:Landroid/database/ContentObserver;

.field protected final mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "content://call_log/miss_calls_count_by_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->MISSCALL_URI:Landroid/net/Uri;

    .line 66
    const-string v0, "content://mail/allmessagesCountUnread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->UNREAD_EMAIL_URI:Landroid/net/Uri;

    .line 67
    const-string v0, "content://mms-sms/allmessages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->UNREAD_MESSAGE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "bundle"
    .parameter "groupName"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 618
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/indicator/IndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;)V

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdSet:Ljava/util/HashSet;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberIdSet:Ljava/util/HashSet;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    .line 86
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mGroupDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberContactIdArray:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdArray:Ljava/util/ArrayList;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailArray:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneArray:Ljava/util/ArrayList;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdArray:Ljava/util/ArrayList;

    .line 278
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$2;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMissCallQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 311
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$3;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 345
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$4;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mSocialNetworkQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 386
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$5;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$5;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 436
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$6;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$6;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 476
    iput-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    .line 477
    iput-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    .line 478
    iput-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mSocialNetworkObserver:Landroid/database/ContentObserver;

    .line 479
    iput-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    .line 619
    iput-boolean v2, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mShouldQuery:Z

    .line 620
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    .line 621
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mHandler:Landroid/os/Handler;

    .line 622
    iput-object p4, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mGroupName:Ljava/lang/String;

    .line 623
    iput-boolean v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mIsRequestStillValid:Z

    .line 626
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$11;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$11;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mExceptGroupObserver:Landroid/database/ContentObserver;

    .line 633
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mGroupDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 634
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMissCallQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 635
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 636
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$SocialNetwork;->isSocialNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isSense1_5()Z

    move-result v0

    if-ne v2, v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mSocialNetworkQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 640
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 642
    invoke-direct {p0, p1}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->init(Landroid/content/Context;)V

    .line 643
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildRawContactIdArray()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildEmailArray()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->reQueueAllExceptData()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildPhoneArray()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildContactIdArray()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildMemberContactIdArray()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberContactIdArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method private buildContactIdArray()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 255
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 256
    .local v1, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 257
    .local v0, i:I
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 258
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 259
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 261
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    add-int/lit8 v0, v0, 0x1

    .line 265
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    const/4 v0, 0x0

    .line 269
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 274
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_3
    return-void
.end method

.method private buildEmailArray()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 201
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 202
    .local v1, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 203
    .local v0, i:I
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 204
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 205
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v0, v0, 0x1

    .line 211
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    const/4 v0, 0x0

    .line 215
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 220
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_3
    return-void
.end method

.method private buildMemberContactIdArray()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberIdSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 150
    .local v1, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 151
    .local v0, i:I
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 152
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberContactIdArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 153
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 159
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberContactIdArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    const/4 v0, 0x0

    .line 163
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 168
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberContactIdArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_3
    return-void
.end method

.method private buildPhoneArray()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 227
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 228
    .local v1, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 229
    .local v0, i:I
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 230
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 231
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "PHONE_NUMBERS_EQUAL(address,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v0, v0, 0x1

    .line 239
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    const/4 v0, 0x0

    .line 243
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 248
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_3
    return-void
.end method

.method private buildRawContactIdArray()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 175
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 176
    .local v1, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 177
    .local v0, i:I
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 178
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 179
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v0, v0, 0x1

    .line 185
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    const/4 v0, 0x0

    .line 189
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 194
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_3
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 529
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->MISSCALL_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->getMissCallObserver()Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 536
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->UNREAD_EMAIL_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->getUnreadEmailObserver()Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 543
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$SocialNetwork;->isSocialNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isSense1_5()Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/socialnetwork/ProfileUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->getSocialNetworkObserver()Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->UNREAD_MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->getUnreadMessageObserver()Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 557
    return-void
.end method

.method private reQueueAllExceptData()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMissCallQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 573
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 574
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$SocialNetwork;->isSocialNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isSense1_5()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mSocialNetworkQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 578
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 579
    return-void
.end method


# virtual methods
.method public changePersonId(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .parameter "bundle"
    .parameter "groupName"

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mIsExecuting:Z

    if-eqz v0, :cond_0

    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mIsRequestStillValid:Z

    .line 595
    :cond_0
    iput-object p2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mGroupName:Ljava/lang/String;

    .line 596
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->changeBundle(Landroid/os/Bundle;)V

    .line 597
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mGroupDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 598
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMissCallQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 599
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 600
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$SocialNetwork;->isSocialNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isSense1_5()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 601
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mSocialNetworkQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 604
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 605
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 583
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 584
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$SocialNetwork;->isSocialNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isSense1_5()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mSocialNetworkObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 588
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mExceptGroupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 589
    return-void
.end method

.method protected getMissCallObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$7;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$7;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method protected getSocialNetworkObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mSocialNetworkObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$9;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$9;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mSocialNetworkObserver:Landroid/database/ContentObserver;

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mSocialNetworkObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method protected getUnreadEmailObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$8;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$8;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method protected getUnreadMessageObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$10;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$10;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method protected onExecutingStatusChanged(Z)V
    .locals 1
    .parameter "isExecuting"

    .prologue
    .line 612
    if-nez p1, :cond_0

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mIsRequestStillValid:Z

    .line 615
    :cond_0
    return-void
.end method

.method public reQueueAll()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 561
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mGroupDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 562
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMissCallQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 563
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 564
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$SocialNetwork;->isSocialNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isSense1_5()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mSocialNetworkQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 568
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 569
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupIndicatorRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 608
    iget-boolean v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mIsRequestStillValid:Z

    return v0
.end method
