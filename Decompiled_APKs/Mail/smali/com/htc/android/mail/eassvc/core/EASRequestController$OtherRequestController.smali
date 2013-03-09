.class Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;
.super Ljava/lang/Object;
.source "EASRequestController.java"

# interfaces
.implements Lcom/htc/android/mail/eassvc/core/EASRequestController$SyncSourceRequestController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtherRequestController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;)V
    .locals 0
    .parameter

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;Lcom/htc/android/mail/eassvc/core/EASRequestController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1419
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;-><init>(Lcom/htc/android/mail/eassvc/core/EASRequestController;)V

    return-void
.end method

.method private getFolderHierarchy(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 1445
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;->getFolderHierarchy(Lcom/htc/android/mail/eassvc/core/EASRequest;I)V

    .line 1446
    return-void
.end method

.method private getFolderHierarchy(Lcom/htc/android/mail/eassvc/core/EASRequest;I)V
    .locals 16
    .parameter "request"
    .parameter "retryCount"

    .prologue
    .line 1448
    new-instance v5, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;

    invoke-direct {v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;-><init>()V

    .line 1449
    .local v5, easResult:Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 1450
    .local v7, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    const/4 v12, 0x1

    .line 1451
    .local v12, syncResult:I
    const/4 v8, 0x0

    .line 1453
    .local v8, needRetry:Z
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v7, v13}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->setPause(Z)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;
    invoke-static {v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$1100(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/core/SyncManager;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/htc/android/mail/eassvc/core/SyncManager;->updateEASFolderHierarchy(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    const/4 v12, 0x0

    .line 1515
    iput v12, v5, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;->result:I

    .line 1516
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1517
    if-eqz v8, :cond_0

    .line 1518
    add-int/lit8 p2, p2, 0x1

    invoke-direct/range {p0 .. p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;->getFolderHierarchy(Lcom/htc/android/mail/eassvc/core/EASRequest;I)V

    .line 1520
    :cond_0
    invoke-virtual {v7}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1521
    :goto_0
    const/4 v7, 0x0

    .line 1523
    return-void

    .line 1456
    :catch_0
    move-exception v3

    .line 1457
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v13, "EASRequestController"

    invoke-static {v13, v7, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/Exception;)V

    .line 1458
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/core/SyncManager;->convertException(Ljava/lang/Exception;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v10

    .line 1459
    .local v10, syncEx:Lcom/htc/android/mail/eassvc/core/SyncException;
    invoke-virtual {v10}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v6

    .line 1460
    .local v6, errorCode:I
    const/16 v13, 0x204

    if-eq v6, v13, :cond_1

    const/16 v13, 0x205

    if-eq v6, v13, :cond_1

    const/16 v13, 0x207

    if-eq v6, v13, :cond_1

    const/16 v13, 0x206

    if-ne v6, v13, :cond_5

    .line 1464
    :cond_1
    invoke-virtual {v7}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->getHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    iget-object v15, v15, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v15, v15, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->serverName:Ljava/lang/String;

    invoke-static {v13, v14, v15, v6, v3}, Lcom/htc/android/mail/eassvc/common/HttpClientFactory;->saveCertificateError(Landroid/net/http/AndroidHttpClient;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    .line 1499
    :cond_2
    :goto_1
    const/4 v13, 0x2

    move/from16 v0, p2

    if-ge v0, v13, :cond_e

    .line 1500
    invoke-static {v6}, Lcom/htc/android/mail/eassvc/core/SyncManager;->isNetworkException(I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1501
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->checkNetwork(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 1502
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "EASRequestController"

    const-string v14, "No network ready, not retry."

    invoke-static {v13, v7, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1513
    :cond_3
    :goto_2
    iput v6, v5, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;->errorCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1515
    iput v12, v5, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;->result:I

    .line 1516
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1517
    if-eqz v8, :cond_4

    .line 1518
    add-int/lit8 p2, p2, 0x1

    invoke-direct/range {p0 .. p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;->getFolderHierarchy(Lcom/htc/android/mail/eassvc/core/EASRequest;I)V

    .line 1520
    :cond_4
    invoke-virtual {v7}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    goto :goto_0

    .line 1467
    :cond_5
    const/16 v13, 0x193

    if-eq v6, v13, :cond_6

    const/16 v13, 0x1c1

    if-eq v6, v13, :cond_6

    const/16 v13, 0x3f3

    if-ne v6, v13, :cond_9

    .line 1470
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "EASRequestController"

    const-string v14, "Need Provision"

    invoke-static {v13, v7, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1472
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mSyncManager:Lcom/htc/android/mail/eassvc/core/SyncManager;
    invoke-static {v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$1100(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/core/SyncManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;
    invoke-static {v14}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$1200(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v14

    invoke-virtual {v13, v14, v7, v5}, Lcom/htc/android/mail/eassvc/core/SyncManager;->applyPolicy(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;)I

    move-result v2

    .line 1473
    .local v2, applyResult:I
    if-nez v2, :cond_8

    .line 1474
    invoke-virtual {v7}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writeGlobalInfo()V

    .line 1475
    invoke-virtual {v7}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->writePolicyDoc()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/htc/android/mail/eassvc/core/SyncException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1476
    const/4 v6, 0x0

    .line 1477
    const/4 v8, 0x1

    goto :goto_1

    .line 1479
    :cond_8
    const/16 v6, 0x3f3

    goto :goto_1

    .line 1481
    .end local v2           #applyResult:I
    :catch_1
    move-exception v4

    .line 1482
    .local v4, e1:Lcom/htc/android/mail/eassvc/core/SyncException;
    :try_start_4
    const-string v13, "EASRequestController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getFolderHierarchy(): applyPolicy fail, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/core/SyncException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;
    invoke-static {v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$1200(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v13

    invoke-virtual {v13}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getProvisionDocList()Ljava/util/ArrayList;

    move-result-object v9

    .line 1486
    .local v9, provisionDocList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;>;"
    invoke-static {v9}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->aggregatePolicy(Ljava/util/ArrayList;)Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    move-result-object v1

    .line 1487
    .local v1, aggregatedPolicyDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mExchangeList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;
    invoke-static {v13}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$1200(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->setAggregateProvisionDoc(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V

    .line 1489
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/core/SyncManager;->convertException(Ljava/lang/Exception;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v11

    .line 1490
    .local v11, syncEx1:Lcom/htc/android/mail/eassvc/core/SyncException;
    invoke-virtual {v11}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v6

    .line 1494
    goto/16 :goto_1

    .line 1491
    .end local v1           #aggregatedPolicyDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    .end local v4           #e1:Lcom/htc/android/mail/eassvc/core/SyncException;
    .end local v9           #provisionDocList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;>;"
    .end local v11           #syncEx1:Lcom/htc/android/mail/eassvc/core/SyncException;
    :catch_2
    move-exception v4

    .line 1492
    .local v4, e1:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1493
    const/16 v6, 0x320

    .line 1494
    goto/16 :goto_1

    .line 1495
    .end local v4           #e1:Ljava/lang/Exception;
    :cond_9
    const/16 v13, 0x44c

    if-ne v6, v13, :cond_2

    .line 1496
    const-string v13, "EASRequestController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Download policy failed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v7, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1515
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #errorCode:I
    .end local v10           #syncEx:Lcom/htc/android/mail/eassvc/core/SyncException;
    :catchall_0
    move-exception v13

    iput v12, v5, Lcom/htc/android/mail/eassvc/core/EASRequestController$EASResult;->result:I

    .line 1516
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    .line 1517
    if-eqz v8, :cond_a

    .line 1518
    add-int/lit8 p2, p2, 0x1

    invoke-direct/range {p0 .. p2}, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;->getFolderHierarchy(Lcom/htc/android/mail/eassvc/core/EASRequest;I)V

    .line 1520
    :cond_a
    invoke-virtual {v7}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->releaseHttpClient()V

    .line 1521
    const/4 v7, 0x0

    .line 1515
    throw v13

    .line 1503
    .restart local v3       #e:Ljava/lang/Exception;
    .restart local v6       #errorCode:I
    .restart local v10       #syncEx:Lcom/htc/android/mail/eassvc/core/SyncException;
    :cond_b
    const/16 v13, 0x1c7

    if-ne v6, v13, :cond_c

    .line 1504
    :try_start_5
    const-string v13, "EASRequestController"

    const-string v14, "Conneciton is refused when handling command "

    invoke-static {v13, v7, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1506
    :cond_c
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v13

    if-eqz v13, :cond_d

    const-string v13, "EASRequestController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception happen, do retry ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v7, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1507
    :cond_d
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 1511
    :cond_e
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "EASRequestController"

    const-string v14, "Exception happen, out of retry times, quit."

    invoke-static {v13, v7, v14}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2
.end method

.method private searchGAL(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 8
    .parameter "request"

    .prologue
    .line 1430
    invoke-static {}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$400()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "EASRequestController"

    const-string v6, "- seatchGAL()"

    invoke-static {v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    :cond_0
    iget-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v6, "parameter.gal.query_from_compose_string"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1432
    .local v1, fromComposeActivity:Z
    const/4 v2, 0x0

    .line 1435
    .local v2, galSearcher:Lcom/htc/android/mail/eassvc/core/GALSearcher;
    :try_start_0
    new-instance v3, Lcom/htc/android/mail/eassvc/core/GALSearcher;

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;->this$0:Lcom/htc/android/mail/eassvc/core/EASRequestController;

    #getter for: Lcom/htc/android/mail/eassvc/core/EASRequestController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->access$500(Lcom/htc/android/mail/eassvc/core/EASRequestController;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    invoke-direct {v3, v5, v6, v1}, Lcom/htc/android/mail/eassvc/core/GALSearcher;-><init>(Landroid/content/Context;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1436
    .end local v2           #galSearcher:Lcom/htc/android/mail/eassvc/core/GALSearcher;
    .local v3, galSearcher:Lcom/htc/android/mail/eassvc/core/GALSearcher;
    :try_start_1
    iget-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->parameter:Landroid/os/Bundle;

    const-string v6, "parameter.gal.query_string"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1437
    .local v4, queryString:Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/htc/android/mail/eassvc/core/GALSearcher;->searchGAL(Ljava/lang/String;)Lcom/htc/android/pim/eas/EASGalSearchResult;

    move-result-object v5

    iput-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 1442
    .end local v3           #galSearcher:Lcom/htc/android/mail/eassvc/core/GALSearcher;
    .end local v4           #queryString:Ljava/lang/String;
    .restart local v2       #galSearcher:Lcom/htc/android/mail/eassvc/core/GALSearcher;
    :goto_0
    return-void

    .line 1438
    :catch_0
    move-exception v0

    .line 1439
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const-string v5, "EASRequestController"

    iget-wide v6, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->accountId:J

    invoke-static {v5, v6, v7, v0}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/Exception;)V

    .line 1440
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->returnObject:Ljava/lang/Object;

    goto :goto_0

    .line 1438
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #galSearcher:Lcom/htc/android/mail/eassvc/core/GALSearcher;
    .restart local v3       #galSearcher:Lcom/htc/android/mail/eassvc/core/GALSearcher;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #galSearcher:Lcom/htc/android/mail/eassvc/core/GALSearcher;
    .restart local v2       #galSearcher:Lcom/htc/android/mail/eassvc/core/GALSearcher;
    goto :goto_1
.end method


# virtual methods
.method public addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 1421
    iget v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 1422
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;->searchGAL(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    iget v0, p1, Lcom/htc/android/mail/eassvc/core/EASRequest;->command:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 1424
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/core/EASRequestController$OtherRequestController;->getFolderHierarchy(Lcom/htc/android/mail/eassvc/core/EASRequest;)V

    goto :goto_0
.end method

.method public isBusy(J)Z
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1527
    const/4 v0, 0x0

    return v0
.end method

.method public isOnlyRequest(I)Z
    .locals 1
    .parameter "priority"

    .prologue
    .line 1530
    const/4 v0, 0x0

    return v0
.end method

.method public isRequestEmpty()Z
    .locals 1

    .prologue
    .line 1533
    const/4 v0, 0x0

    return v0
.end method

.method public isRequestEmpty(J)Z
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1536
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllRequest()V
    .locals 0

    .prologue
    .line 1539
    return-void
.end method

.method public removeRequestByAccountId(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 1541
    return-void
.end method

.method public setListener(Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1543
    return-void
.end method

.method public stopRunning()V
    .locals 0

    .prologue
    .line 1545
    return-void
.end method
