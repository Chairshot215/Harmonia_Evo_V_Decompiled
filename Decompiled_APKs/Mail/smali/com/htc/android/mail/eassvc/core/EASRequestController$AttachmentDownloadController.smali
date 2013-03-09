.class Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;
.super Ljava/lang/Object;
.source "EASRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachmentDownloadController"
.end annotation


# instance fields
.field mFetchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;",
            ">;"
        }
    .end annotation
.end field

.field mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/SyncManager;)V
    .locals 1
    .parameter
    .parameter "syncManager"

    .prologue
    .line 2313
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    .line 2314
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    .line 2315
    return-void
.end method

.method private checkExternalStorageFull(JLcom/htc/android/mail/eassvc/core/EASRequest;)Z
    .locals 7
    .parameter "fileSize"
    .parameter "req"

    .prologue
    const/4 v3, 0x1

    .line 2379
    const-wide/16 v4, -0x1

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    .line 2396
    :goto_0
    return v3

    .line 2382
    :cond_0
    iget-object v1, p3, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 2383
    .local v1, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v4, p3, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.attach.file_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2384
    .local v2, filename:Ljava/lang/String;
    iget-object v4, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->isSDsave()I

    move-result v0

    .line 2386
    .local v0, enableSDSave:I
    if-ne v0, v3, :cond_2

    .line 2387
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {p1, p2, v0, v4}, Lcom/htc/android/mail/MailCommon;->checkAvailableToDownloadFile(JILandroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2388
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "EASRequestController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insufficient storage to download attachment, enableSDSave:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x32d

    invoke-static {v4, v1, v5}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->showSyncFailNotification(Landroid/content/Context;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;I)V

    goto :goto_0

    .line 2396
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isDuplicateAttachment(Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    .line 2319
    const/4 v0, 0x0

    .line 2320
    .local v0, bRet:Z
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2321
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;

    .line 2322
    .local v1, fetchItem:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;
    iget-wide v5, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->accountId:J

    iget-wide v7, p1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->accountId:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->partId:Ljava/lang/String;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->partId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->savePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->savePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2327
    const/4 v0, 0x1

    .line 2331
    .end local v1           #fetchItem:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;
    :cond_1
    monitor-exit v4

    .line 2332
    return v0

    .line 2331
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public cancelFetchEMailAttach(JLjava/lang/String;)V
    .locals 8
    .parameter "accountId"
    .parameter "partId"

    .prologue
    .line 2350
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2351
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;

    .line 2352
    .local v2, item:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;
    iget-wide v6, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->accountId:J

    cmp-long v4, v6, p1

    if-nez v4, :cond_0

    .line 2355
    iget-object v4, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->partId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->partId:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2356
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->isCanceled:Z

    .line 2357
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "EASRequestController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cancel fetch attachment item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->partId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, p1, p2, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2358
    :cond_1
    iget-object v4, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v4, :cond_0

    .line 2359
    iget-object v0, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 2360
    .local v0, httpPost:Lorg/apache/http/client/methods/HttpPost;
    iget-object v3, v2, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->partId:Ljava/lang/String;

    .line 2363
    .local v3, key:Ljava/lang/String;
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController$1;

    invoke-direct {v6, p0, v3, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController$1;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;Ljava/lang/String;Lorg/apache/http/client/methods/HttpPost;)V

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2375
    .end local v0           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;
    .end local v3           #key:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2376
    return-void
.end method

.method public getAttachment(Lcom/htc/android/mail/eassvc/core/EASRequest;Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;)V
    .locals 24
    .parameter "request"
    .parameter "specAttachItem"

    .prologue
    .line 2455
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-nez v19, :cond_3

    .line 2456
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v19

    if-eqz v19, :cond_0

    const-string v19, "EASRequestController"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v20, v0

    const-string v22, "> getAttachment"

    invoke-static/range {v19 .. v22}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2460
    :cond_0
    :goto_0
    const/16 v16, 0x0

    .line 2462
    .local v16, nRet:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v19

    const-string v20, "MAIL_BLK"

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v17

    .line 2463
    .local v17, powerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v19

    const-string v20, "MAIL_BLK"

    invoke-static/range {v19 .. v20}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquireWifiLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;

    move-result-object v18

    .line 2465
    .local v18, wifiLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 2466
    .local v10, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v3, v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 2467
    .local v3, account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    const/4 v13, 0x0

    .line 2469
    .local v13, httpClient:Landroid/net/http/AndroidHttpClient;
    if-eqz p2, :cond_4

    move-object/from16 v4, p2

    .line 2472
    .local v4, attachItem:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v19

    iget-wide v0, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->createHttpClient(Landroid/content/Context;J)Landroid/net/http/AndroidHttpClient;

    move-result-object v13

    .line 2474
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    iput-wide v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->accountId:J

    .line 2475
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "parameter.attach.file_ref"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    .line 2476
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "parameter.attach.part_id"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->partId:Ljava/lang/String;

    .line 2477
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "parameter.attach.global"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    iput-boolean v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->isGlobalAttach:Z

    .line 2478
    iget-object v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 2479
    const-string v19, "EASRequestController"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v20, v0

    const-string v22, "getAttachment: reference is empty"

    invoke-static/range {v19 .. v22}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 2529
    invoke-static/range {v18 .. v18}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2530
    invoke-static/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2531
    if-eqz v13, :cond_1

    .line 2532
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2534
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2535
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2536
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2538
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 2539
    .local v15, msg:Landroid/os/Message;
    const/16 v19, 0x1fe

    move/from16 v0, v19

    iput v0, v15, Landroid/os/Message;->what:I

    .line 2540
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v15, Landroid/os/Message;->arg1:I

    .line 2541
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2542
    .local v6, bundle:Landroid/os/Bundle;
    const-string v19, "ret"

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2543
    const-string v19, "accountId"

    iget-object v0, v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2544
    const-string v19, "filereference"

    iget-object v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    invoke-virtual {v15, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 2554
    :cond_2
    :goto_2
    return-void

    .line 2458
    .end local v3           #account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .end local v4           #attachItem:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v10           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v13           #httpClient:Landroid/net/http/AndroidHttpClient;
    .end local v15           #msg:Landroid/os/Message;
    .end local v16           #nRet:I
    .end local v17           #powerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    .end local v18           #wifiLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    :cond_3
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v19

    if-eqz v19, :cond_0

    const-string v19, "EASRequestController"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v20, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "> getAttachment("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v19 .. v22}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 2469
    .restart local v3       #account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .restart local v10       #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .restart local v13       #httpClient:Landroid/net/http/AndroidHttpClient;
    .restart local v16       #nRet:I
    .restart local v17       #powerLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    .restart local v18       #wifiLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;
    :cond_4
    new-instance v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;

    invoke-direct {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;-><init>()V

    goto/16 :goto_1

    .line 2483
    .restart local v4       #attachItem:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;
    :cond_5
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "parameter.attach.file_name"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2484
    .local v12, filename:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "parameter.attach.attachtype"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2485
    .local v5, attachType:I
    iget-object v0, v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->isSDsave()I

    move-result v8

    .line 2486
    .local v8, enableSDSave:I
    invoke-static {v12}, Lcom/htc/android/mail/MailCommon;->eraseInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v8, v12, v0, v5}, Lcom/htc/android/mail/MailCommon;->checkFileExist(ILjava/lang/String;Landroid/content/Context;I)I

    move-result v19

    if-nez v19, :cond_6

    .line 2488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v8, v12, v0, v5}, Lcom/htc/android/mail/MailCommon;->getSuggestFileName(ILjava/lang/String;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    .line 2490
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v8, v1, v12, v5}, Lcom/htc/android/mail/util/StorageControl;->getAttachmentFilePath(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->savePath:Ljava/lang/String;

    .line 2492
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->isDuplicateAttachment(Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 2493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2498
    :goto_3
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 2499
    .restart local v15       #msg:Landroid/os/Message;
    const/16 v19, 0x1fe

    move/from16 v0, v19

    iput v0, v15, Landroid/os/Message;->what:I

    .line 2500
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v15, Landroid/os/Message;->arg1:I

    .line 2501
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2502
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v19, "accountId"

    iget-object v0, v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2503
    const-string v19, "filereference"

    iget-object v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    invoke-virtual {v15, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 2508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->requestController:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10, v4, v13}, Lcom/htc/android/mail/eassvc/core/SyncManager;->getAttachment(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;Landroid/net/http/AndroidHttpClient;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result v16

    .line 2511
    if-lez v8, :cond_8

    :try_start_3
    sget v19, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    move/from16 v0, v19

    if-eq v5, v0, :cond_8

    .line 2512
    iget-object v0, v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-boolean v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->isGlobalAttach:Z

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->getAttachmentMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    .line 2513
    .local v14, mimeType:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 2514
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v19

    if-eqz v19, :cond_7

    const-string v19, "EASRequestController"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "scanSingleFile: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v10, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2515
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v19, v0

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v19

    iget-object v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->savePath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/htc/android/mail/MailCommon;->requestMediaScan(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    .line 2529
    .end local v14           #mimeType:Ljava/lang/String;
    :cond_8
    :goto_4
    invoke-static/range {v18 .. v18}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2530
    invoke-static/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2531
    if-eqz v13, :cond_9

    .line 2532
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2534
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2535
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2536
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 2538
    new-instance v15, Landroid/os/Message;

    .end local v15           #msg:Landroid/os/Message;
    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 2539
    .restart local v15       #msg:Landroid/os/Message;
    const/16 v19, 0x1fe

    move/from16 v0, v19

    iput v0, v15, Landroid/os/Message;->what:I

    .line 2540
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v15, Landroid/os/Message;->arg1:I

    .line 2541
    new-instance v6, Landroid/os/Bundle;

    .end local v6           #bundle:Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2542
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v19, "ret"

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2543
    const-string v19, "accountId"

    iget-object v0, v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2544
    const-string v19, "filereference"

    iget-object v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    invoke-virtual {v15, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v19, v0

    .end local v5           #attachType:I
    .end local v8           #enableSDSave:I
    .end local v12           #filename:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 2548
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 2549
    sget-boolean v19, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-nez v19, :cond_e

    .line 2550
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "EASRequestController"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v20, v0

    const-string v22, "< getAttachment"

    invoke-static/range {v19 .. v22}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_2

    .line 2495
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v15           #msg:Landroid/os/Message;
    .restart local v5       #attachType:I
    .restart local v8       #enableSDSave:I
    .restart local v12       #filename:Ljava/lang/String;
    :cond_a
    :try_start_5
    const-string v19, "EASRequestController"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v20, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Pass! duplicate attachment: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v19 .. v22}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    .line 2521
    .end local v5           #attachType:I
    .end local v8           #enableSDSave:I
    .end local v12           #filename:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 2522
    .local v7, e:Ljava/lang/Exception;
    :try_start_6
    const-string v19, "EASRequestController"

    move-object/from16 v0, v19

    invoke-static {v0, v10, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/Exception;)V

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v7, v13, v1, v2}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->handleException(Ljava/lang/Exception;Landroid/net/http/AndroidHttpClient;J)Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;

    move-result-object v11

    .line 2524
    .local v11, exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    iget v0, v11, Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;->syncResult:I

    move/from16 v16, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2529
    invoke-static/range {v18 .. v18}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2530
    invoke-static/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2531
    if-eqz v13, :cond_b

    .line 2532
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2534
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2535
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2536
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2538
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 2539
    .restart local v15       #msg:Landroid/os/Message;
    const/16 v19, 0x1fe

    move/from16 v0, v19

    iput v0, v15, Landroid/os/Message;->what:I

    .line 2540
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v15, Landroid/os/Message;->arg1:I

    .line 2541
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2542
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v19, "ret"

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2543
    const-string v19, "accountId"

    iget-object v0, v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2544
    const-string v19, "filereference"

    iget-object v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    invoke-virtual {v15, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v19, v0

    goto/16 :goto_5

    .line 2518
    .end local v7           #e:Ljava/lang/Exception;
    .end local v11           #exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    .restart local v5       #attachType:I
    .restart local v8       #enableSDSave:I
    .restart local v12       #filename:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 2519
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_4

    .line 2525
    .end local v5           #attachType:I
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #enableSDSave:I
    .end local v12           #filename:Ljava/lang/String;
    .end local v15           #msg:Landroid/os/Message;
    :catch_2
    move-exception v9

    .line 2526
    .local v9, err:Ljava/lang/OutOfMemoryError;
    :try_start_9
    invoke-virtual {v9}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2527
    const/16 v16, 0x12e

    .line 2529
    invoke-static/range {v18 .. v18}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2530
    invoke-static/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2531
    if-eqz v13, :cond_c

    .line 2532
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2534
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2535
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2536
    monitor-exit v20
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2538
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 2539
    .restart local v15       #msg:Landroid/os/Message;
    const/16 v19, 0x1fe

    move/from16 v0, v19

    iput v0, v15, Landroid/os/Message;->what:I

    .line 2540
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v15, Landroid/os/Message;->arg1:I

    .line 2541
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2542
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v19, "ret"

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2543
    const-string v19, "accountId"

    iget-object v0, v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2544
    const-string v19, "filereference"

    iget-object v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    invoke-virtual {v15, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v19, v0

    goto/16 :goto_5

    .line 2529
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v9           #err:Ljava/lang/OutOfMemoryError;
    .end local v15           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v19

    invoke-static/range {v18 .. v18}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releaseWifiLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWifiLock;)V

    .line 2530
    invoke-static/range {v17 .. v17}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 2531
    if-eqz v13, :cond_d

    .line 2532
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2534
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2535
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2536
    monitor-exit v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2538
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 2539
    .restart local v15       #msg:Landroid/os/Message;
    const/16 v20, 0x1fe

    move/from16 v0, v20

    iput v0, v15, Landroid/os/Message;->what:I

    .line 2540
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v15, Landroid/os/Message;->arg1:I

    .line 2541
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2542
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v20, "ret"

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2543
    const-string v20, "accountId"

    iget-object v0, v10, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2544
    const-string v20, "filereference"

    iget-object v0, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    invoke-virtual {v15, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->triggerEventCallback(Landroid/os/Message;)V

    .line 2529
    throw v19

    .line 2552
    :cond_e
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "EASRequestController"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    move-wide/from16 v20, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "< getAttachment("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v19 .. v22}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_2

    .line 2536
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v15           #msg:Landroid/os/Message;
    :catchall_1
    move-exception v19

    :try_start_c
    monitor-exit v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v19

    .restart local v7       #e:Ljava/lang/Exception;
    .restart local v11       #exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    :catchall_2
    move-exception v19

    :try_start_d
    monitor-exit v20
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v19

    .end local v7           #e:Ljava/lang/Exception;
    .end local v11           #exceptionResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$ExceptionHandleResult;
    .restart local v9       #err:Ljava/lang/OutOfMemoryError;
    :catchall_3
    move-exception v19

    :try_start_e
    monitor-exit v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v19

    .end local v9           #err:Ljava/lang/OutOfMemoryError;
    :catchall_4
    move-exception v19

    :try_start_f
    monitor-exit v20
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v19

    .restart local v5       #attachType:I
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v8       #enableSDSave:I
    .restart local v12       #filename:Ljava/lang/String;
    .restart local v15       #msg:Landroid/os/Message;
    :catchall_5
    move-exception v19

    :try_start_10
    monitor-exit v20
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v19
.end method

.method public getAttachmentBatch(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 12
    .parameter "request"

    .prologue
    .line 2400
    sget-boolean v7, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-nez v7, :cond_3

    .line 2401
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "EASRequestController"

    iget-wide v8, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    const-string v10, "> getAttachmentBatch"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2405
    :cond_0
    :goto_0
    iget-object v7, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    if-eqz v7, :cond_1

    iget-object v7, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v8, "parameter.attach.request_list"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v8, "parameter.attach.request_list"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    instance-of v7, v7, Ljava/util/ArrayList;

    if-nez v7, :cond_4

    .line 2409
    :cond_1
    const-string v7, "EASRequestController"

    iget-wide v8, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    const-string v10, "getAttachmentBatch(): Error! cannot get list"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V

    .line 2452
    :cond_2
    :goto_1
    return-void

    .line 2403
    :cond_3
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "EASRequestController"

    iget-wide v8, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "> getAttachmentBatch("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 2413
    :cond_4
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 2414
    .local v2, attachReqMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lcom/htc/android/mail/eassvc/core/EASRequest;Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;>;"
    iget-object v7, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v8, "parameter.attach.request_list"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2415
    .local v1, attachReqList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, attObj:Ljava/lang/Object;
    move-object v3, v0

    .line 2416
    check-cast v3, Landroid/os/Bundle;

    .line 2417
    .local v3, bundle:Landroid/os/Bundle;
    new-instance v6, Lcom/htc/android/mail/eassvc/core/EASRequest;

    invoke-direct {v6, p1}, Lcom/htc/android/mail/eassvc/core/EASRequest;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 2418
    .local v6, req:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iput-object v3, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    .line 2420
    new-instance v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;

    invoke-direct {v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;-><init>()V

    .line 2421
    .local v4, fetchItem:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;
    iget-wide v7, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    iput-wide v7, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->accountId:J

    .line 2422
    const-string v7, "parameter.attach.file_ref"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    .line 2423
    const-string v7, "parameter.attach.save_path"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->savePath:Ljava/lang/String;

    .line 2424
    const-string v7, "parameter.attach.part_id"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->partId:Ljava/lang/String;

    .line 2425
    const-string v7, "parameter.attach.global"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->isGlobalAttach:Z

    .line 2426
    const-string v7, "parameter.attach.attachtype"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->attachType:I

    .line 2427
    const-string v7, "parameter.attach.size"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->size:J

    .line 2428
    iget-wide v7, v4, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->size:J

    invoke-direct {p0, v7, v8, v6}, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->checkExternalStorageFull(JLcom/htc/android/mail/eassvc/core/EASRequest;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2431
    invoke-direct {p0, v4}, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->isDuplicateAttachment(Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2432
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2434
    :cond_6
    invoke-virtual {v2, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2437
    .end local v0           #attObj:Ljava/lang/Object;
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v4           #fetchItem:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;
    .end local v6           #req:Lcom/htc/android/mail/eassvc/core/EASRequest;
    :cond_7
    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/android/mail/eassvc/core/EASRequest;

    .line 2438
    .restart local v6       #req:Lcom/htc/android/mail/eassvc/core/EASRequest;
    iget-object v7, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v7, v7, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->mailSyncSource:Lcom/htc/android/mail/eassvc/core/MailSyncSource;

    invoke-virtual {v7}, Lcom/htc/android/mail/eassvc/core/MailSyncSource;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2439
    const-string v7, "EASRequestController"

    iget-object v8, v6, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    const-string v9, "getAttachmentBatch: Pass! mail sync cancelled"

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 2440
    iget-object v8, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    monitor-enter v8

    .line 2441
    :try_start_0
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2442
    monitor-exit v8

    goto :goto_3

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 2445
    :cond_8
    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;

    invoke-virtual {p0, v6, v7}, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->getAttachment(Lcom/htc/android/mail/eassvc/core/EASRequest;Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;)V

    goto :goto_3

    .line 2447
    .end local v6           #req:Lcom/htc/android/mail/eassvc/core/EASRequest;
    :cond_9
    sget-boolean v7, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-nez v7, :cond_a

    .line 2448
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "EASRequestController"

    iget-wide v8, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    const-string v10, "< getAttachmentBatch"

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_1

    .line 2450
    :cond_a
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "EASRequestController"

    iget-wide v8, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "< getAttachmentBatch("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_1
.end method

.method public isAttachDownloading(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 9
    .parameter "request"

    .prologue
    .line 2336
    const/4 v0, 0x0

    .line 2337
    .local v0, bRet:Z
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v5, "parameter.attach.file_ref"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2338
    .local v1, fileReference:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2339
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$AttachmentDownloadController;->mFetchList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;

    .line 2340
    .local v3, item:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;
    iget-object v4, v3, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;->fileReference:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2341
    const/4 v0, 0x1

    goto :goto_0

    .line 2344
    .end local v3           #item:Lcom/htc/android/mail/eassvc/core/EASRequestController$FetchAttachmentItem;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2345
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 2346
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "EASRequestController"

    iget-wide v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAttachDownloading("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 2347
    :cond_2
    return-void

    .line 2344
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
