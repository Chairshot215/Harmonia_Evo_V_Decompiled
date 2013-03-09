.class public Lcom/android/htccontacts/HtcContactInfo;
.super Lcom/android/htccontacts/HtcContactInfoBase;
.source "HtcContactInfo.java"

# interfaces
.implements Lcom/android/htccontacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/HtcContactInfo$WorkingHandler;,
        Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;,
        Lcom/android/htccontacts/HtcContactInfo$GroupsQuery;,
        Lcom/android/htccontacts/HtcContactInfo$ContactQuery;,
        Lcom/android/htccontacts/HtcContactInfo$ContactsContentObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final DELAY_QUERY_MESSAGE:I = 0xb

.field static final NOTIFY_CONTACT_CHANGE:I = 0xa

.field static final NOTIFY_CONTACT_CHANGE_WITH_URI:I = 0xc

.field static TAG:Ljava/lang/String;

.field private static mWorkingThread:Landroid/os/HandlerThread;

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field private logTime:J

.field private logTimeDiff:J

.field private logTimeNow:J

.field private mCloseCursorHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

.field protected mEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private mImDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;"
        }
    .end annotation
.end field

.field public mIsFavorite:Z

.field private volatile mIsLoad:Z

.field private volatile mIsRegistered:Z

.field private mIsSDNSIM:Z

.field public mIsSendToVoiceMail:Z

.field public mIsVIP:Z

.field protected mIsWritable:Z

.field mObserver:Landroid/database/ContentObserver;

.field private mPrimaryPhoneNumber:Ljava/lang/String;

.field public mRingtonePath:Ljava/lang/String;

.field public mSingleIsRestricted:Z

.field public mStatusUpdateId:J

.field protected mWorkingHandler:Landroid/os/Handler;

.field private mmapRawContactId_DisplayName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public personNotFound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    const-string v0, "HtcContactInfo"

    sput-object v0, Lcom/android/htccontacts/HtcContactInfo;->TAG:Ljava/lang/String;

    .line 79
    sput-object v1, Lcom/android/htccontacts/HtcContactInfo;->sLooper:Landroid/os/Looper;

    .line 80
    sput-object v1, Lcom/android/htccontacts/HtcContactInfo;->mWorkingThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, p1}, Lcom/android/htccontacts/HtcContactInfoBase;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean v0, p0, Lcom/android/htccontacts/HtcContactInfo;->personNotFound:Z

    .line 75
    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfo;->mPrimaryPhoneNumber:Ljava/lang/String;

    .line 77
    iput-boolean v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mSingleIsRestricted:Z

    .line 81
    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    .line 82
    iput-boolean v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mIsFavorite:Z

    .line 162
    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfo;->mEntities:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mImDatas:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mmapRawContactId_DisplayName:Ljava/util/HashMap;

    .line 965
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/HtcContactInfo;->logTime:J

    .line 966
    iput-wide v2, p0, Lcom/android/htccontacts/HtcContactInfo;->logTimeDiff:J

    .line 967
    iput-wide v2, p0, Lcom/android/htccontacts/HtcContactInfo;->logTimeNow:J

    .line 230
    new-instance v0, Lcom/android/htccontacts/HtcContactInfo$ContactsContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/android/htccontacts/HtcContactInfo$ContactsContentObserver;-><init>(Landroid/os/Handler;Lcom/android/htccontacts/HtcContactInfo;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mObserver:Landroid/database/ContentObserver;

    .line 232
    sget-object v0, Lcom/android/htccontacts/HtcContactInfo;->sLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HtcContactInfo"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingThread:Landroid/os/HandlerThread;

    .line 235
    sget-object v0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 236
    sget-object v0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/HtcContactInfo;->sLooper:Landroid/os/Looper;

    .line 239
    :cond_0
    new-instance v0, Lcom/android/htccontacts/HtcContactInfo$WorkingHandler;

    sget-object v1, Lcom/android/htccontacts/HtcContactInfo;->sLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p0}, Lcom/android/htccontacts/HtcContactInfo$WorkingHandler;-><init>(Landroid/os/Looper;Lcom/android/htccontacts/HtcContactInfo;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    .line 240
    new-instance v0, Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mCloseCursorHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 4
    .parameter "Uri"
    .parameter "context"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/HtcContactInfoBase;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    .line 73
    iput-boolean v0, p0, Lcom/android/htccontacts/HtcContactInfo;->personNotFound:Z

    .line 75
    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfo;->mPrimaryPhoneNumber:Ljava/lang/String;

    .line 77
    iput-boolean v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mSingleIsRestricted:Z

    .line 81
    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    .line 82
    iput-boolean v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mIsFavorite:Z

    .line 162
    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfo;->mEntities:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mImDatas:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mmapRawContactId_DisplayName:Ljava/util/HashMap;

    .line 965
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/HtcContactInfo;->logTime:J

    .line 966
    iput-wide v2, p0, Lcom/android/htccontacts/HtcContactInfo;->logTimeDiff:J

    .line 967
    iput-wide v2, p0, Lcom/android/htccontacts/HtcContactInfo;->logTimeNow:J

    .line 263
    new-instance v0, Lcom/android/htccontacts/HtcContactInfo$ContactsContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/android/htccontacts/HtcContactInfo$ContactsContentObserver;-><init>(Landroid/os/Handler;Lcom/android/htccontacts/HtcContactInfo;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mObserver:Landroid/database/ContentObserver;

    .line 265
    sget-object v0, Lcom/android/htccontacts/HtcContactInfo;->sLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HtcContactInfo"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingThread:Landroid/os/HandlerThread;

    .line 268
    sget-object v0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 269
    sget-object v0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/HtcContactInfo;->sLooper:Landroid/os/Looper;

    .line 272
    :cond_0
    new-instance v0, Lcom/android/htccontacts/HtcContactInfo$WorkingHandler;

    sget-object v1, Lcom/android/htccontacts/HtcContactInfo;->sLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p0}, Lcom/android/htccontacts/HtcContactInfo$WorkingHandler;-><init>(Landroid/os/Looper;Lcom/android/htccontacts/HtcContactInfo;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    .line 274
    new-instance v0, Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mCloseCursorHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    .line 275
    return-void
.end method

.method private DeDuplicateEmails(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, Emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    const/4 v0, 0x0

    .line 557
    .local v0, candidate1:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    const/4 v1, 0x0

    .line 558
    .local v1, candidate2:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    const/4 v2, 0x0

    .local v2, index1:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 559
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #candidate1:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    check-cast v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 560
    .restart local v0       #candidate1:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    add-int/lit8 v3, v2, 0x1

    .local v3, index2:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 561
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #candidate2:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    check-cast v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 562
    .restart local v1       #candidate2:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v4, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 563
    iget-boolean v4, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mIsPrimary:Z

    if-eqz v4, :cond_1

    .line 564
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 565
    add-int/lit8 v3, v3, -0x1

    .line 560
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 567
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 568
    add-int/lit8 v2, v2, -0x1

    .line 558
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 574
    .end local v3           #index2:I
    :cond_3
    return-void
.end method

.method private DeDuplicateNumbers(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p1, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;>;"
    const/4 v0, 0x0

    .line 618
    .local v0, candidate1:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    const/4 v1, 0x0

    .line 619
    .local v1, candidate2:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    const/4 v2, 0x0

    .local v2, index1:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 620
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #candidate1:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    check-cast v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 621
    .restart local v0       #candidate1:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    add-int/lit8 v3, v2, 0x1

    .local v3, index2:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 622
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #candidate2:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    check-cast v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 623
    .restart local v1       #candidate2:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v4, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 624
    iget-boolean v4, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mIsPrimary:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mIsPrimary:Z

    if-nez v4, :cond_1

    :cond_0
    iget-boolean v4, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mIsPrimary:Z

    if-nez v4, :cond_5

    iget-boolean v4, v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mIsPrimary:Z

    if-nez v4, :cond_5

    .line 626
    :cond_1
    iget-object v4, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 627
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 628
    add-int/lit8 v2, v2, -0x1

    .line 619
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 631
    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 632
    add-int/lit8 v3, v3, -0x1

    .line 621
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 635
    :cond_5
    iget-boolean v4, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mIsPrimary:Z

    if-eqz v4, :cond_6

    .line 636
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 637
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 639
    :cond_6
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 640
    add-int/lit8 v2, v2, -0x1

    .line 641
    goto :goto_2

    .line 647
    .end local v3           #index2:I
    :cond_7
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/HtcContactInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mIsLoad:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/htccontacts/HtcContactInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/htccontacts/HtcContactInfo;->mIsLoad:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/HtcContactInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mIsRegistered:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/htccontacts/HtcContactInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/htccontacts/HtcContactInfo;->mIsRegistered:Z

    return p1
.end method

.method private dLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 424
    sget-object v0, Lcom/android/htccontacts/HtcContactInfo;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void
.end method

.method private get360ContactTypeLable(Landroid/content/Context;Landroid/content/Entity;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "entity"

    .prologue
    const/4 v5, 0x0

    .line 799
    if-nez p2, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-object v5

    .line 802
    :cond_1
    invoke-virtual {p2}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Entity$NamedContentValues;

    .line 803
    .local v4, subValue:Landroid/content/Entity$NamedContentValues;
    iget-object v0, v4, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 804
    .local v0, entryValues:Landroid/content/ContentValues;
    const-string v6, "mimetype"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 805
    .local v2, mimetype:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 807
    const-string v6, "vnd.android.cursor.item/vnd.people.sources"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 808
    const-string v5, "data1"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 809
    .local v3, sourceName:Ljava/lang/String;
    sget-object v5, Lcom/android/htccontacts/HtcContactInfo;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HtcContactInfo.get360ContactTypeLable() ==> networkSrcName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    if-eqz v3, :cond_3

    .line 812
    invoke-static {v3, p1}, Lcom/android/htccontacts/util/Vodafone360Util;->getSrcDisplayName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 814
    :cond_3
    const v5, 0x7f0a0100

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getContactType(Ljava/lang/String;)I
    .locals 1
    .parameter "accountType"

    .prologue
    .line 661
    const-string v0, "com.google"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    const/4 v0, 0x2

    .line 682
    :goto_0
    return v0

    .line 663
    :cond_0
    const-string v0, "com.htc.android.mail.eas"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    const/4 v0, 0x3

    goto :goto_0

    .line 665
    :cond_1
    const-string v0, "com.htc.socialnetwork.facebook"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.facebook.auth.login"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 666
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 667
    :cond_3
    const-string v0, "com.htc.socialnetwork.flickr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 668
    const/16 v0, 0x9

    goto :goto_0

    .line 669
    :cond_4
    const-string v0, "com.htc.android.pcsc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 670
    const/4 v0, 0x5

    goto :goto_0

    .line 671
    :cond_5
    const-string v0, "com.anddroid.contacts.sim"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 672
    const/4 v0, 0x1

    goto :goto_0

    .line 673
    :cond_6
    const-string v0, "com.htc.android.myphonebook"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 674
    const/16 v0, 0xa

    goto :goto_0

    .line 675
    :cond_7
    const-string v0, "com.htc.socialnetwork.plurk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 676
    const/16 v0, 0xb

    goto :goto_0

    .line 677
    :cond_8
    const-string v0, "com.htc.htctwitter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.twitter.android.auth.login"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 678
    :cond_9
    const/16 v0, 0xc

    goto :goto_0

    .line 679
    :cond_a
    const-string v0, "com.skype.contacts.sync"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 680
    const/16 v0, 0xd

    goto :goto_0

    .line 682
    :cond_b
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getContactTypeLabel(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "contactTypeId"
    .parameter "accountType"
    .parameter "lookupKey"

    .prologue
    .line 686
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/htccontacts/HtcContactInfo;->getContactTypeLabel(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContactTypeLabel(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "contactTypeId"
    .parameter "accountType"
    .parameter "dataSet"
    .parameter "lookupKey"

    .prologue
    .line 690
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, -0x1

    const/16 v5, 0x2e

    invoke-virtual {p4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 691
    const v4, 0x7f0a00f7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 748
    :cond_0
    :goto_0
    return-object v1

    .line 693
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 730
    :pswitch_0
    const-string v1, ""

    .line 732
    .local v1, label:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 733
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 734
    const/16 v4, 0x80

    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 742
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v3

    .line 743
    .local v3, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v3, p0, p2, p3}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 745
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 746
    const v4, 0x7f0a00f6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 695
    .end local v1           #label:Ljava/lang/String;
    .end local v3           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :pswitch_1
    const v4, 0x7f0a00fd

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 712
    :pswitch_2
    const v4, 0x7f0a00fe

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 714
    :pswitch_3
    const v4, 0x7f0a0029

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 716
    :pswitch_4
    const v4, 0x7f0a0027

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 718
    :pswitch_5
    const v4, 0x7f0a00f8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 720
    :pswitch_6
    const v4, 0x7f0a00f9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 722
    :pswitch_7
    const v4, 0x7f0a00ff

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 724
    :pswitch_8
    const v4, 0x7f0a00fc

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 726
    :pswitch_9
    const v4, 0x7f0a00fa

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 728
    :pswitch_a
    const v4, 0x7f0a00fb

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 737
    .restart local v1       #label:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 738
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "test"

    const-string v5, "failed to get label"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 693
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static getContactTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "accountType"
    .parameter "lookupKey"

    .prologue
    .line 753
    invoke-static {p1}, Lcom/android/htccontacts/HtcContactInfo;->getContactType(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Lcom/android/htccontacts/HtcContactInfo;->getContactTypeLabel(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private queryImData()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 1331
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mImDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1332
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "presence_raw_contact_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "presence_data_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "im_account"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "im_handle"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "custom_protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "mode"

    aput-object v1, v2, v0

    .line 1341
    .local v2, CPROJECTION_WITH_PRESENCE:[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1342
    .local v13, sbWhere:Ljava/lang/StringBuilder;
    const-string v0, "presence_raw_contact_id"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    const-string v0, " IN "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    const-string v0, " ( "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfo;->getRawContactIdsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    const-string v0, " ) "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$StatusUpdates;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1350
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 1351
    .local v11, count:I
    if-eqz v12, :cond_2

    .line 1353
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1354
    const-string v0, "presence_raw_contact_id"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1355
    .local v4, rawcontactId:I
    const-string v0, "presence_data_id"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1356
    .local v5, dataId:I
    const-string v0, "im_account"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1357
    .local v6, imAccount:Ljava/lang/String;
    const-string v0, "im_handle"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1358
    .local v7, imHandle:Ljava/lang/String;
    const-string v0, "protocol"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1359
    .local v8, protocol:I
    const-string v0, "custom_protocol"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1360
    .local v9, customProtocol:Ljava/lang/String;
    const-string v0, "mode"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1362
    .local v10, presence:I
    if-lez v4, :cond_0

    .line 1371
    new-instance v3, Lcom/android/htccontacts/util/ImData;

    invoke-direct/range {v3 .. v10}, Lcom/android/htccontacts/util/ImData;-><init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 1372
    .local v3, imData:Lcom/android/htccontacts/util/ImData;
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mImDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1374
    .end local v3           #imData:Lcom/android/htccontacts/util/ImData;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    .line 1375
    goto :goto_0

    .line 1378
    .end local v4           #rawcontactId:I
    .end local v5           #dataId:I
    .end local v6           #imAccount:Ljava/lang/String;
    .end local v7           #imHandle:Ljava/lang/String;
    .end local v8           #protocol:I
    .end local v9           #customProtocol:Ljava/lang/String;
    .end local v10           #presence:I
    :catchall_0
    move-exception v0

    if-eqz v12, :cond_1

    .line 1379
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1380
    const/4 v12, 0x0

    .line 1378
    :cond_1
    throw v0

    :cond_2
    if-eqz v12, :cond_3

    .line 1379
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1380
    const/4 v12, 0x0

    .line 1383
    :cond_3
    return-void
.end method

.method private queryImDataRawContactDisplayName()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    .line 1387
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mmapRawContactId_DisplayName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1388
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1389
    .local v14, sbWhere:Ljava/lang/StringBuilder;
    const-string v0, "_id"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    const-string v0, " IN "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    const-string v0, " ( "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfo;->getRawContactIdsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    const-string v0, " ) "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "display_name"

    aput-object v5, v2, v3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1397
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1399
    if-eqz v6, :cond_1

    .line 1400
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1401
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v12, v0

    .line 1402
    .local v12, rawcontactId:J
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1405
    .local v7, displayName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mmapRawContactId_DisplayName:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1418
    .end local v7           #displayName:Ljava/lang/String;
    .end local v12           #rawcontactId:J
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 1419
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1420
    const/4 v6, 0x0

    .line 1418
    :cond_0
    throw v0

    .line 1409
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mImDatas:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mmapRawContactId_DisplayName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1410
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mImDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htccontacts/util/ImData;

    .line 1411
    .local v9, imData:Lcom/android/htccontacts/util/ImData;
    invoke-virtual {v9}, Lcom/android/htccontacts/util/ImData;->getRawcontactId()I

    move-result v0

    int-to-long v10, v0

    .line 1412
    .local v10, lId:J
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mmapRawContactId_DisplayName:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1413
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mmapRawContactId_DisplayName:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/android/htccontacts/util/ImData;->setDiaplsyName(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1418
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #imData:Lcom/android/htccontacts/util/ImData;
    .end local v10           #lId:J
    :cond_3
    if-eqz v6, :cond_4

    .line 1419
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1420
    const/4 v6, 0x0

    .line 1423
    :cond_4
    return-void
.end method

.method private updateContactType()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 757
    iget-object v4, p0, Lcom/android/htccontacts/HtcContactInfo;->mEntities:Ljava/util/ArrayList;

    .line 758
    .local v4, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_2

    .line 759
    :cond_0
    iput v7, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    .line 760
    iget-object v6, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    const v7, 0x7f0a00f6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactTypeLabel:Ljava/lang/String;

    .line 787
    :cond_1
    :goto_0
    return-void

    .line 761
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v8, v6, :cond_3

    .line 762
    const/4 v6, 0x7

    iput v6, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    .line 763
    iget-object v6, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    const v7, 0x7f0a00f7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactTypeLabel:Ljava/lang/String;

    goto :goto_0

    .line 765
    :cond_3
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Entity;

    .line 766
    .local v5, entity:Landroid/content/Entity;
    invoke-virtual {v5}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 767
    .local v3, entValues:Landroid/content/ContentValues;
    const-string v6, "account_type"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 768
    .local v1, accountType:Ljava/lang/String;
    const-string v6, "data_set"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 769
    .local v2, dataSet:Ljava/lang/String;
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    .line 770
    const-string v6, "DeviceOnly"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 771
    const/16 v6, 0x3e7

    iput v6, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    .line 772
    const-string v6, ""

    iput-object v6, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactTypeLabel:Ljava/lang/String;

    .line 778
    :goto_1
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 779
    iget v6, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    if-ne v6, v8, :cond_1

    .line 780
    const-string v6, "account_name"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, accountName:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v6, "SIM_SDN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 782
    iput-boolean v8, p0, Lcom/android/htccontacts/HtcContactInfo;->mIsSDNSIM:Z

    goto :goto_0

    .line 775
    .end local v0           #accountName:Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Lcom/android/htccontacts/HtcContactInfo;->getContactType(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    .line 776
    iget-object v6, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactType:I

    invoke-static {v6, v7, v1, v2}, Lcom/android/htccontacts/HtcContactInfo;->getContactTypeLabel(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactTypeLabel:Ljava/lang/String;

    goto :goto_1
.end method

.method private declared-synchronized updateNumbers()V
    .locals 21

    .prologue
    .line 576
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_0

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 580
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/HtcContactInfo;->mEntities:Ljava/util/ArrayList;

    .line 581
    .local v6, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    if-gtz v19, :cond_2

    .line 614
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 582
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Entity;

    .line 583
    .local v7, entity:Landroid/content/Entity;
    invoke-virtual {v7}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    .line 584
    .local v5, entValues:Landroid/content/ContentValues;
    const-string v19, "account_type"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 585
    .local v2, accountType:Ljava/lang/String;
    const-string v19, "_id"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 586
    .local v14, rawContactId:J
    const-string v19, "data_set"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 587
    .local v3, dataSet:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Entity$NamedContentValues;

    .line 589
    .local v18, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v18

    iget-object v9, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 590
    .local v9, entryValues:Landroid/content/ContentValues;
    const-string v19, "raw_contact_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 592
    const-string v19, "mimetype"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 593
    .local v13, mimetype:Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 595
    const-string v19, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v17

    .line 597
    .local v17, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v13}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v4

    .line 599
    .local v4, datakind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v4, :cond_4

    .line 601
    const-string v19, "is_super_primary"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-eqz v19, :cond_5

    const/4 v12, 0x1

    .line 603
    .local v12, isSuperPrimary:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v4, v9}, Lcom/android/htccontacts/util/ContactsUtils;->buildDataString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v16

    .line 604
    .local v16, sData:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 605
    new-instance v8, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    invoke-direct {v8}, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;-><init>()V

    .line 606
    .local v8, entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    .line 607
    iput-boolean v12, v8, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mIsPrimary:Z

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 576
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #dataSet:Ljava/lang/String;
    .end local v4           #datakind:Lcom/android/htccontacts/model/DataKind;
    .end local v5           #entValues:Landroid/content/ContentValues;
    .end local v6           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v7           #entity:Landroid/content/Entity;
    .end local v8           #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v9           #entryValues:Landroid/content/ContentValues;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #isSuperPrimary:Z
    .end local v13           #mimetype:Ljava/lang/String;
    .end local v14           #rawContactId:J
    .end local v16           #sData:Ljava/lang/String;
    .end local v17           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v18           #subValue:Landroid/content/Entity$NamedContentValues;
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 601
    .restart local v2       #accountType:Ljava/lang/String;
    .restart local v3       #dataSet:Ljava/lang/String;
    .restart local v4       #datakind:Lcom/android/htccontacts/model/DataKind;
    .restart local v5       #entValues:Landroid/content/ContentValues;
    .restart local v6       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v7       #entity:Landroid/content/Entity;
    .restart local v9       #entryValues:Landroid/content/ContentValues;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v13       #mimetype:Ljava/lang/String;
    .restart local v14       #rawContactId:J
    .restart local v17       #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .restart local v18       #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 613
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #dataSet:Ljava/lang/String;
    .end local v4           #datakind:Lcom/android/htccontacts/model/DataKind;
    .end local v5           #entValues:Landroid/content/ContentValues;
    .end local v7           #entity:Landroid/content/Entity;
    .end local v9           #entryValues:Landroid/content/ContentValues;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #mimetype:Ljava/lang/String;
    .end local v14           #rawContactId:J
    .end local v17           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v18           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/htccontacts/HtcContactInfo;->DeDuplicateNumbers(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private updateVodafoneContactType(Landroid/content/Entity;)V
    .locals 3
    .parameter "entity"

    .prologue
    .line 790
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/android/htccontacts/HtcContactInfo;->get360ContactTypeLable(Landroid/content/Context;Landroid/content/Entity;)Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 792
    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactTypeLabel:Ljava/lang/String;

    .line 796
    :goto_0
    return-void

    .line 794
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0100

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactTypeLabel:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized buildAllInfo()V
    .locals 3

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 285
    sget-object v0, Lcom/android/htccontacts/HtcContactInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildAllInfo before getLookupUri mContactUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    .line 287
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    .line 289
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mUriContact:Landroid/net/Uri;

    .line 291
    :cond_0
    sget-object v0, Lcom/android/htccontacts/HtcContactInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildAllInfo after getLookupUri mContactUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcContactInfo;->personNotFound:Z

    .line 295
    const-string v0, "CONTACT_INFO_COMPLETED"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/htccontacts/HtcContactInfo;->notifyChanges(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :goto_0
    monitor-exit p0

    return-void

    .line 299
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfo;->buildContactInfo()V

    .line 301
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfo;->buildRawContactInfo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected buildContactInfo()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 437
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactUri:Landroid/net/Uri;

    .line 438
    .local v1, lookupUri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 492
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/htccontacts/util/ContactsUtils;->queryContactInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v0

    .line 470
    .local v0, b:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 471
    const-string v2, "display_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->sDisplayName:Ljava/lang/String;

    .line 472
    const-string v2, "starred"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/htccontacts/HtcContactInfo;->mIsFavorite:Z

    .line 473
    const-string v2, "photo_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mThumbnailId:J

    .line 474
    const-string v2, "custom_ringtone"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/HtcContactInfo;->mRingtonePath:Ljava/lang/String;

    .line 475
    const-string v2, "send_to_voicemail"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/htccontacts/HtcContactInfo;->mIsSendToVoiceMail:Z

    .line 476
    const-string v2, "vip"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/htccontacts/HtcContactInfo;->mIsVIP:Z

    .line 477
    const-string v2, "default_action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mDefaultAction:Ljava/lang/String;

    .line 478
    const-string v2, "status_update_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/htccontacts/HtcContactInfo;->mStatusUpdateId:J

    .line 479
    const-string v2, "contact_presence"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mPresence:I

    .line 480
    const-string v2, "contact_chat_capability"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mChatCapability:I

    .line 482
    :cond_1
    iget-wide v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mThumbnailId:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    .line 483
    iget-wide v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mThumbnailId:J

    invoke-static {v2, v3, v5}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->bmRawPhoto:Landroid/graphics/Bitmap;

    .line 491
    :cond_2
    :goto_1
    const-string v2, "CONTACT_INFO_COMPLETED"

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/htccontacts/HtcContactInfo;->notifyChanges(Ljava/lang/String;J)V

    goto :goto_0

    .line 486
    :cond_3
    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->bmRawPhoto:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 487
    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->bmRawPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 488
    iput-object v5, p0, Lcom/android/htccontacts/HtcContactInfoBase;->bmRawPhoto:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method protected buildRawContactInfo()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    .line 970
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfo;->closeCursor()V

    .line 981
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mUriContact:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 982
    sget-object v0, Lcom/android/htccontacts/HtcContactInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid contact uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mUriContact:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mUriContact:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactId:J

    .line 1004
    const/4 v7, 0x0

    .line 1005
    .local v7, iterator:Landroid/content/EntityIterator;
    const/4 v6, 0x0

    .line 1008
    .local v6, entityCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1009
    if-eqz v6, :cond_2

    .line 1010
    invoke-static {v6}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v7

    .line 1013
    :cond_2
    invoke-static {v7}, Lcom/android/htccontacts/util/ContactsUtils;->readEntities(Landroid/content/EntityIterator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mEntities:Ljava/util/ArrayList;

    .line 1015
    if-eqz v7, :cond_3

    .line 1016
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 1017
    const/4 v7, 0x0

    .line 1020
    :cond_3
    if-eqz v6, :cond_5

    .line 1021
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1022
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_4
    const/4 v6, 0x0

    .line 1028
    :cond_5
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfo;->updateNecessaryData()V

    .line 1031
    invoke-direct {p0}, Lcom/android/htccontacts/HtcContactInfo;->updateContactType()V

    .line 1035
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfo;->updateIsRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mSingleIsRestricted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    if-eqz v7, :cond_6

    .line 1039
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 1040
    const/4 v7, 0x0

    .line 1043
    :cond_6
    if-eqz v6, :cond_8

    .line 1044
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1045
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1047
    :cond_7
    const/4 v6, 0x0

    .line 1051
    :cond_8
    invoke-direct {p0}, Lcom/android/htccontacts/HtcContactInfo;->queryImData()V

    .line 1052
    invoke-direct {p0}, Lcom/android/htccontacts/HtcContactInfo;->queryImDataRawContactDisplayName()V

    .line 1054
    const-string v0, "ENTITY_QUERY_COMPLETED"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/htccontacts/HtcContactInfo;->notifyChanges(Ljava/lang/String;J)V

    .line 1056
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1059
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1038
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

    .line 1039
    invoke-interface {v7}, Landroid/content/EntityIterator;->close()V

    .line 1040
    const/4 v7, 0x0

    .line 1043
    :cond_9
    if-eqz v6, :cond_b

    .line 1044
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1045
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1047
    :cond_a
    const/4 v6, 0x0

    .line 1038
    :cond_b
    throw v0
.end method

.method buildSuggestInfo()V
    .locals 3

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactId:J

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->querySuggestCount(Landroid/content/Context;J)I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mSuggestCount:I

    .line 1318
    const-string v0, "SUGGESTION_COMPLETED"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/htccontacts/HtcContactInfo;->notifyChanges(Ljava/lang/String;J)V

    .line 1319
    return-void
.end method

.method public closeAllCursors()V
    .locals 0

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfo;->closeCursor()V

    .line 309
    return-void
.end method

.method protected declared-synchronized closeCursor()V
    .locals 0

    .prologue
    .line 507
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 341
    invoke-super {p0}, Lcom/android/htccontacts/HtcContactInfoBase;->destroy()V

    .line 343
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfo;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 350
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 353
    :cond_1
    return-void
.end method

.method public forceContactChange(Landroid/net/Uri;)V
    .locals 3
    .parameter "uriNew"

    .prologue
    .line 861
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 863
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 864
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 865
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfo;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 867
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public getDefaultPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mPrimaryPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mPrimaryPhoneNumber:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfo;->getNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEntities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mEntities:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImDatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/ImData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mImDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    .line 248
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThumbnailId()J
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mThumbnailId:J

    return-wide v0
.end method

.method public getmapRawContactId_DisplayName()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mmapRawContactId_DisplayName:Ljava/util/HashMap;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcContactInfo;->isWritable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSDNSIM()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mIsSDNSIM:Z

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mIsWritable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/HtcContactInfo;->mIsSDNSIM:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 429
    return-void
.end method

.method public onQueryEntitiesComplete(ILjava/lang/Object;Landroid/content/EntityIterator;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "iterator"

    .prologue
    .line 434
    return-void
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/htccontacts/HtcContactInfo;->mPrimaryPhoneNumber:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setThumbnailId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 224
    iput-wide p1, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mThumbnailId:J

    .line 225
    return-void
.end method

.method protected declared-synchronized updateEmails()V
    .locals 21

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_0

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 515
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/HtcContactInfo;->mEntities:Ljava/util/ArrayList;

    .line 516
    .local v6, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    if-gtz v19, :cond_2

    .line 554
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 517
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Entity;

    .line 518
    .local v7, entity:Landroid/content/Entity;
    invoke-virtual {v7}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    .line 519
    .local v5, entValues:Landroid/content/ContentValues;
    const-string v19, "account_type"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, accountType:Ljava/lang/String;
    const-string v19, "_id"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 521
    .local v14, rawContactId:J
    const-string v19, "data_set"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, dataSet:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/Entity$NamedContentValues;

    .line 524
    .local v18, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v18

    iget-object v9, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 525
    .local v9, entryValues:Landroid/content/ContentValues;
    const-string v19, "raw_contact_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 527
    const-string v19, "mimetype"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 528
    .local v13, mimetype:Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v17

    .line 531
    .local v17, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v13}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v4

    .line 533
    .local v4, datakind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v4, :cond_4

    .line 535
    const-string v19, "is_super_primary"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-eqz v19, :cond_5

    const/4 v12, 0x1

    .line 536
    .local v12, isSuperPrimary:Z
    :goto_2
    const-string v19, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v4, v9}, Lcom/android/htccontacts/util/ContactsUtils;->buildDataString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v16

    .line 540
    .local v16, sData:Ljava/lang/String;
    new-instance v8, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    invoke-direct {v8}, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;-><init>()V

    .line 543
    .local v8, entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    .line 546
    iput-boolean v12, v8, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mIsPrimary:Z

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 511
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #dataSet:Ljava/lang/String;
    .end local v4           #datakind:Lcom/android/htccontacts/model/DataKind;
    .end local v5           #entValues:Landroid/content/ContentValues;
    .end local v6           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v7           #entity:Landroid/content/Entity;
    .end local v8           #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v9           #entryValues:Landroid/content/ContentValues;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #isSuperPrimary:Z
    .end local v13           #mimetype:Ljava/lang/String;
    .end local v14           #rawContactId:J
    .end local v16           #sData:Ljava/lang/String;
    .end local v17           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v18           #subValue:Landroid/content/Entity$NamedContentValues;
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 535
    .restart local v2       #accountType:Ljava/lang/String;
    .restart local v3       #dataSet:Ljava/lang/String;
    .restart local v4       #datakind:Lcom/android/htccontacts/model/DataKind;
    .restart local v5       #entValues:Landroid/content/ContentValues;
    .restart local v6       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v7       #entity:Landroid/content/Entity;
    .restart local v9       #entryValues:Landroid/content/ContentValues;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v13       #mimetype:Ljava/lang/String;
    .restart local v14       #rawContactId:J
    .restart local v17       #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .restart local v18       #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 553
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #dataSet:Ljava/lang/String;
    .end local v4           #datakind:Lcom/android/htccontacts/model/DataKind;
    .end local v5           #entValues:Landroid/content/ContentValues;
    .end local v7           #entity:Landroid/content/Entity;
    .end local v9           #entryValues:Landroid/content/ContentValues;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #mimetype:Ljava/lang/String;
    .end local v14           #rawContactId:J
    .end local v17           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v18           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/htccontacts/HtcContactInfo;->DeDuplicateEmails(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected updateGroupIdTitle()V
    .locals 29

    .prologue
    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mGroupIdTitle:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 904
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/htccontacts/HtcContactInfo;->mEntities:Ljava/util/ArrayList;

    .line 905
    .local v12, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 907
    .local v26, sbGroupIds:Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Entity;

    .line 908
    .local v13, entity:Landroid/content/Entity;
    invoke-virtual {v13}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v11

    .line 909
    .local v11, entValues:Landroid/content/ContentValues;
    invoke-virtual {v13}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Entity$NamedContentValues;

    .line 910
    .local v28, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v28

    iget-object v14, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 911
    .local v14, entryValues:Landroid/content/ContentValues;
    const-string v2, "account_type"

    invoke-virtual {v11, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 912
    .local v8, accountType:Ljava/lang/String;
    const-string v2, "_id"

    invoke-virtual {v11, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 913
    .local v19, rawContactId:J
    const-string v2, "data_set"

    invoke-virtual {v11, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 914
    .local v10, dataSet:Ljava/lang/String;
    const-string v2, "raw_contact_id"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 916
    const-string v2, "mimetype"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 917
    .local v18, mimetype:Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v27

    .line 920
    .local v27, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v10, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v17

    .line 922
    .local v17, kind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v17, :cond_3

    .line 924
    const-string v2, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-static {v2, v0, v14}, Lcom/android/htccontacts/util/ContactsUtils;->buildDataString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v21

    .line 926
    .local v21, sData:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 927
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    const/16 v2, 0x2c

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 933
    .end local v8           #accountType:Ljava/lang/String;
    .end local v10           #dataSet:Ljava/lang/String;
    .end local v11           #entValues:Landroid/content/ContentValues;
    .end local v13           #entity:Landroid/content/Entity;
    .end local v14           #entryValues:Landroid/content/ContentValues;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v18           #mimetype:Ljava/lang/String;
    .end local v19           #rawContactId:J
    .end local v21           #sData:Ljava/lang/String;
    .end local v27           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v28           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_4
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 934
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/htccontacts/HtcContactInfo$GroupsQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id IN ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 940
    .local v9, cursorGroups:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 941
    :cond_5
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 942
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 943
    .local v23, sGroupsId:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 944
    .local v25, sGroupsTitle:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 945
    .local v24, sGroupsIsReadONly:I
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v2, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 949
    .local v22, sDisplayGroupsTitle:Ljava/lang/String;
    const-string v2, "My Contacts"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 954
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mGroupIdTitle:Ljava/util/HashMap;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 959
    .end local v22           #sDisplayGroupsTitle:Ljava/lang/String;
    .end local v23           #sGroupsId:Ljava/lang/String;
    .end local v24           #sGroupsIsReadONly:I
    .end local v25           #sGroupsTitle:Ljava/lang/String;
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method protected updateIsRestricted()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 1275
    const-string v0, "content://com.android.contacts/contacts/simple/list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1276
    .local v6, baseUri:Landroid/net/Uri;
    iget-wide v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mContactId:J

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1278
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mResolver:Landroid/content/ContentResolver;

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "single_is_restricted"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1282
    .local v7, cursor:Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 1283
    .local v8, result:J
    if-eqz v7, :cond_0

    .line 1284
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 1288
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1292
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-lez v0, :cond_1

    move v0, v10

    :goto_0
    return v0

    .line 1288
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move v0, v11

    .line 1292
    goto :goto_0
.end method

.method declared-synchronized updateNecessaryData()V
    .locals 38

    .prologue
    .line 1081
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1086
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    .local v36, tmpRawContactAccountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1094
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1099
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mGroupIdTitle:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1100
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 1106
    .local v33, sbGroupIds:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/HtcContactInfo;->mEntities:Ljava/util/ArrayList;

    .line 1107
    .local v15, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_3

    .line 1269
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 1109
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v34

    .line 1111
    .local v34, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Entity;

    .line 1112
    .local v16, entity:Landroid/content/Entity;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v14

    .line 1113
    .local v14, entValues:Landroid/content/ContentValues;
    const-string v2, "_id"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 1114
    .local v24, rawContactId:J
    const-string v2, "account_type"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1115
    .local v9, accountType:Ljava/lang/String;
    const-string v2, "data_set"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1118
    .local v11, dataSet:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    :cond_5
    const-string v2, "account_type"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1125
    .local v31, sRawContactAccountType:Ljava/lang/String;
    const-string v2, "data_set"

    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1126
    .local v32, sRawContactDataSet:Ljava/lang/String;
    invoke-static/range {v31 .. v32}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v37

    .line 1127
    .local v37, typeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1128
    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/Entity$NamedContentValues;

    .line 1134
    .local v35, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 1135
    .local v18, entryValues:Landroid/content/ContentValues;
    const-string v2, "raw_contact_id"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1137
    const-string v2, "mimetype"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1138
    .local v23, mimetype:Ljava/lang/String;
    if-eqz v23, :cond_7

    .line 1141
    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v9, v11, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v12

    .line 1143
    .local v12, datakind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v12, :cond_7

    .line 1145
    const-string v2, "is_super_primary"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_9

    const/16 v21, 0x1

    .line 1146
    .local v21, isSuperPrimary:Z
    :goto_2
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v2, v12, v0}, Lcom/android/htccontacts/util/ContactsUtils;->buildDataString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v26

    .line 1150
    .local v26, sData:Ljava/lang/String;
    new-instance v17, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;-><init>()V

    .line 1153
    .local v17, entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    .line 1156
    move/from16 v0, v21

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mIsPrimary:Z

    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    .end local v17           #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v26           #sData:Ljava/lang/String;
    :cond_8
    iget-boolean v2, v12, Lcom/android/htccontacts/model/DataKind;->actionBodySocial:Z

    if-eqz v2, :cond_7

    .line 1162
    iget-object v2, v12, Lcom/android/htccontacts/model/DataKind;->resPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1163
    move-object/from16 v0, v34

    invoke-virtual {v0, v9, v11}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v2

    iget-object v3, v12, Lcom/android/htccontacts/model/DataKind;->resPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/htccontacts/HtcContactInfo;->cachePackageIconDrawable(Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1081
    .end local v9           #accountType:Ljava/lang/String;
    .end local v11           #dataSet:Ljava/lang/String;
    .end local v12           #datakind:Lcom/android/htccontacts/model/DataKind;
    .end local v14           #entValues:Landroid/content/ContentValues;
    .end local v15           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v16           #entity:Landroid/content/Entity;
    .end local v18           #entryValues:Landroid/content/ContentValues;
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #isSuperPrimary:Z
    .end local v23           #mimetype:Ljava/lang/String;
    .end local v24           #rawContactId:J
    .end local v31           #sRawContactAccountType:Ljava/lang/String;
    .end local v32           #sRawContactDataSet:Ljava/lang/String;
    .end local v33           #sbGroupIds:Ljava/lang/StringBuilder;
    .end local v34           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v35           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v36           #tmpRawContactAccountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    .end local v37           #typeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1145
    .restart local v9       #accountType:Ljava/lang/String;
    .restart local v11       #dataSet:Ljava/lang/String;
    .restart local v12       #datakind:Lcom/android/htccontacts/model/DataKind;
    .restart local v14       #entValues:Landroid/content/ContentValues;
    .restart local v15       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v16       #entity:Landroid/content/Entity;
    .restart local v18       #entryValues:Landroid/content/ContentValues;
    .restart local v20       #i$:Ljava/util/Iterator;
    .restart local v23       #mimetype:Ljava/lang/String;
    .restart local v24       #rawContactId:J
    .restart local v31       #sRawContactAccountType:Ljava/lang/String;
    .restart local v32       #sRawContactDataSet:Ljava/lang/String;
    .restart local v33       #sbGroupIds:Ljava/lang/StringBuilder;
    .restart local v34       #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .restart local v35       #subValue:Landroid/content/Entity$NamedContentValues;
    .restart local v36       #tmpRawContactAccountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    .restart local v37       #typeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    :cond_9
    const/16 v21, 0x0

    goto :goto_2

    .line 1169
    .end local v12           #datakind:Lcom/android/htccontacts/model/DataKind;
    .end local v18           #entryValues:Landroid/content/ContentValues;
    .end local v23           #mimetype:Ljava/lang/String;
    .end local v35           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_a
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_b
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/Entity$NamedContentValues;

    .line 1171
    .restart local v35       #subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 1172
    .restart local v18       #entryValues:Landroid/content/ContentValues;
    const-string v2, "raw_contact_id"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1174
    const-string v2, "mimetype"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1175
    .restart local v23       #mimetype:Ljava/lang/String;
    if-eqz v23, :cond_b

    .line 1177
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1179
    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v9, v11, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v12

    .line 1182
    .restart local v12       #datakind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v12, :cond_b

    .line 1184
    const-string v2, "is_super_primary"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_c

    const/16 v21, 0x1

    .line 1186
    .restart local v21       #isSuperPrimary:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v2, v12, v0}, Lcom/android/htccontacts/util/ContactsUtils;->buildDataString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v26

    .line 1187
    .restart local v26       #sData:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1188
    new-instance v17, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;-><init>()V

    .line 1189
    .restart local v17       #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    .line 1190
    move/from16 v0, v21

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mIsPrimary:Z

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1184
    .end local v17           #entry:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    .end local v21           #isSuperPrimary:Z
    .end local v26           #sData:Ljava/lang/String;
    :cond_c
    const/16 v21, 0x0

    goto :goto_4

    .line 1198
    .end local v12           #datakind:Lcom/android/htccontacts/model/DataKind;
    .end local v18           #entryValues:Landroid/content/ContentValues;
    .end local v23           #mimetype:Ljava/lang/String;
    .end local v35           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_d
    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_e
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/Entity$NamedContentValues;

    .line 1199
    .restart local v35       #subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 1200
    .restart local v18       #entryValues:Landroid/content/ContentValues;
    const-string v2, "raw_contact_id"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1202
    const-string v2, "mimetype"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1203
    .restart local v23       #mimetype:Ljava/lang/String;
    if-eqz v23, :cond_e

    .line 1205
    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v9, v11, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v22

    .line 1207
    .local v22, kind:Lcom/android/htccontacts/model/DataKind;
    if-eqz v22, :cond_e

    .line 1209
    const-string v2, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-static {v2, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->buildDataString(Landroid/content/Context;Lcom/android/htccontacts/model/DataKind;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v26

    .line 1211
    .restart local v26       #sData:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1212
    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    const/16 v2, 0x2c

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1221
    .end local v9           #accountType:Ljava/lang/String;
    .end local v11           #dataSet:Ljava/lang/String;
    .end local v14           #entValues:Landroid/content/ContentValues;
    .end local v16           #entity:Landroid/content/Entity;
    .end local v18           #entryValues:Landroid/content/ContentValues;
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v22           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v23           #mimetype:Ljava/lang/String;
    .end local v24           #rawContactId:J
    .end local v26           #sData:Ljava/lang/String;
    .end local v31           #sRawContactAccountType:Ljava/lang/String;
    .end local v32           #sRawContactDataSet:Ljava/lang/String;
    .end local v35           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v37           #typeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    :cond_f
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1222
    :try_start_3
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactAccountTypes:Ljava/util/ArrayList;

    .line 1224
    const/4 v2, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v13

    .line 1226
    .local v13, editableAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_10
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 1227
    .local v8, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactAccountTypes:Ljava/util/ArrayList;

    iget-object v3, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1228
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/HtcContactInfo;->mIsWritable:Z

    .line 1232
    .end local v8           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    :cond_11
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1235
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mEmailList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/htccontacts/HtcContactInfo;->DeDuplicateEmails(Ljava/util/ArrayList;)V

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/htccontacts/HtcContactInfo;->DeDuplicateNumbers(Ljava/util/ArrayList;)V

    .line 1238
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1239
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/htccontacts/HtcContactInfo$GroupsQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id IN ( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1245
    .local v10, cursorGroups:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 1246
    :cond_12
    :goto_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1247
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1248
    .local v28, sGroupsId:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1249
    .local v30, sGroupsTitle:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1250
    .local v29, sGroupsIsReadONly:I
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-static {v2, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .line 1254
    .local v27, sDisplayGroupsTitle:Ljava/lang/String;
    const-string v2, "My Contacts"

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1259
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfoBase;->mGroupIdTitle:Ljava/util/HashMap;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 1232
    .end local v10           #cursorGroups:Landroid/database/Cursor;
    .end local v13           #editableAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v27           #sDisplayGroupsTitle:Ljava/lang/String;
    .end local v28           #sGroupsId:Ljava/lang/String;
    .end local v29           #sGroupsIsReadONly:I
    .end local v30           #sGroupsTitle:Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    .line 1264
    .restart local v10       #cursorGroups:Landroid/database/Cursor;
    .restart local v13       #editableAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    .restart local v19       #i$:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method protected declared-synchronized updateRawContactAccountTypes()V
    .locals 9

    .prologue
    .line 884
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v4, rawContactAccountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfo;->mEntities:Ljava/util/ArrayList;

    .line 888
    .local v1, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-gtz v8, :cond_1

    .line 900
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 889
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    .line 890
    .local v2, entity:Landroid/content/Entity;
    invoke-virtual {v2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 891
    .local v0, entValues:Landroid/content/ContentValues;
    const-string v8, "account_type"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 892
    .local v5, sRawContactAccountType:Ljava/lang/String;
    const-string v8, "data_set"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 893
    .local v6, sRawContactDataSet:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v7

    .line 895
    .local v7, typeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 896
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 884
    .end local v0           #entValues:Landroid/content/ContentValues;
    .end local v1           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v2           #entity:Landroid/content/Entity;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #rawContactAccountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    .end local v5           #sRawContactAccountType:Ljava/lang/String;
    .end local v6           #sRawContactDataSet:Ljava/lang/String;
    .end local v7           #typeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 899
    .restart local v1       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #rawContactAccountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    :cond_3
    :try_start_2
    iput-object v4, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactAccountTypes:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected updateRawContactIds()V
    .locals 8

    .prologue
    .line 871
    iget-object v6, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 872
    iget-object v1, p0, Lcom/android/htccontacts/HtcContactInfo;->mEntities:Ljava/util/ArrayList;

    .line 873
    .local v1, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 881
    :cond_0
    return-void

    .line 874
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    .line 875
    .local v2, entity:Landroid/content/Entity;
    invoke-virtual {v2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 876
    .local v0, entValues:Landroid/content/ContentValues;
    const-string v6, "_id"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 877
    .local v4, rawContactId:J
    iget-object v6, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 878
    iget-object v6, p0, Lcom/android/htccontacts/HtcContactInfoBase;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
