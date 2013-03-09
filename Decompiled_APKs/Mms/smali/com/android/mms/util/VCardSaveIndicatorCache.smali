.class public Lcom/android/mms/util/VCardSaveIndicatorCache;
.super Ljava/lang/Object;
.source "VCardSaveIndicatorCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;,
        Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;,
        Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorHandler;,
        Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static MmsProjection:[Ljava/lang/String; = null

.field private static MmsSelection:Ljava/lang/String; = null

.field private static final Mmsstr:Ljava/lang/String; = "mms_"

.field private static final SMSproject:[Ljava/lang/String; = null

.field private static final SmsSelection:Ljava/lang/String; = "body Like \'BEGIN:VCARD%\' AND thread_id > 0 "

.field private static final Smsstr:Ljava/lang/String; = "sms_"

.field private static final TAG:Ljava/lang/String; = "VCardSaveIndicatorCache"

.field private static UIRunnable:Ljava/lang/Runnable; = null

.field public static final VCARD_SAVED_PREFERENCE_NAME:Ljava/lang/String; = "com.android.mms.vcardSaved"

.field private static instance:Lcom/android/mms/util/VCardSaveIndicatorCache;

.field private static mMmsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mSmsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mVCardParseListener:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;

.field private static sp:Landroid/content/SharedPreferences;


# instance fields
.field public currentSaveVCalendar:J

.field private mContext:Landroid/content/Context;

.field private mObserverArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private mQueryHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 36
    sput-boolean v2, Lcom/android/mms/util/VCardSaveIndicatorCache;->DEBUG:Z

    .line 46
    sput-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mMmsArray:Ljava/util/ArrayList;

    .line 47
    sput-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    .line 48
    sput-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->instance:Lcom/android/mms/util/VCardSaveIndicatorCache;

    .line 49
    sput-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mVCardParseListener:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;

    .line 50
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.mms.vcardSaved"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->sp:Landroid/content/SharedPreferences;

    .line 56
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "mid"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->MmsProjection:[Ljava/lang/String;

    .line 57
    const-string v0, "ct Like \'text/x%\' "

    sput-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->MmsSelection:Ljava/lang/String;

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "body"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->SMSproject:[Ljava/lang/String;

    .line 331
    new-instance v0, Lcom/android/mms/util/VCardSaveIndicatorCache$1;

    invoke-direct {v0}, Lcom/android/mms/util/VCardSaveIndicatorCache$1;-><init>()V

    sput-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->UIRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mQueryHandler:Landroid/os/Handler;

    .line 44
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mContext:Landroid/content/Context;

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->currentSaveVCalendar:J

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mObserverArray:Ljava/util/ArrayList;

    .line 91
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->isSupportVcardSaveIndicator()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    sget-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mMmsArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 95
    sget-boolean v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "VCardSaveIndicatorCache"

    const-string v1, "new VCardSaveIndicatorCache >>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mMmsArray:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorHandler;

    invoke-direct {v0, p0}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorHandler;-><init>(Lcom/android/mms/util/VCardSaveIndicatorCache;)V

    iput-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mQueryHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;

    invoke-direct {v0, p0}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;-><init>(Lcom/android/mms/util/VCardSaveIndicatorCache;)V

    sput-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mVCardParseListener:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;

    .line 101
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/util/VCardSaveIndicatorCache;->startAsyncQueryVCardInfo(J)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/util/VCardSaveIndicatorCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/mms/util/VCardSaveIndicatorCache;->notifyOvserverInUIthread()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/util/VCardSaveIndicatorCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/mms/util/VCardSaveIndicatorCache;->cacheVcardInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/util/VCardSaveIndicatorCache;)Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getNextVcardParseData()Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/util/VCardSaveIndicatorCache;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mVCardParseListener:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/util/VCardSaveIndicatorCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/mms/util/VCardSaveIndicatorCache;->notifyOvserverInBackground()V

    return-void
.end method

.method private cacheVcardInfo()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getMmsArray()V

    .line 447
    invoke-direct {p0}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getSmsArray()V

    .line 448
    invoke-virtual {p0}, Lcom/android/mms/util/VCardSaveIndicatorCache;->updateSavedFile()V

    .line 449
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;
    .locals 2

    .prologue
    .line 109
    const-class v1, Lcom/android/mms/util/VCardSaveIndicatorCache;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->isSupportVcardSaveIndicator()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 115
    :goto_0
    monitor-exit v1

    return-object v0

    .line 112
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->instance:Lcom/android/mms/util/VCardSaveIndicatorCache;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Lcom/android/mms/util/VCardSaveIndicatorCache;

    invoke-direct {v0}, Lcom/android/mms/util/VCardSaveIndicatorCache;-><init>()V

    sput-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->instance:Lcom/android/mms/util/VCardSaveIndicatorCache;

    .line 115
    :cond_1
    sget-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->instance:Lcom/android/mms/util/VCardSaveIndicatorCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMmsArray()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 371
    iget-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/QueryURI;->GET_PART_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/util/VCardSaveIndicatorCache;->MmsProjection:[Ljava/lang/String;

    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->MmsSelection:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 374
    .local v7, cursor:Landroid/database/Cursor;
    sget-boolean v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VCardSaveIndicatorCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mms vCard/vCalendar cursor >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    if-eqz v7, :cond_4

    .line 376
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 377
    .local v6, count:I
    sget-boolean v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "VCardSaveIndicatorCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mms vCard/vCalendar count >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_1
    const/4 v8, 0x0

    .line 380
    .local v8, id:I
    const/4 v9, 0x0

    .line 381
    .local v9, status:Z
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 383
    sget-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->sp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 384
    sget-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->sp:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mms_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 386
    :cond_2
    sget-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mMmsArray:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    int-to-long v2, v8

    invoke-direct {v1, p0, v2, v3, v9}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;-><init>(Lcom/android/mms/util/VCardSaveIndicatorCache;JZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 391
    .end local v6           #count:I
    .end local v8           #id:I
    .end local v9           #status:Z
    :cond_4
    return-void
.end method

.method public static getMmsSavedStatus(J)Z
    .locals 6
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->isSupportVcardSaveIndicator()Z

    move-result v4

    if-nez v4, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v3

    .line 133
    :cond_1
    sget-object v4, Lcom/android/mms/util/VCardSaveIndicatorCache;->mMmsArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 134
    .local v0, count:I
    const/4 v2, 0x0

    .line 135
    .local v2, info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 136
    sget-object v4, Lcom/android/mms/util/VCardSaveIndicatorCache;->mMmsArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    check-cast v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    .line 137
    .restart local v2       #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    iget-wide v4, v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->iMsgId:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_4

    .line 142
    :cond_2
    if-eqz v2, :cond_3

    iget-wide v4, v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->iMsgId:J

    cmp-long v4, v4, p0

    if-eqz v4, :cond_3

    .line 143
    new-instance v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    .end local v2           #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v4, p0, p1, v3}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;-><init>(Lcom/android/mms/util/VCardSaveIndicatorCache;JZ)V

    .line 144
    .restart local v2       #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    sget-object v4, Lcom/android/mms/util/VCardSaveIndicatorCache;->mMmsArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/util/VCardSaveIndicatorCache;->mQueryHandler:Landroid/os/Handler;

    const/16 v5, 0x4e23

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 148
    :cond_3
    if-eqz v2, :cond_0

    .line 149
    iget-boolean v3, v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->bSaved:Z

    goto :goto_0

    .line 135
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getNextVcardParseData()Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    .locals 4

    .prologue
    .line 432
    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 433
    .local v0, count:I
    const/4 v2, 0x0

    .line 434
    .local v2, info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 435
    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    check-cast v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    .line 436
    .restart local v2       #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    iget-boolean v3, v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->parsed:Z

    if-nez v3, :cond_1

    .line 441
    :cond_0
    return-object v2

    .line 434
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getSmsArray()V
    .locals 11

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/util/VCardSaveIndicatorCache;->SMSproject:[Ljava/lang/String;

    const-string v3, "body Like \'BEGIN:VCARD%\' AND thread_id > 0 "

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 401
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 402
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 404
    .local v6, count:I
    const/4 v8, 0x0

    .line 405
    .local v8, id:I
    const/4 v4, 0x0

    .line 406
    .local v4, status:Z
    const/4 v5, 0x0

    .line 407
    .local v5, body:Ljava/lang/String;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 409
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 410
    sget-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->sp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 411
    sget-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->sp:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 413
    :cond_0
    sget-object v10, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    int-to-long v2, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;-><init>(Lcom/android/mms/util/VCardSaveIndicatorCache;JZLjava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 420
    .end local v4           #status:Z
    .end local v5           #body:Ljava/lang/String;
    .end local v6           #count:I
    .end local v8           #id:I
    :cond_2
    const/4 v9, 0x0

    .line 421
    .local v9, mInfo:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    invoke-direct {p0}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getNextVcardParseData()Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    move-result-object v9

    .line 423
    if-eqz v9, :cond_3

    .line 424
    sget-object v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mVCardParseListener:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;

    invoke-virtual {v0, v9}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;->setVCardData(Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;)V

    .line 425
    iget-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/util/VCardSaveIndicatorCache;->mVCardParseListener:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;

    iget-object v2, v9, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->mBody:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/VCardUtils;->binaryVCardToStructure(Landroid/content/Context;Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;[BLandroid/accounts/Account;)V

    .line 428
    :cond_3
    return-void
.end method

.method public static getSmsSavedStatus(J)Z
    .locals 6
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->isSupportVcardSaveIndicator()Z

    move-result v4

    if-nez v4, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v3

    .line 158
    :cond_1
    sget-object v4, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 159
    .local v0, count:I
    const/4 v2, 0x0

    .line 160
    .local v2, info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 161
    sget-object v4, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    check-cast v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    .line 162
    .restart local v2       #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    iget-wide v4, v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->iMsgId:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_4

    .line 167
    :cond_2
    if-eqz v2, :cond_3

    iget-wide v4, v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->iMsgId:J

    cmp-long v4, v4, p0

    if-eqz v4, :cond_3

    .line 168
    new-instance v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    .end local v2           #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v4, p0, p1, v3}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;-><init>(Lcom/android/mms/util/VCardSaveIndicatorCache;JZ)V

    .line 169
    .restart local v2       #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    sget-object v4, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/util/VCardSaveIndicatorCache;->mQueryHandler:Landroid/os/Handler;

    const/16 v5, 0x4e23

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 173
    :cond_3
    if-eqz v2, :cond_0

    .line 174
    iget-boolean v3, v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->bSaved:Z

    goto :goto_0

    .line 160
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isSupportVcardSaveIndicator()Z
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyOvserverInBackground()V
    .locals 6

    .prologue
    .line 298
    iget-object v4, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mObserverArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 299
    iget-object v4, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mObserverArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 300
    .local v3, size:I
    const/4 v0, 0x0

    .line 302
    .local v0, bNeedRunInUI:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 303
    iget-object v4, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mObserverArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;

    .line 304
    .local v2, resolver:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;
    if-eqz v2, :cond_0

    iget-boolean v4, v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;->bNotifyInUI:Z

    if-nez v4, :cond_0

    .line 305
    invoke-virtual {v2}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;->onChange()V

    .line 302
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 310
    .end local v2           #resolver:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;
    :cond_1
    if-eqz v0, :cond_2

    .line 311
    iget-object v4, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mQueryHandler:Landroid/os/Handler;

    check-cast v4, Lcom/android/mms/util/MmsAsyncWorkHandler;

    sget-object v5, Lcom/android/mms/util/VCardSaveIndicatorCache;->UIRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/mms/util/MmsAsyncWorkHandler;->runInUIthread(Ljava/lang/Runnable;)V

    .line 315
    .end local v0           #bNeedRunInUI:Z
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_2
    return-void
.end method

.method private notifyOvserverInUIthread()V
    .locals 4

    .prologue
    .line 319
    iget-object v3, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mObserverArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 320
    iget-object v3, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mObserverArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 322
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 323
    iget-object v3, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mObserverArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;

    .line 324
    .local v1, resolver:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;->bNotifyInUI:Z

    if-eqz v3, :cond_0

    .line 325
    invoke-virtual {v1}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;->onChange()V

    .line 322
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v0           #i:I
    .end local v1           #resolver:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;
    .end local v2           #size:I
    :cond_1
    return-void
.end method

.method public static declared-synchronized registerVCardIndicatorObserver(Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;)V
    .locals 3
    .parameter "obeserver"

    .prologue
    .line 120
    const-class v1, Lcom/android/mms/util/VCardSaveIndicatorCache;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->isSupportVcardSaveIndicator()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 124
    :goto_0
    monitor-exit v1

    return-void

    .line 123
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mObserverArray:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized saveMmsVCard(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 184
    const-class v1, Lcom/android/mms/util/VCardSaveIndicatorCache;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->isSupportVcardSaveIndicator()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 187
    :goto_0
    monitor-exit v1

    return-void

    .line 186
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/android/mms/util/VCardSaveIndicatorCache;->saveMmsVCardVCalendar(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private saveMmsVCardVCalendar(J)V
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    .line 340
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->isSupportVcardSaveIndicator()Z

    move-result v3

    if-nez v3, :cond_0

    .line 358
    :goto_0
    return-void

    .line 343
    :cond_0
    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mMmsArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 344
    .local v0, count:I
    const/4 v2, 0x0

    .line 345
    .local v2, info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 346
    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mMmsArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    check-cast v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    .line 347
    .restart local v2       #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    iget-wide v3, v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->iMsgId:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_4

    .line 348
    iput-boolean v6, v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->bSaved:Z

    .line 352
    :cond_1
    if-eqz v2, :cond_2

    iget-wide v3, v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->iMsgId:J

    cmp-long v3, v3, p1

    if-eqz v3, :cond_3

    .line 353
    :cond_2
    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mMmsArray:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, p1, p2, v6}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;-><init>(Lcom/android/mms/util/VCardSaveIndicatorCache;JZ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_3
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v3

    invoke-direct {v3}, Lcom/android/mms/util/VCardSaveIndicatorCache;->notifyOvserverInBackground()V

    .line 357
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mQueryHandler:Landroid/os/Handler;

    const/16 v4, 0x4e23

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 345
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized saveSmsVCard(J)V
    .locals 8
    .parameter "id"

    .prologue
    .line 189
    const-class v4, Lcom/android/mms/util/VCardSaveIndicatorCache;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->isSupportVcardSaveIndicator()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 207
    :goto_0
    monitor-exit v4

    return-void

    .line 192
    :cond_0
    :try_start_1
    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 193
    .local v0, count:I
    const/4 v2, 0x0

    .line 194
    .local v2, info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 195
    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    check-cast v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    .line 196
    .restart local v2       #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    iget-wide v5, v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->iMsgId:J

    cmp-long v3, v5, p0

    if-nez v3, :cond_4

    .line 197
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->bSaved:Z

    .line 201
    :cond_1
    if-eqz v2, :cond_2

    iget-wide v5, v2, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->iMsgId:J

    cmp-long v3, v5, p0

    if-eqz v3, :cond_3

    .line 202
    :cond_2
    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x1

    invoke-direct {v5, v6, p0, p1, v7}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;-><init>(Lcom/android/mms/util/VCardSaveIndicatorCache;JZ)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_3
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v3

    invoke-direct {v3}, Lcom/android/mms/util/VCardSaveIndicatorCache;->notifyOvserverInBackground()V

    .line 206
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mQueryHandler:Landroid/os/Handler;

    const/16 v5, 0x4e23

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 194
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized saveVCalendar()V
    .locals 5

    .prologue
    .line 213
    const-class v2, Lcom/android/mms/util/VCardSaveIndicatorCache;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->isSupportVcardSaveIndicator()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 218
    .local v0, ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    :goto_0
    monitor-exit v2

    return-void

    .line 216
    .end local v0           #ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v0

    .line 217
    .restart local v0       #ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    iget-wide v3, v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->currentSaveVCalendar:J

    invoke-direct {v0, v3, v4}, Lcom/android/mms/util/VCardSaveIndicatorCache;->saveMmsVCardVCalendar(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private startAsyncQueryVCardInfo(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 362
    sget-boolean v0, Lcom/android/mms/util/VCardSaveIndicatorCache;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VCardSaveIndicatorCache"

    const-string v1, "startAsyncQueryVCardInfo ---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mQueryHandler:Landroid/os/Handler;

    const/16 v1, 0x4e22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 365
    return-void
.end method


# virtual methods
.method public getSMSVCardEntry(J)Lcom/android/vcard/VCardEntry;
    .locals 6
    .parameter "id"

    .prologue
    .line 251
    const/4 v3, 0x0

    .line 252
    .local v3, vcard:Lcom/android/vcard/VCardEntry;
    sget-object v4, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 255
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 256
    sget-object v4, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    .line 257
    .local v1, info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    iget-wide v4, v1, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->iMsgId:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    iget-boolean v4, v1, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->parsed:Z

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->vCardStruct:Lcom/android/vcard/VCardEntry;

    if-eqz v4, :cond_1

    .line 258
    iget-object v3, v1, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->vCardStruct:Lcom/android/vcard/VCardEntry;

    .line 263
    .end local v1           #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    :cond_0
    return-object v3

    .line 255
    .restart local v1       #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSMSvCardtoParse(ILjava/lang/String;)V
    .locals 8
    .parameter "id"
    .parameter "body"

    .prologue
    const/4 v7, 0x0

    .line 271
    if-eqz p2, :cond_2

    const-string v3, "BEGIN:VCARD"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "END:VCARD"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 275
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    .line 277
    .local v1, info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    iget-wide v3, v1, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->iMsgId:J

    int-to-long v5, p1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 278
    iput-object v7, v1, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->mBody:[B

    .line 279
    iput-object v7, v1, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->vCardStruct:Lcom/android/vcard/VCardEntry;

    .line 280
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 285
    .end local v1           #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    :cond_1
    new-instance v1, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    int-to-long v3, p1

    const/4 v5, 0x0

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;-><init>(Lcom/android/mms/util/VCardSaveIndicatorCache;JZ)V

    .line 286
    .restart local v1       #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v0, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;

    invoke-direct {v0, p0}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;-><init>(Lcom/android/mms/util/VCardSaveIndicatorCache;)V

    .line 288
    .local v0, VCardParseListener:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;
    invoke-virtual {v0, v1}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;->setVCardData(Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;)V

    .line 289
    iget-object v3, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v0, v4, v7}, Lcom/android/mms/ui/VCardUtils;->binaryVCardToStructure(Landroid/content/Context;Lcom/android/mms/ui/VCardUtils$ParseCompleteListener;[BLandroid/accounts/Account;)V

    .line 290
    iget-object v3, p0, Lcom/android/mms/util/VCardSaveIndicatorCache;->mQueryHandler:Landroid/os/Handler;

    const/16 v4, 0x4e23

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 294
    .end local v0           #VCardParseListener:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardParseCompleteListener;
    .end local v1           #info:Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;>;"
    :cond_2
    return-void
.end method

.method public declared-synchronized updateSavedFile()V
    .locals 7

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->isSupportVcardSaveIndicator()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 245
    :goto_0
    monitor-exit p0

    return-void

    .line 229
    :cond_0
    :try_start_1
    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 231
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mMmsArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 233
    .local v2, size:I
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 235
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mms_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mMmsArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    iget-wide v5, v3, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->iMsgId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mMmsArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    iget-boolean v3, v3, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->bSaved:Z

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    :cond_1
    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 240
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    iget-wide v5, v3, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->iMsgId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v3, Lcom/android/mms/util/VCardSaveIndicatorCache;->mSmsArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;

    iget-boolean v3, v3, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardSavedInfo;->bSaved:Z

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 244
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 225
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
