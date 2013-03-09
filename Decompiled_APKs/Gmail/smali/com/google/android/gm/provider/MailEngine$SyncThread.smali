.class Lcom/google/android/gm/provider/MailEngine$SyncThread;
.super Ljava/lang/Object;
.source "MailEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 4762
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4763
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    const/4 v0, 0x1

    const/4 v12, 0x0

    .line 4766
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z
    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$2600(Lcom/google/android/gm/provider/MailEngine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4807
    :goto_0
    return-void

    .line 4773
    :cond_0
    const-wide/16 v8, 0x0

    .line 4774
    .local v8, startTime:J
    const/4 v7, 0x0

    .line 4775
    .local v7, foregroundSync:Z
    :try_start_0
    const-string v1, "Gmail"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4776
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 4777
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mSyncThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$2700(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_3

    move v7, v0

    .line 4780
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mSyncLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$2800(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4781
    :try_start_1
    const-string v0, "Gmail"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4782
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v10, v0, v8

    .line 4783
    .local v10, syncLockWaitTime:J
    const-wide/16 v0, 0x1f4

    cmp-long v0, v10, v0

    if-lez v0, :cond_2

    .line 4784
    const-string v0, "Gmail"

    const-string v1, "Blocked while waiting for mSyncLock in MailEngine.SyncThread.run() %d ms\n  foreground Sync: %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4789
    .end local v10           #syncLockWaitTime:J
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z
    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->access$2602(Lcom/google/android/gm/provider/MailEngine;Z)Z

    .line 4790
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;

    invoke-direct {v3}, Lcom/google/android/gm/provider/MailEngine$SyncInfo;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    #calls: Lcom/google/android/gm/provider/MailEngine;->runSyncLoop(Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;Landroid/content/SyncResult;Landroid/os/Bundle;)Z
    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/provider/MailEngine;->access$2900(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;Landroid/content/SyncResult;Landroid/os/Bundle;)Z

    .line 4791
    const-string v0, "Gmail"

    const-string v1, "Run sync loop complete."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4792
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4802
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #setter for: Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z
    invoke-static {v0, v12}, Lcom/google/android/gm/provider/MailEngine;->access$2602(Lcom/google/android/gm/provider/MailEngine;Z)Z

    .line 4803
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mSyncThreadLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$3000(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4804
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/gm/provider/MailEngine;->mSyncThread:Ljava/lang/Thread;
    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->access$2702(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 4805
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    move v7, v12

    .line 4777
    goto :goto_1

    .line 4792
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_4 .. :try_end_4} :catch_2

    .line 4793
    :catch_0
    move-exception v6

    .line 4794
    .local v6, e:Ljava/io/IOException;
    :try_start_5
    const-string v0, "Gmail"

    const-string v1, "Sync thread encountered an IOException: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 4802
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #setter for: Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z
    invoke-static {v0, v12}, Lcom/google/android/gm/provider/MailEngine;->access$2602(Lcom/google/android/gm/provider/MailEngine;Z)Z

    .line 4803
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mSyncThreadLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$3000(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4804
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/gm/provider/MailEngine;->mSyncThread:Ljava/lang/Thread;
    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->access$2702(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 4805
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 4795
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 4796
    .local v6, e:Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
    :try_start_7
    const-string v0, "Gmail"

    const-string v1, "Sync thread encountered an AuthenticationException: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v6}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 4802
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #setter for: Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z
    invoke-static {v0, v12}, Lcom/google/android/gm/provider/MailEngine;->access$2602(Lcom/google/android/gm/provider/MailEngine;Z)Z

    .line 4803
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mSyncThreadLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$3000(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4804
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/gm/provider/MailEngine;->mSyncThread:Ljava/lang/Thread;
    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->access$2702(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 4805
    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 4798
    .end local v6           #e:Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
    :catch_2
    move-exception v6

    .line 4799
    .local v6, e:Lcom/google/android/gm/provider/MailSync$ResponseParseException;
    :try_start_9
    const-string v0, "Gmail"

    const-string v1, "Sync thread encountered a ResponseParseException: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v6}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 4802
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #setter for: Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z
    invoke-static {v0, v12}, Lcom/google/android/gm/provider/MailEngine;->access$2602(Lcom/google/android/gm/provider/MailEngine;Z)Z

    .line 4803
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mSyncThreadLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$3000(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4804
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/gm/provider/MailEngine;->mSyncThread:Ljava/lang/Thread;
    invoke-static {v0, v2}, Lcom/google/android/gm/provider/MailEngine;->access$2702(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 4805
    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    .line 4802
    .end local v6           #e:Lcom/google/android/gm/provider/MailSync$ResponseParseException;
    :catchall_5
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #setter for: Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z
    invoke-static {v1, v12}, Lcom/google/android/gm/provider/MailEngine;->access$2602(Lcom/google/android/gm/provider/MailEngine;Z)Z

    .line 4803
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mSyncThreadLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$3000(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4804
    :try_start_b
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$SyncThread;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/gm/provider/MailEngine;->mSyncThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/google/android/gm/provider/MailEngine;->access$2702(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 4805
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v0
.end method
