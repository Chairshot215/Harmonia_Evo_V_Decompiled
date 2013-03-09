.class public abstract Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;
.super Lcom/google/android/common/LoggingThreadedSyncAdapter;
.source "TempProviderSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    }
.end annotation


# instance fields
.field private volatile mAdapterSyncStarted:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mIsCanceled:Z

.field private final mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

.field private volatile mProviderSyncStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 1
    .parameter "context"
    .parameter "provider"

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/common/LoggingThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z

    .line 41
    iput-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    .line 42
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private runSyncLoop(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 28
    .parameter "account"
    .parameter "extras"
    .parameter "syncResult"

    .prologue
    .line 254
    new-instance v21, Landroid/util/TimingLogger;

    const-string v2, "SyncProfiling"

    const-string v5, "sync"

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v5}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v21, syncTimer:Landroid/util/TimingLogger;
    const-string v2, "start"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 256
    const/4 v10, 0x0

    .line 257
    .local v10, loopCount:I
    const/16 v22, 0x0

    .line 259
    .local v22, tooManyGetServerDiffsAttempts:Z
    const-string v2, "deletions_override"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 262
    .local v16, overrideTooManyDeletions:Z
    const-string v2, "discard_deletions"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 264
    .local v9, discardLocalDeletions:Z
    const-string v2, "upload"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 266
    .local v23, uploadOnly:Z
    const/4 v4, 0x0

    .line 267
    .local v4, serverDiffs:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    new-instance v20, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;-><init>()V

    .line 269
    .local v20, result:Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;
    if-nez v23, :cond_0

    move v11, v10

    .line 278
    .end local v10           #loopCount:I
    .local v11, loopCount:I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_30

    .line 280
    add-int/lit8 v10, v11, 0x1

    .end local v11           #loopCount:I
    .restart local v10       #loopCount:I
    const/16 v2, 0x14

    if-ne v11, v2, :cond_7

    .line 281
    :try_start_1
    const-string v2, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: Hit max loop count while getting server diffs "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/16 v22, 0x1

    .line 372
    :cond_0
    :goto_1
    const/4 v10, 0x0

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->isReadOnly()Z

    move-result v19

    .line 374
    .local v19, readOnly:Z
    const-wide/16 v17, 0x0

    .line 375
    .local v17, previousNumModifications:J
    if-eqz v4, :cond_1

    .line 376
    invoke-virtual {v4}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 377
    const/4 v4, 0x0

    .line 383
    :cond_1
    if-eqz v9, :cond_2

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v2}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-result-object v4

    .line 385
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->initTempProvider(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 386
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->writeSyncData(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 389
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z

    if-nez v2, :cond_23

    .line 393
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-eqz v2, :cond_3

    .line 394
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v2}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 395
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    .line 397
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncResult;->clear()V

    .line 398
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-eqz v19, :cond_20

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v5, v4, v2, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->merge(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Landroid/content/SyncResult;)V

    .line 399
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_21

    .line 472
    if-eqz v9, :cond_4

    .line 473
    const/4 v2, 0x1

    move-object/from16 v0, p3

    iput-boolean v2, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 475
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 476
    :cond_5
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-eqz v2, :cond_6

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v2}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 477
    :cond_6
    const-string v2, "stop"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {v21 .. v21}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 480
    .end local v17           #previousNumModifications:J
    .end local v19           #readOnly:Z
    :goto_4
    return-void

    .line 292
    :cond_7
    if-eqz v4, :cond_8

    :try_start_2
    invoke-virtual {v4}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 293
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v2}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-result-object v4

    .line 296
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->initTempProvider(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->createSyncInfo()Ljava/lang/Object;

    move-result-object v6

    .line 298
    .local v6, syncInfo:Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;

    move-result-object v3

    .line 301
    .local v3, syncData:Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    if-nez v3, :cond_9

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->wipeAccount(Landroid/accounts/Account;)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->newSyncData()Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;

    move-result-object v3

    .line 305
    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncResult;->clear()V

    .line 306
    const-string v2, "Sync"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 307
    const-string v2, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: running getServerDiffs using syncData "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    .line 310
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->getServerDiffs(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V

    .line 313
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_e

    .line 472
    if-eqz v9, :cond_b

    .line 473
    const/4 v2, 0x1

    move-object/from16 v0, p3

    iput-boolean v2, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 475
    :cond_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 476
    :cond_c
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-eqz v2, :cond_d

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v2}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 477
    :cond_d
    const-string v2, "stop"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {v21 .. v21}, Landroid/util/TimingLogger;->dumpToLog()V

    goto/16 :goto_4

    .line 314
    :cond_e
    :try_start_3
    const-string v2, "Sync"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 315
    const-string v2, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: result: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_f
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncResult;->hasError()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_13

    .line 472
    if-eqz v9, :cond_10

    .line 473
    const/4 v2, 0x1

    move-object/from16 v0, p3

    iput-boolean v2, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 475
    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 476
    :cond_11
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-eqz v2, :cond_12

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v2}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 477
    :cond_12
    const-string v2, "stop"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {v21 .. v21}, Landroid/util/TimingLogger;->dumpToLog()V

    goto/16 :goto_4

    .line 318
    :cond_13
    :try_start_4
    move-object/from16 v0, p3

    iget-boolean v2, v0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    if-eqz v2, :cond_14

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->wipeAccount(Landroid/accounts/Account;)V

    move v11, v10

    .line 324
    .end local v10           #loopCount:I
    .restart local v11       #loopCount:I
    goto/16 :goto_0

    .line 328
    .end local v11           #loopCount:I
    .restart local v10       #loopCount:I
    :cond_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->writeSyncData(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 331
    const-string v2, "Sync"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 332
    const-string v2, "Sync"

    const-string v5, "runSyncLoop: running merge"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v4, v5, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->merge(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Landroid/content/SyncResult;)V

    .line 335
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_19

    .line 472
    if-eqz v9, :cond_16

    .line 473
    const/4 v2, 0x1

    move-object/from16 v0, p3

    iput-boolean v2, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 475
    :cond_16
    if-eqz v4, :cond_17

    invoke-virtual {v4}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 476
    :cond_17
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-eqz v2, :cond_18

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v2}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 477
    :cond_18
    const-string v2, "stop"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {v21 .. v21}, Landroid/util/TimingLogger;->dumpToLog()V

    goto/16 :goto_4

    .line 336
    :cond_19
    :try_start_5
    const-string v2, "Sync"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 337
    const-string v2, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: result: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_1a
    move-object/from16 v0, p3

    iget-boolean v2, v0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    if-nez v2, :cond_1e

    .line 342
    const-string v2, "Sync"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    const-string v2, "Sync"

    const-string v5, "runSyncLoop: fetched all data, moving on"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 472
    .end local v3           #syncData:Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .end local v6           #syncInfo:Ljava/lang/Object;
    :catchall_0
    move-exception v2

    :goto_5
    if-eqz v9, :cond_1b

    .line 473
    const/4 v5, 0x1

    move-object/from16 v0, p3

    iput-boolean v5, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 475
    :cond_1b
    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 476
    :cond_1c
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-eqz v5, :cond_1d

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 477
    :cond_1d
    const-string v5, "stop"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {v21 .. v21}, Landroid/util/TimingLogger;->dumpToLog()V

    throw v2

    .line 347
    .restart local v3       #syncData:Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .restart local v6       #syncInfo:Ljava/lang/Object;
    :cond_1e
    :try_start_6
    const-string v2, "Sync"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 348
    const-string v2, "Sync"

    const-string v5, "runSyncLoop: more data to fetch, looping"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move v11, v10

    .line 350
    .end local v10           #loopCount:I
    .restart local v11       #loopCount:I
    goto/16 :goto_0

    .end local v3           #syncData:Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .end local v6           #syncInfo:Ljava/lang/Object;
    .end local v11           #loopCount:I
    .restart local v10       #loopCount:I
    .restart local v17       #previousNumModifications:J
    .restart local v19       #readOnly:Z
    :cond_20
    move-object/from16 v2, v20

    .line 398
    goto/16 :goto_3

    .line 400
    :cond_21
    const-string v2, "Sync"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 401
    const-string v2, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: result: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_22
    if-eqz v19, :cond_28

    const/4 v8, 0x0

    .line 406
    .local v8, clientDiffs:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    :goto_6
    if-nez v8, :cond_29

    .line 466
    .end local v8           #clientDiffs:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    :cond_23
    :goto_7
    move-object/from16 v0, p3

    iget-boolean v2, v0, Landroid/content/SyncResult;->tooManyRetries:Z

    or-int v2, v2, v22

    move-object/from16 v0, p3

    iput-boolean v2, v0, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 467
    const-string v2, "Sync"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 468
    const-string v2, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: final result: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 472
    :cond_24
    if-eqz v9, :cond_25

    .line 473
    const/4 v2, 0x1

    move-object/from16 v0, p3

    iput-boolean v2, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 475
    :cond_25
    if-eqz v4, :cond_26

    invoke-virtual {v4}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 476
    :cond_26
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-eqz v2, :cond_27

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v2}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 477
    :cond_27
    const-string v2, "stop"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {v21 .. v21}, Landroid/util/TimingLogger;->dumpToLog()V

    goto/16 :goto_4

    .line 404
    :cond_28
    :try_start_7
    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    goto :goto_6

    .line 412
    .restart local v8       #clientDiffs:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    :cond_29
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v2, Landroid/content/SyncStats;->numUpdates:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v2, Landroid/content/SyncStats;->numDeletes:J

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v2, Landroid/content/SyncStats;->numInserts:J

    move-wide/from16 v26, v0

    add-long v14, v24, v26

    .line 417
    .local v14, numModifications:J
    cmp-long v2, v14, v17

    if-gez v2, :cond_2f

    .line 418
    const/4 v10, 0x0

    move v11, v10

    .line 420
    .end local v10           #loopCount:I
    .restart local v11       #loopCount:I
    :goto_8
    move-wide/from16 v17, v14

    .line 423
    add-int/lit8 v10, v11, 0x1

    .end local v11           #loopCount:I
    .restart local v10       #loopCount:I
    const/16 v2, 0xa

    if-lt v11, v2, :cond_2a

    .line 424
    const-string v2, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: Hit max loop count while syncing "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v2, 0x1

    move-object/from16 v0, p3

    iput-boolean v2, v0, Landroid/content/SyncResult;->tooManyRetries:Z

    goto/16 :goto_7

    .line 430
    :cond_2a
    if-nez v16, :cond_2b

    if-nez v9, :cond_2b

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->hasTooManyDeletions(Landroid/content/SyncStats;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 436
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v2, Landroid/content/SyncStats;->numDeletes:J

    .line 437
    .local v12, numDeletes:J
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v2}, Landroid/content/SyncStats;->clear()V

    .line 438
    const/4 v2, 0x1

    move-object/from16 v0, p3

    iput-boolean v2, v0, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 439
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iput-wide v12, v2, Landroid/content/SyncStats;->numDeletes:J

    goto/16 :goto_7

    .line 444
    .end local v12           #numDeletes:J
    :cond_2b
    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 445
    :cond_2c
    invoke-virtual {v8}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-result-object v4

    .line 446
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->initTempProvider(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncResult;->clear()V

    .line 448
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v8, v4, v1, v9}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->sendClientDiffs(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V

    .line 450
    const-string v2, "Sync"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 451
    const-string v2, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: result: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_2d
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 455
    const-string v2, "Sync"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 456
    const-string v2, "Sync"

    const-string v5, "runSyncLoop: No data from client diffs merge"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 460
    :cond_2e
    const-string v2, "Sync"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    const-string v2, "Sync"

    const-string v5, "runSyncLoop: made some progress, looping"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 472
    .end local v8           #clientDiffs:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    .end local v10           #loopCount:I
    .end local v14           #numModifications:J
    .end local v17           #previousNumModifications:J
    .end local v19           #readOnly:Z
    .restart local v11       #loopCount:I
    :catchall_1
    move-exception v2

    move v10, v11

    .end local v11           #loopCount:I
    .restart local v10       #loopCount:I
    goto/16 :goto_5

    .restart local v8       #clientDiffs:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    .restart local v14       #numModifications:J
    .restart local v17       #previousNumModifications:J
    .restart local v19       #readOnly:Z
    :cond_2f
    move v11, v10

    .end local v10           #loopCount:I
    .restart local v11       #loopCount:I
    goto/16 :goto_8

    .end local v8           #clientDiffs:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    .end local v14           #numModifications:J
    .end local v17           #previousNumModifications:J
    .end local v19           #readOnly:Z
    :cond_30
    move v10, v11

    .end local v11           #loopCount:I
    .restart local v10       #loopCount:I
    goto/16 :goto_1
.end method

.method private sync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 11
    .parameter "account"
    .parameter "authority"
    .parameter "extras"
    .parameter "syncResult"

    .prologue
    const-wide/16 v9, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 183
    iput-boolean v5, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z

    .line 185
    iput-boolean v5, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 186
    iput-boolean v5, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 189
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v1

    .line 190
    .local v1, isSyncable:I
    if-gez v1, :cond_0

    .line 192
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->getIsSyncable(Landroid/accounts/Account;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v4

    .line 193
    :goto_0
    invoke-static {p1, p2, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2

    .line 204
    :cond_0
    :goto_1
    const-string v6, "initialize"

    invoke-virtual {p3, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 251
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v5

    .line 192
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/io/IOException;
    iget-object v6, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_1

    .line 196
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 197
    .local v0, e:Landroid/accounts/AuthenticatorException;
    iget-object v6, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v6, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v7, v9

    iput-wide v7, v6, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_1

    .line 209
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :cond_3
    if-lez v1, :cond_1

    .line 213
    const-string v6, "force"

    invoke-virtual {p3, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 216
    .local v2, manualSync:Z
    :try_start_1
    iget-object v6, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v6, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStart(Landroid/accounts/Account;)V

    .line 217
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 218
    invoke-virtual {p0, p1, v2, p4}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncStarting(Landroid/accounts/Account;ZLandroid/content/SyncResult;)V

    .line 219
    invoke-virtual {p4}, Landroid/content/SyncResult;->hasError()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-eqz v6, :cond_5

    .line 242
    iget-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    if-eqz v4, :cond_4

    .line 243
    iput-boolean v5, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 244
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncEnding(Z)V

    .line 246
    :cond_4
    iget-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    if-eqz v4, :cond_1

    .line 247
    iput-boolean v5, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 248
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v4, v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStop(Z)V

    goto :goto_2

    .line 222
    :cond_5
    const/4 v6, 0x1

    :try_start_2
    iput-boolean v6, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 223
    iget-boolean v6, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_7

    .line 242
    iget-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    if-eqz v4, :cond_6

    .line 243
    iput-boolean v5, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 244
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncEnding(Z)V

    .line 246
    :cond_6
    iget-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    if-eqz v4, :cond_1

    .line 247
    iput-boolean v5, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 248
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v4, v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStop(Z)V

    goto :goto_2

    .line 226
    :cond_7
    :try_start_3
    const-string v6, "SyncTracing"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    .line 228
    .local v3, syncTracingEnabled:Z
    if-eqz v3, :cond_8

    .line 229
    :try_start_4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 230
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synctrace."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 233
    :cond_8
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->runSyncLoop(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    if-eqz v3, :cond_9

    :try_start_5
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 237
    :cond_9
    invoke-virtual {p4}, Landroid/content/SyncResult;->hasError()Z

    move-result v6

    if-nez v6, :cond_e

    :goto_3
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncEnding(Z)V

    .line 238
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 239
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStop(Z)V

    .line 240
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 242
    iget-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    if-eqz v4, :cond_a

    .line 243
    iput-boolean v5, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 244
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncEnding(Z)V

    .line 246
    :cond_a
    iget-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    if-eqz v4, :cond_1

    .line 247
    iput-boolean v5, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 248
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v4, v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStop(Z)V

    goto/16 :goto_2

    .line 235
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_b

    :try_start_6
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    :cond_b
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 242
    .end local v3           #syncTracingEnabled:Z
    :catchall_1
    move-exception v4

    iget-boolean v6, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    if-eqz v6, :cond_c

    .line 243
    iput-boolean v5, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 244
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncEnding(Z)V

    .line 246
    :cond_c
    iget-boolean v6, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    if-eqz v6, :cond_d

    .line 247
    iput-boolean v5, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 248
    iget-object v6, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v6, v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStop(Z)V

    :cond_d
    throw v4

    .restart local v3       #syncTracingEnabled:Z
    :cond_e
    move v4, v5

    .line 237
    goto :goto_3

    .line 198
    .end local v2           #manualSync:Z
    .end local v3           #syncTracingEnabled:Z
    :catch_2
    move-exception v6

    goto/16 :goto_1
.end method


# virtual methods
.method protected createSyncInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getIsSyncable(Landroid/accounts/Account;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation
.end method

.method public abstract getServerDiffs(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V
.end method

.method protected hasTooManyDeletions(Landroid/content/SyncStats;)Z
    .locals 11
    .parameter "stats"

    .prologue
    const-wide/16 v4, 0x0

    .line 483
    iget-wide v2, p1, Landroid/content/SyncStats;->numEntries:J

    .line 484
    .local v2, numEntries:J
    iget-wide v0, p1, Landroid/content/SyncStats;->numDeletes:J

    .line 486
    .local v0, numDeletedEntries:J
    cmp-long v7, v0, v4

    if-nez v7, :cond_0

    .line 490
    .local v4, percentDeleted:J
    :goto_0
    const-wide/16 v7, 0x5

    cmp-long v7, v0, v7

    if-lez v7, :cond_1

    const-wide/16 v7, 0x14

    cmp-long v7, v4, v7

    if-lez v7, :cond_1

    const/4 v6, 0x1

    .line 493
    .local v6, tooManyDeletions:Z
    :goto_1
    return v6

    .line 486
    .end local v4           #percentDeleted:J
    .end local v6           #tooManyDeletions:Z
    :cond_0
    const-wide/16 v7, 0x64

    mul-long/2addr v7, v0

    add-long v9, v2, v0

    div-long v4, v7, v9

    goto :goto_0

    .line 490
    .restart local v4       #percentDeleted:J
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected initTempProvider(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 0
    .parameter "cp"

    .prologue
    .line 150
    return-void
.end method

.method public abstract isReadOnly()Z
.end method

.method public newSyncData()Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onAccountsChanged([Landroid/accounts/Account;)V
.end method

.method public onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 3
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 167
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 169
    :try_start_0
    invoke-direct {p0, p1, p3, p2, p5}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->sync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "Sync"

    const-string v2, "Sync failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p5, Landroid/content/SyncResult;->databaseError:Z

    goto :goto_0
.end method

.method public onSyncCanceled()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z

    .line 178
    iget-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncCanceled()V

    .line 179
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncCanceled()V

    .line 180
    :cond_1
    return-void
.end method

.method public abstract onSyncEnding(Z)V
.end method

.method public abstract onSyncStarting(Landroid/accounts/Account;ZLandroid/content/SyncResult;)V
.end method

.method public readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .locals 1
    .parameter "contentProvider"

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract sendClientDiffs(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V
.end method

.method public writeSyncData(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 0
    .parameter "syncData"
    .parameter "contentProvider"

    .prologue
    .line 140
    return-void
.end method
