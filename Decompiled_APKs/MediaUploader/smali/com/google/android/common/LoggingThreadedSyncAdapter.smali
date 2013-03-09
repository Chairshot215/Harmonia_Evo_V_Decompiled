.class public abstract Lcom/google/android/common/LoggingThreadedSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "LoggingThreadedSyncAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Sync"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onLogSyncDetails(JJLandroid/content/SyncResult;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
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

    .line 48
    return-void
.end method

.method public abstract onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 24
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v1

    .line 25
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    .line 27
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/common/LoggingThreadedSyncAdapter;->onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5

    sub-long v1, v5, v1

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v5

    sub-long v3, v5, v3

    move-object v0, p0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/common/LoggingThreadedSyncAdapter;->onLogSyncDetails(JJLandroid/content/SyncResult;)V

    .line 32
    return-void

    .line 29
    :catchall_0
    move-exception v6

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v7

    sub-long v1, v7, v1

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v7

    sub-long v3, v7, v3

    move-object v0, p0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/common/LoggingThreadedSyncAdapter;->onLogSyncDetails(JJLandroid/content/SyncResult;)V

    throw v6
.end method
