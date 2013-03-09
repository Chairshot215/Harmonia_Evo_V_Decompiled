.class final Lcom/htc/server/ulog/EventLogStore;
.super Ljava/lang/Object;
.source "EventLogStore.java"


# static fields
.field private static final MEM_CAPACITY:I = 0x40000

.field private static final TAG:Ljava/lang/String; = "UserBehaviorLoggingService"


# instance fields
.field private dropboxManager:Landroid/os/DropBoxManager;

.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

.field private mFeedbackPolicy:Lcom/htc/utils/ulog/UPolicy;

.field private mIsStopped:Z

.field private mULogDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/utils/ulog/ULogData;",
            ">;"
        }
    .end annotation
.end field

.field private mULogDataSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/server/ulog/DatabaseHelper;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataSize:I

    iput-object p1, p0, Lcom/htc/server/ulog/EventLogStore;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/server/ulog/EventLogStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->dropboxManager:Landroid/os/DropBoxManager;

    new-instance v0, Lcom/htc/utils/ulog/UPolicy;

    const-string v1, "com.htc.feedback"

    invoke-direct {v0, v1}, Lcom/htc/utils/ulog/UPolicy;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mFeedbackPolicy:Lcom/htc/utils/ulog/UPolicy;

    return-void
.end method

.method private clear()V
    .locals 1

    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataSize:I

    return-void
.end method


# virtual methods
.method public addLog(Lcom/htc/utils/ulog/ParcelableULogData;)V
    .locals 3

    invoke-static {p1}, Lcom/htc/server/ulog/HTCUBLogStore;->logRosieLayout(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/utils/ulog/UPolicy;->canLogUserProfiling(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataSize:I

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    const/high16 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/server/ulog/EventLogStore;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataSize:I

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataSize:I

    const-string v0, "UserBehaviorLoggingService"

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "UserBehaviorLoggingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EventLogStore::addLog] The policy is disabled. AppId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/utils/ulog/ParcelableULogData;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 7

    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    const-string v1, "HTC_ULOGDATA"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/ulog/DatabaseHelper;->addEventQueueRecord(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->dropboxManager:Landroid/os/DropBoxManager;

    const-string v1, "HTC_ULOGDATA"

    iget-object v2, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataList:Ljava/util/List;

    invoke-static {v2}, Lcom/htc/server/ulog/Utils;->toBytesEx(Ljava/util/List;)[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/os/DropBoxManager;->addData(Ljava/lang/String;[BIJ)V

    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "[flush4CS] flush to dropbox"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/server/ulog/Utils;->isEnginneringROM()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/htc/server/ulog/EventLogStore;->mFeedbackPolicy:Lcom/htc/utils/ulog/UPolicy;

    const-string v2, "HTC_UB"

    const-string v3, "enable"

    invoke-virtual {v1, v2, v3}, Lcom/htc/utils/ulog/UPolicy;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    const-string v1, "HTC_UP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/ulog/DatabaseHelper;->add_HTC_UB_QueueRecord(Ljava/lang/String;J)V

    :try_start_0
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->dropboxManager:Landroid/os/DropBoxManager;

    const-string v1, "HTC_UP"

    iget-object v2, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataList:Ljava/util/List;

    invoke-static {v2}, Lcom/htc/server/ulog/Utils;->toS3Log(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "[[flush4CS]][S3][policy is passed] flush to dropbox"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/server/ulog/EventLogStore;->mULogDataSize:I

    :cond_0
    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "[[flush4CS]][S3][policy doesn\'t pass]"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/ulog/EventLogStore;->mIsStopped:Z

    return-void
.end method

.method public upload(I)V
    .locals 12

    const/4 v11, 0x1

    iget-boolean v7, p0, Lcom/htc/server/ulog/EventLogStore;->mIsStopped:Z

    if-eqz v7, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/htc/server/ulog/EventLogStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    invoke-virtual {v7}, Lcom/htc/server/ulog/DatabaseHelper;->getEventQueueRecords()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v1, :cond_4

    if-lez v2, :cond_3

    const/4 v4, 0x0

    new-array v5, v2, [Ljava/lang/String;

    new-array v6, v2, [J

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v6, v4

    const-string v7, "UserBehaviorLoggingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[To CS] sync "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-wide v9, v6, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_5

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.htc.intent.action.USER_PROFILING"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "fromDropBox"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "tag"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "time"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string v7, "msg"

    const-string v8, "Sync user behavior logs"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-ne p1, v11, :cond_2

    const-string v7, "triggerType"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    iget-object v7, p0, Lcom/htc/server/ulog/EventLogStore;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/htc/server/ulog/EventLogStore;->mDatabaseHelper:Lcom/htc/server/ulog/DatabaseHelper;

    const-string v8, "HTC_ULOGDATA"

    invoke-virtual {v7, v8}, Lcom/htc/server/ulog/DatabaseHelper;->clearEventQueueRecords(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
