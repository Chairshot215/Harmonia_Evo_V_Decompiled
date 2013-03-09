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

.field private mIsRegistered:Z

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

.field private mUnreadEmailObserver:Landroid/database/ContentObserver;

.field protected final mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

.field private mUnreadMessageObserver:Landroid/database/ContentObserver;

.field protected final mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "content://call_log/miss_calls_count_by_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->MISSCALL_URI:Landroid/net/Uri;

    .line 64
    const-string v0, "content://mail/allmessagesCountUnread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->UNREAD_EMAIL_URI:Landroid/net/Uri;

    .line 65
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->UNREAD_MESSAGE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "bundle"
    .parameter "groupName"
    .parameter "groupIsReadOnly"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 598
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/indicator/IndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;)V

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdSet:Ljava/util/HashSet;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberIdSet:Ljava/util/HashSet;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    .line 84
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$1;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mGroupDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberContactIdArray:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdArray:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailArray:Ljava/util/ArrayList;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneArray:Ljava/util/ArrayList;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdArray:Ljava/util/ArrayList;

    .line 283
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$2;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMissCallQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 316
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$3;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$3;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 350
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$4;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$4;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 437
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$5;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$5;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .line 477
    iput-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    .line 478
    iput-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    .line 479
    iput-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    .line 599
    iput-boolean v2, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mShouldQuery:Z

    .line 600
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    .line 601
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mHandler:Landroid/os/Handler;

    .line 602
    iput-object p4, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mGroupName:Ljava/lang/String;

    .line 603
    iput-boolean v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mIsRequestStillValid:Z

    .line 606
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$9;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$9;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mExceptGroupObserver:Landroid/database/ContentObserver;

    .line 613
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mGroupDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 616
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 617
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 618
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 620
    invoke-direct {p0, p1}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->init(Landroid/content/Context;)V

    .line 621
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildRawContactIdArray()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildEmailArray()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildPhoneArray()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildContactIdArray()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->buildMemberContactIdArray()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->reQueueAllExceptData()V

    return-void
.end method

.method private buildContactIdArray()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 260
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberIdSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 261
    .local v1, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 262
    .local v0, i:I
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 263
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 264
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 266
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    add-int/lit8 v0, v0, 0x1

    .line 270
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const/4 v0, 0x0

    .line 274
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 277
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 279
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mContactIdArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_3
    return-void
.end method

.method private buildEmailArray()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 206
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 207
    .local v1, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 208
    .local v0, i:I
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 209
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 210
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    add-int/lit8 v0, v0, 0x1

    .line 216
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    const/4 v0, 0x0

    .line 220
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 225
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEmailArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_3
    return-void
.end method

.method private buildMemberContactIdArray()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 154
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberIdSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 155
    .local v1, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 156
    .local v0, i:I
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 157
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberContactIdArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 158
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    add-int/lit8 v0, v0, 0x1

    .line 164
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberContactIdArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    const/4 v0, 0x0

    .line 168
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 173
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMemberContactIdArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_3
    return-void
.end method

.method private buildPhoneArray()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 232
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 233
    .local v1, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 234
    .local v0, i:I
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 235
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 236
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, "PHONE_NUMBERS_EQUAL(address,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    add-int/lit8 v0, v0, 0x1

    .line 244
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    const/4 v0, 0x0

    .line 248
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 253
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mPhoneArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_3
    return-void
.end method

.method private buildRawContactIdArray()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 180
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 181
    .local v1, ite:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 182
    .local v0, i:I
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 183
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 184
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 190
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    const/4 v0, 0x0

    .line 194
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 199
    iget-object v2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mRawContactIdArray:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_3
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->enableObservers()V

    .line 542
    return-void
.end method

.method private reQueueAllExceptData()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 558
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 559
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 560
    return-void
.end method


# virtual methods
.method public changePersonId(Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 2
    .parameter "bundle"
    .parameter "groupName"
    .parameter "groupIsReadOnly"

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mIsExecuting:Z

    if-eqz v0, :cond_0

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mIsRequestStillValid:Z

    .line 576
    :cond_0
    iput-object p2, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mGroupName:Ljava/lang/String;

    .line 577
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->changeBundle(Landroid/os/Bundle;)V

    .line 578
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mGroupDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 581
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 582
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 583
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 584
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->disableObservers()V

    .line 570
    return-void
.end method

.method public disableObservers()V
    .locals 2

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 649
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 650
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mExceptGroupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mIsRegistered:Z

    .line 653
    :cond_0
    return-void
.end method

.method public enableObservers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 629
    iget-boolean v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->UNREAD_EMAIL_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->getUnreadEmailObserver()Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 637
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->UNREAD_MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->getUnreadMessageObserver()Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 642
    iput-boolean v3, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mIsRegistered:Z

    .line 644
    :cond_0
    return-void
.end method

.method protected getMissCallObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$6;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$6;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mMissCallObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method protected getUnreadEmailObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$7;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$7;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method protected getUnreadMessageObserver()Landroid/database/ContentObserver;
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$8;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/indicator/GroupIndicatorRequest$8;-><init>(Lcom/android/htccontacts/indicator/GroupIndicatorRequest;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method protected onExecutingStatusChanged(Z)V
    .locals 1
    .parameter "isExecuting"

    .prologue
    .line 591
    if-nez p1, :cond_0

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mIsRequestStillValid:Z

    .line 594
    :cond_0
    return-void
.end method

.method public reQueueAll()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 546
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mGroupDataQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 549
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 550
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mEventQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 551
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 552
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 624
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
    .line 587
    iget-boolean v0, p0, Lcom/android/htccontacts/indicator/GroupIndicatorRequest;->mIsRequestStillValid:Z

    return v0
.end method
