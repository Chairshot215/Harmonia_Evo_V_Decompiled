.class public abstract Lcom/google/android/common/LoggingThreadedSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "LoggingThreadedSyncAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "autoInitialize"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0
    .parameter "context"
    .parameter "autoInitialize"
    .parameter "allowParallelSyncs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;ZZ)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onLogSyncDetails(JJLandroid/content/SyncResult;)V
    .locals 4
    .parameter "bytesSent"
    .parameter "bytesReceived"
    .parameter "result"

    .prologue
    .line 55
    const v0, 0x318f9

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Sync"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 56
    return-void
.end method

.method public abstract onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 14
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 29
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    .line 30
    .local v12, uid:I
    invoke-static {v12}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v9

    .line 31
    .local v9, initialTxBytes:J
    invoke-static {v12}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v7

    .line 33
    .local v7, initialRxBytes:J
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/common/LoggingThreadedSyncAdapter;->onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    invoke-static {v12}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v1

    sub-long v2, v1, v9

    invoke-static {v12}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    :goto_0
    sub-long/2addr v4, v7

    move-object v1, p0

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/common/LoggingThreadedSyncAdapter;->onLogSyncDetails(JJLandroid/content/SyncResult;)V

    .line 40
    return-void

    .line 34
    :catch_0
    move-exception v11

    .line 35
    .local v11, se:Landroid/database/SQLException;
    :try_start_1
    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    invoke-static {v12}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v1

    sub-long v2, v1, v9

    invoke-static {v12}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    goto :goto_0

    .end local v11           #se:Landroid/database/SQLException;
    :catchall_0
    move-exception v1

    move-object v13, v1

    invoke-static {v12}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v1

    sub-long v2, v1, v9

    invoke-static {v12}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    sub-long/2addr v4, v7

    move-object v1, p0

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/common/LoggingThreadedSyncAdapter;->onLogSyncDetails(JJLandroid/content/SyncResult;)V

    throw v13
.end method
