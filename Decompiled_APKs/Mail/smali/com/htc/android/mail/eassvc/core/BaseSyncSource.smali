.class public abstract Lcom/htc/android/mail/eassvc/core/BaseSyncSource;
.super Ljava/lang/Object;
.source "BaseSyncSource.java"

# interfaces
.implements Lcom/htc/android/mail/eassvc/core/SyncSource;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EAS_SYNCSRC_CFG_COLLID:Ljava/lang/String; = "CollID"

.field private static final EAS_SYNCSRC_CFG_ENABLED:Ljava/lang/String; = "Enabled"

.field private static final EAS_SYNCSRC_CFG_FILE_ENCODING:Ljava/lang/String; = "utf-8"

.field private static final EAS_SYNCSRC_CFG_FILE_FEATURE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"

.field private static final EAS_SYNCSRC_CFG_LAST_SYNC_ERROR_CODE:Ljava/lang/String; = "LastSyncErrorCode"

.field private static final EAS_SYNCSRC_CFG_LAST_SYNC_RESULT:Ljava/lang/String; = "LastSyncResult"

.field private static final EAS_SYNCSRC_CFG_LAST_SYNC_TIME:Ljava/lang/String; = "LastSyncTime"

.field private static final EAS_SYNCSRC_CFG_ROOT_SECTION:Ljava/lang/String; = "Sync"

.field private static final EAS_SYNCSRC_CFG_SYNCKEY:Ljava/lang/String; = "SyncKey"

.field public static final RETRY_TIMES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BaseSyncSource"


# instance fields
.field public final LOCK:Ljava/lang/Object;

.field protected bDataChange:Z

.field private bIsRetry:Z

.field protected listener:Lcom/htc/android/mail/eassvc/core/SyncListener;

.field protected mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

.field private mCancelMode:I

.field protected mCollID:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field protected mEnabled:Z

.field private mHttpClient:Landroid/net/http/AndroidHttpClient;

.field private mHttpPost:Lorg/apache/http/client/methods/HttpPost;

.field protected mIsPause:Z

.field protected mIsRunning:Z

.field private mIsSyncCancel:Z

.field protected mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

.field protected mPauseCondition:Landroid/os/ConditionVariable;

.field private mProtocolVer:D

.field private mRetryCount:I

.field protected mSyncKey:Ljava/lang/String;

.field prefFile:Ljava/io/File;

.field syncInfoURI:Landroid/net/Uri;

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;I)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->LOCK:Ljava/lang/Object;

    .line 68
    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 69
    iput v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mRetryCount:I

    .line 70
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->bIsRetry:Z

    .line 71
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mIsPause:Z

    .line 72
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->bDataChange:Z

    .line 73
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mIsSyncCancel:Z

    .line 74
    iput v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCancelMode:I

    .line 76
    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mPauseCondition:Landroid/os/ConditionVariable;

    .line 77
    new-instance v0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    .line 94
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 95
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mContext:Landroid/content/Context;

    .line 96
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mEnabled:Z

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCollID:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mSyncKey:Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 101
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iput p3, v0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->syncSrcType:I

    .line 102
    iput p3, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/mail/eassvc/core/BaseSyncSource;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/mail/eassvc/core/BaseSyncSource;)Landroid/net/http/AndroidHttpClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    return-object v0
.end method

.method private checkCancel()V
    .locals 3

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mIsSyncCancel:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCancelMode:I

    if-nez v0, :cond_0

    .line 692
    new-instance v0, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v1, 0x258

    const-string v2, "Sync be cancled."

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 694
    :cond_0
    return-void
.end method

.method private checkCancel(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mIsSyncCancel:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCancelMode:I

    if-ne p1, v0, :cond_0

    .line 699
    new-instance v0, Lcom/htc/android/mail/eassvc/core/SyncException;

    const/16 v1, 0x258

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync be cancled (mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 701
    :cond_0
    return-void
.end method

.method private checkPause()V
    .locals 1

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->isPause()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->resendSyncStatus(Landroid/content/Context;Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 686
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->pause()V

    .line 687
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->resendSyncStatus(Landroid/content/Context;Lcom/htc/android/mail/eassvc/core/SyncSource;)V

    .line 689
    :cond_0
    return-void
.end method


# virtual methods
.method public beginSync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/eassvc/core/SyncException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mIsRunning:Z

    .line 177
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->resetCancelFlag()V

    .line 178
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->listener:Lcom/htc/android/mail/eassvc/core/SyncListener;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-interface {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/SyncListener;->startSync(J)V

    .line 179
    return-void
.end method

.method public cancelSync()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 643
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSync(): type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 644
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->setPause(Z)V

    .line 647
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/eassvc/core/BaseSyncSource$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource$1;-><init>(Lcom/htc/android/mail/eassvc/core/BaseSyncSource;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mIsSyncCancel:Z

    .line 661
    iput v4, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCancelMode:I

    .line 662
    return-void
.end method

.method public cancelSync(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 632
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSync(): type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 633
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 635
    iput p1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCancelMode:I

    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mIsSyncCancel:Z

    .line 641
    :goto_0
    return-void

    .line 638
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->setPause(Z)V

    .line 639
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->cancelSync()V

    goto :goto_0
.end method

.method public deleteAccount()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteFullException;
        }
    .end annotation

    .prologue
    .line 417
    sget-boolean v2, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "BaseSyncSource"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "> deleteAccount()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 418
    :cond_0
    const/4 v0, 0x0

    .line 422
    .local v0, bRet:Z
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->deletePIMAppData(Z)V

    .line 423
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->removeSyncInfo()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 425
    const/4 v0, 0x1

    .line 431
    :goto_0
    sget-boolean v2, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "BaseSyncSource"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "< deleteAccount()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 433
    :cond_1
    return v0

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    throw v1

    .line 428
    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 429
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract deletePIMAppData(Z)V
.end method

.method public endSync(I)V
    .locals 7
    .parameter "syncResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/eassvc/core/SyncException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 189
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    .line 191
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iput p1, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    .line 192
    if-nez p1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iput v6, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    .line 197
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->saveData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    iput-boolean v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mIsRunning:Z

    .line 202
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->listener:Lcom/htc/android/mail/eassvc/core/SyncListener;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->listener:Lcom/htc/android/mail/eassvc/core/SyncListener;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/android/mail/eassvc/core/SyncListener;->endSync(JI)V

    .line 204
    :cond_1
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaseSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endSync("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public getAccount()Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    return-object v0
.end method

.method public getColID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCollID:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getHttpClient()Landroid/net/http/AndroidHttpClient;
    .locals 3

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->createHttpClient(Landroid/content/Context;J)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 123
    :cond_0
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mRetryCount:I

    if-lez v0, :cond_1

    .line 124
    const v0, 0xea60

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->setHttpTimeout(I)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHttpPost()Lorg/apache/http/client/methods/HttpPost;
    .locals 1

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastSyncErrorCode()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget v0, v0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    return v0
.end method

.method public getLastSyncInfo()Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    return-object v0
.end method

.method public getLastSyncResult()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget v0, v0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    return v0
.end method

.method public getLastSyncTime()J
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    return-wide v0
.end method

.method public getListener()Lcom/htc/android/mail/eassvc/core/SyncListener;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->listener:Lcom/htc/android/mail/eassvc/core/SyncListener;

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method public getProtocolVer()D
    .locals 2

    .prologue
    .line 628
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mProtocolVer:D

    return-wide v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mRetryCount:I

    return v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mSyncKey:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mIsSyncCancel:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mEnabled:Z

    return v0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mIsPause:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mIsRunning:Z

    return v0
.end method

.method public loadData()V
    .locals 18

    .prologue
    .line 327
    sget-boolean v1, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BaseSyncSource"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v5, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "> loadData("

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v6, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 334
    :cond_0
    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "synckey"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "CollID"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "LastSyncResult"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "LastSyncTime"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "LastSyncErrorCode"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "Enabled"

    aput-object v2, v3, v1

    .line 336
    .local v3, projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountName = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, whereClause:Ljava/lang/String;
    const/4 v8, 0x0

    .line 339
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->syncInfoURI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 340
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 341
    const-string v1, "synckey"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 342
    .local v15, synckey:Ljava/lang/String;
    const-string v1, "CollID"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, collId:Ljava/lang/String;
    const-string v1, "LastSyncResult"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 344
    .local v12, lastSyncResult:I
    const-string v1, "LastSyncTime"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 345
    .local v13, lastSyncTime:J
    const-string v1, "LastSyncErrorCode"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 346
    .local v11, lastSyncErrorCode:I
    const-string v1, "Enabled"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v10, 0x1

    .line 347
    .local v10, emabled:Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->bDataChange:Z

    if-nez v1, :cond_2

    .line 348
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mSyncKey:Ljava/lang/String;

    .line 349
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCollID:Ljava/lang/String;

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iput v12, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    .line 351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iput-wide v13, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iput v11, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    .line 353
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mEnabled:Z

    .line 361
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCollID:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCollID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCollID:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    :cond_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v7           #collId:Ljava/lang/String;
    .end local v10           #emabled:Z
    .end local v11           #lastSyncErrorCode:I
    .end local v12           #lastSyncResult:I
    .end local v13           #lastSyncTime:J
    .end local v15           #synckey:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 374
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_3
    sget-boolean v1, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "BaseSyncSource"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v5, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "< loadData("

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v1, v5, v6, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 377
    :cond_4
    return-void

    .line 346
    .restart local v7       #collId:Ljava/lang/String;
    .restart local v11       #lastSyncErrorCode:I
    .restart local v12       #lastSyncResult:I
    .restart local v13       #lastSyncTime:J
    .restart local v15       #synckey:Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 367
    .end local v7           #collId:Ljava/lang/String;
    .end local v11           #lastSyncErrorCode:I
    .end local v12           #lastSyncResult:I
    .end local v13           #lastSyncTime:J
    .end local v15           #synckey:Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v1, "BaseSyncSource"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v5, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot find easSyncInfo column, type="

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v6, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 369
    :catch_0
    move-exception v9

    .line 370
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    sget-boolean v1, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "BaseSyncSource"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v5, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "loadData("

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, ") fail: "

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v6, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 371
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    if-eqz v8, :cond_8

    .line 374
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_8
    sget-boolean v1, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "BaseSyncSource"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v5, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "< loadData("

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 373
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_9

    .line 374
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_9
    sget-boolean v2, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "BaseSyncSource"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v5, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "< loadData("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v2, v5, v6, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 373
    :cond_a
    throw v1
.end method

.method protected loadDataFromFile()V
    .locals 11

    .prologue
    const/4 v9, 0x2

    .line 469
    const/4 v4, 0x0

    .line 472
    .local v4, prefReader:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->prefFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 477
    .end local v4           #prefReader:Ljava/io/FileReader;
    .local v5, prefReader:Ljava/io/FileReader;
    if-eqz v5, :cond_0

    .line 479
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 487
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 488
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 490
    const-string v6, "Sync"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, curTagName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 498
    .local v1, curTagVal:Ljava/lang/String;
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 499
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-ne v9, v6, :cond_5

    .line 500
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 501
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 523
    :cond_1
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 525
    .end local v0           #curTagName:Ljava/lang/String;
    .end local v1           #curTagVal:Ljava/lang/String;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .line 526
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_3
    move-object v4, v5

    .line 530
    .end local v5           #prefReader:Ljava/io/FileReader;
    .restart local v4       #prefReader:Ljava/io/FileReader;
    :cond_3
    :goto_4
    return-void

    .line 473
    :catch_1
    move-exception v2

    .line 474
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v6, "BaseSyncSource"

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v7, v7, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadDataFromFile(), "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 477
    if-eqz v4, :cond_3

    .line 479
    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 480
    :catch_2
    move-exception v2

    .line 481
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 477
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v4, :cond_4

    .line 479
    :try_start_5
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 477
    :cond_4
    :goto_5
    throw v6

    .line 502
    .end local v4           #prefReader:Ljava/io/FileReader;
    .restart local v0       #curTagName:Ljava/lang/String;
    .restart local v1       #curTagVal:Ljava/lang/String;
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #prefReader:Ljava/io/FileReader;
    :cond_5
    const/4 v6, 0x4

    :try_start_6
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 503
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 504
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 505
    const-string v6, "CollID"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 506
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCollID:Ljava/lang/String;
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 527
    .end local v0           #curTagName:Ljava/lang/String;
    .end local v1           #curTagVal:Ljava/lang/String;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v2

    .line 528
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 507
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #curTagName:Ljava/lang/String;
    .restart local v1       #curTagVal:Ljava/lang/String;
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    :try_start_7
    const-string v6, "SyncKey"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 508
    iput-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mSyncKey:Ljava/lang/String;

    goto :goto_2

    .line 509
    :cond_7
    const-string v6, "LastSyncResult"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 511
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    goto :goto_2

    .line 512
    :cond_8
    const-string v6, "LastSyncTime"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 514
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    goto/16 :goto_2

    .line 515
    :cond_9
    const-string v6, "LastSyncErrorCode"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 517
    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    goto/16 :goto_2

    .line 518
    :cond_a
    const-string v6, "Enabled"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 519
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mEnabled:Z
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    .line 480
    .end local v0           #curTagName:Ljava/lang/String;
    .end local v1           #curTagVal:Ljava/lang/String;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #prefReader:Ljava/io/FileReader;
    .restart local v4       #prefReader:Ljava/io/FileReader;
    :catch_4
    move-exception v2

    .line 481
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 480
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #prefReader:Ljava/io/FileReader;
    .restart local v5       #prefReader:Ljava/io/FileReader;
    :catch_5
    move-exception v2

    .line 481
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public needRetry()Z
    .locals 2

    .prologue
    .line 153
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mRetryCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 462
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mPauseCondition:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mPauseCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 465
    :cond_1
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "BaseSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 466
    :cond_2
    return-void
.end method

.method public declared-synchronized release()V
    .locals 5

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- release()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 443
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 444
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mPauseCondition:Landroid/os/ConditionVariable;

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mPauseCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :cond_2
    monitor-exit p0

    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseHttpClient()V
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 131
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpClient:Landroid/net/http/AndroidHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract removeSyncInfo()V
.end method

.method public resetCancelFlag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 669
    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mIsSyncCancel:Z

    .line 670
    iput v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCancelMode:I

    .line 671
    return-void
.end method

.method public resetRetry()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->bIsRetry:Z

    .line 150
    iput v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mRetryCount:I

    .line 151
    return-void
.end method

.method protected saveData()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 381
    sget-boolean v7, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "BaseSyncSource"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v8, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "- saveData():type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 382
    :cond_0
    iput-boolean v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->bDataChange:Z

    .line 384
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->saveDataToFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->syncInfoURI:Landroid/net/Uri;

    if-nez v7, :cond_1

    .line 412
    :goto_1
    return-void

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "BaseSyncSource"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v8, v8, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const-string v10, "saveData(file): "

    invoke-static {v7, v8, v9, v10, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 391
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->syncInfoURI:Landroid/net/Uri;

    monitor-enter v7

    .line 392
    const/4 v8, 0x6

    :try_start_1
    new-array v2, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "synckey"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string v9, "CollID"

    aput-object v9, v2, v8

    const/4 v8, 0x2

    const-string v9, "LastSyncResult"

    aput-object v9, v2, v8

    const/4 v8, 0x3

    const-string v9, "LastSyncTime"

    aput-object v9, v2, v8

    const/4 v8, 0x4

    const-string v9, "LastSyncErrorCode"

    aput-object v9, v2, v8

    const/4 v8, 0x5

    const-string v9, "Enabled"

    aput-object v9, v2, v8

    .line 394
    .local v2, projection:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "accountName = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v9, v9, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, whereClause:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 397
    .local v0, cvs:Landroid/content/ContentValues;
    const-string v8, "synckey"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v8, "CollID"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCollID:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v8, "LastSyncResult"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget v9, v9, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    const-string v8, "LastSyncTime"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget-wide v9, v9, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 401
    const-string v8, "LastSyncErrorCode"

    iget-object v9, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget v9, v9, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 402
    const-string v8, "Enabled"

    iget-boolean v9, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mEnabled:Z

    if-eqz v9, :cond_2

    move v5, v6

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->syncInfoURI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v0, v4, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 405
    .local v3, ret:I
    if-ge v3, v6, :cond_3

    .line 406
    const-string v5, "BaseSyncSource"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v8, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveData: create easSyncInfo column. type="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v8, v9, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 407
    const-string v5, "accountName"

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->syncInfoURI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 410
    :cond_3
    monitor-exit v7

    goto/16 :goto_1

    .end local v0           #cvs:Landroid/content/ContentValues;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #ret:I
    .end local v4           #whereClause:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method protected saveDataToFile()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 533
    iput-boolean v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->bDataChange:Z

    .line 535
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->prefFile:Ljava/io/File;

    if-eqz v1, :cond_3

    .line 536
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->prefFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 537
    .local v11, tempFilePath:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 539
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .local v10, tempFile:Ljava/io/File;
    const/4 v8, 0x0

    .line 542
    .local v8, str:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    .end local v8           #str:Ljava/io/FileOutputStream;
    .local v9, str:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 546
    .local v7, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v1, "utf-8"

    invoke-interface {v7, v9, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 547
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 548
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v2, 0x1

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 550
    const/4 v1, 0x0

    const-string v2, "Sync"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 552
    const/4 v1, 0x0

    const-string v2, "version"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 553
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 554
    const/4 v1, 0x0

    const-string v2, "version"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 556
    const/4 v1, 0x0

    const-string v2, "CollID"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 557
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCollID:Ljava/lang/String;

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 558
    const/4 v1, 0x0

    const-string v2, "CollID"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 560
    const/4 v1, 0x0

    const-string v2, "SyncKey"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 561
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mSyncKey:Ljava/lang/String;

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    const/4 v1, 0x0

    const-string v2, "SyncKey"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 564
    const/4 v1, 0x0

    const-string v2, "LastSyncErrorCode"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 565
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget v1, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 566
    const/4 v1, 0x0

    const-string v2, "LastSyncErrorCode"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 568
    const/4 v1, 0x0

    const-string v2, "LastSyncResult"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 569
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget v1, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 570
    const/4 v1, 0x0

    const-string v2, "LastSyncResult"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 572
    const/4 v1, 0x0

    const-string v2, "LastSyncTime"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 573
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 574
    const/4 v1, 0x0

    const-string v2, "LastSyncTime"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 576
    const/4 v1, 0x0

    const-string v2, "Enabled"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 577
    iget-boolean v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mEnabled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 578
    const/4 v1, 0x0

    const-string v2, "Enabled"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 580
    const/4 v1, 0x0

    const-string v2, "Sync"

    invoke-interface {v7, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 582
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 584
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 586
    if-eqz v9, :cond_0

    .line 588
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 598
    :cond_0
    :goto_0
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 599
    .local v0, inChannel:Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->prefFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v5

    .line 602
    .local v5, outChannel:Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 606
    if-eqz v0, :cond_1

    .line 607
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 608
    const/4 v0, 0x0

    .line 610
    :cond_1
    if-eqz v5, :cond_2

    .line 611
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 612
    :goto_1
    const/4 v5, 0x0

    .line 615
    :cond_2
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 621
    .end local v0           #inChannel:Ljava/nio/channels/FileChannel;
    .end local v5           #outChannel:Ljava/nio/channels/FileChannel;
    .end local v7           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v9           #str:Ljava/io/FileOutputStream;
    .end local v10           #tempFile:Ljava/io/File;
    .end local v11           #tempFilePath:Ljava/lang/String;
    :cond_3
    return-void

    .line 586
    .restart local v8       #str:Ljava/io/FileOutputStream;
    .restart local v10       #tempFile:Ljava/io/File;
    .restart local v11       #tempFilePath:Ljava/lang/String;
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v8, :cond_4

    .line 588
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 586
    :cond_4
    :goto_3
    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 618
    .end local v8           #str:Ljava/io/FileOutputStream;
    .end local v10           #tempFile:Ljava/io/File;
    .end local v11           #tempFilePath:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 619
    .local v6, e:Ljava/lang/Exception;
    throw v6

    .line 603
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v0       #inChannel:Ljava/nio/channels/FileChannel;
    .restart local v5       #outChannel:Ljava/nio/channels/FileChannel;
    .restart local v7       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v9       #str:Ljava/io/FileOutputStream;
    .restart local v10       #tempFile:Ljava/io/File;
    .restart local v11       #tempFilePath:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 604
    .local v6, e:Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 606
    if-eqz v0, :cond_5

    .line 607
    :try_start_a
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 608
    const/4 v0, 0x0

    .line 610
    :cond_5
    if-eqz v5, :cond_2

    .line 611
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_1

    .line 606
    .end local v6           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    .line 607
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 608
    const/4 v0, 0x0

    .line 610
    :cond_6
    if-eqz v5, :cond_7

    .line 611
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 612
    const/4 v5, 0x0

    .line 606
    :cond_7
    throw v1

    .line 589
    .end local v0           #inChannel:Ljava/nio/channels/FileChannel;
    .end local v5           #outChannel:Ljava/nio/channels/FileChannel;
    .end local v7           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v9           #str:Ljava/io/FileOutputStream;
    .restart local v8       #str:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    .line 590
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 589
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #str:Ljava/io/FileOutputStream;
    .restart local v7       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v9       #str:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v6

    .line 590
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_0

    .line 586
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_2
    move-exception v1

    move-object v8, v9

    .end local v9           #str:Ljava/io/FileOutputStream;
    .restart local v8       #str:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public setCheckPoint()V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->checkCancel()V

    .line 675
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->checkPause()V

    .line 676
    return-void
.end method

.method public setCheckPoint(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 679
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->checkCancel(I)V

    .line 680
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->checkPause()V

    .line 681
    return-void
.end method

.method public setColID(Ljava/lang/String;)V
    .locals 5
    .parameter "colID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 272
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- setColID("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCollID:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mCollID:Ljava/lang/String;

    .line 275
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->saveData()V

    .line 277
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 235
    sget-boolean v1, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BaseSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- setEnabled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 236
    :cond_0
    iget-boolean v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mEnabled:Z

    if-eq v1, p1, :cond_2

    .line 237
    iput-boolean p1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mEnabled:Z

    .line 238
    if-nez p1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    .line 241
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->saveData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_2
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaseSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEnabled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized setHttpPost(Lorg/apache/http/client/methods/HttpPost;)V
    .locals 1
    .parameter "httppost"

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->bIsRetry:Z

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mRetryCount:I

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->bIsRetry:Z

    .line 117
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHttpTimeout(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_1

    .line 135
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHttpTimeout("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.connection.timeout"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 139
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_1
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLastSyncErrorCode(I)V
    .locals 6
    .parameter "errorCode"

    .prologue
    .line 283
    sget-boolean v1, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BaseSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- setLastSyncErrorCode()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget v1, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    if-eq v1, p1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iput p1, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncErrorCode:I

    .line 287
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->saveData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_1
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaseSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLastSyncErrorCode() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public setLastSyncResult(I)V
    .locals 6
    .parameter "result"

    .prologue
    .line 299
    sget-boolean v1, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BaseSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- setLastSyncResult()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget v1, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    if-eq v1, p1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iput p1, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncResult:I

    .line 303
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->saveData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_1
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaseSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLastSyncResult() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public setLastSyncTime(J)V
    .locals 6
    .parameter "time"

    .prologue
    .line 315
    sget-boolean v1, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BaseSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- setLastSyncTime()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mLastSyncInfo:Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;

    iput-wide p1, v1, Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;->lastSyncTime:J

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->saveData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_1
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BaseSyncSource"

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLastSyncTime() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public setListener(Lcom/htc/android/mail/eassvc/core/SyncListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->listener:Lcom/htc/android/mail/eassvc/core/SyncListener;

    .line 214
    return-void
.end method

.method public setPause(Z)V
    .locals 5
    .parameter "isPause"

    .prologue
    .line 452
    sget-boolean v0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPause("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 453
    :cond_0
    iput-boolean p1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mIsPause:Z

    .line 454
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mPauseCondition:Landroid/os/ConditionVariable;

    if-nez v0, :cond_1

    .line 455
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mPauseCondition:Landroid/os/ConditionVariable;

    .line 456
    :cond_1
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mIsPause:Z

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mPauseCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mPauseCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0
.end method

.method public setProtocolVer(D)V
    .locals 0
    .parameter "ver"

    .prologue
    .line 624
    iput-wide p1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mProtocolVer:D

    .line 625
    return-void
.end method

.method public setRetry()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->bIsRetry:Z

    .line 146
    iget v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mRetryCount:I

    .line 147
    return-void
.end method

.method public setSyncKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 260
    const-string v0, "BaseSyncSource"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v1, v1, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- setSyncKey() : from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mSyncKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->mSyncKey:Ljava/lang/String;

    .line 263
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/core/BaseSyncSource;->saveData()V

    .line 265
    :cond_0
    return-void
.end method
