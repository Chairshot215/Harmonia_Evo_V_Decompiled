.class public Lcom/android/mms/transaction/TransactionService;
.super Landroid/app/Service;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ONALARM:Ljava/lang/String; = "android.intent.action.ACTION_ONALARM"

.field public static final CONTENT_URI:Ljava/lang/String; = "content_uri"

.field private static final DEBUG:Z = false

.field public static final KEY_TRANSACTION_ERROR_CODE:Ljava/lang/String; = "tx_err_code"

.field public static final KEY_TRANSACTION_ERROR_DESC:Ljava/lang/String; = "tx_err_mesg"

.field public static final KEY_TRANSACTION_ID:Ljava/lang/String; = "tx_id"

.field public static final KEY_TRANSACTION_RETRY_ENABLED:Ljava/lang/String; = "tx_retry"

.field public static final KEY_TRANSACTION_TYPE:Ljava/lang/String; = "tx_type"

.field public static final KEY_TRANSACTION_URI:Ljava/lang/String; = "tx_uri"

.field private static final LOCAL_LOGV:Z = true

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STATE_URI:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String; = "TransactionService"

.field public static final TRANSACTION_COMPLETED_ACTION:Ljava/lang/String; = "android.intent.action.TRANSACTION_COMPLETED_ACTION"

.field private static final UNKNOWN_TRANSACTION:I = -0x1

.field public static mThis:Lcom/android/mms/transaction/TransactionService;


# instance fields
.field private mScheduler:Lcom/android/mms/transaction/Scheduler;

.field private mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

.field private mTransactionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/TransactionService;->mThis:Lcom/android/mms/transaction/TransactionService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionList:Ljava/util/List;

    .line 879
    return-void
.end method

.method private disposeTransaction(Lcom/android/mms/transaction/Transaction;)V
    .locals 3
    .parameter "tx"

    .prologue
    .line 536
    monitor-enter p0

    .line 537
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 538
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mScheduler:Lcom/android/mms/transaction/Scheduler;

    invoke-virtual {v0, p1}, Lcom/android/mms/transaction/Scheduler;->removeScheduler(Lcom/android/mms/transaction/Transaction;)V

    .line 539
    const-string v0, "TransactionService"

    const-string v1, "disposeTransaction / remove Transaction"

    invoke-virtual {p1, v0, v1}, Lcom/android/mms/transaction/Transaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disposeTransaction remove Transaction ID >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disposeTransaction mTransactionList size >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->dropTransactionFromDb(Lcom/android/mms/transaction/Transaction;)V

    .line 544
    return-void

    .line 542
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private dropTransactionFromDb(Lcom/android/mms/transaction/Transaction;)V
    .locals 1
    .parameter "tx"

    .prologue
    .line 548
    monitor-enter p0

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 550
    invoke-static {}, Lcom/android/mms/transport/Transport;->close()V

    .line 551
    :cond_0
    monitor-exit p0

    .line 553
    return-void

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getTransactionType(I)I
    .locals 3
    .parameter "msgType"

    .prologue
    .line 227
    sparse-switch p1, :sswitch_data_0

    .line 235
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized MESSAGE_TYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 229
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 231
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 233
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 227
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x82 -> :sswitch_0
        0x87 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleTransactionFailure(Lcom/android/mms/transaction/Transaction;)V
    .locals 17
    .parameter "tx"

    .prologue
    .line 592
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v12

    .line 593
    .local v12, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getError()Lcom/android/mms/transaction/TransactionError;

    move-result-object v4

    .line 595
    .local v4, error:Lcom/android/mms/transaction/TransactionError;
    if-nez v4, :cond_0

    .line 596
    const-string v13, "TransactionService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "transaction error is null tx.getType()"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v4, Lcom/android/mms/transaction/TransactionError;

    .end local v4           #error:Lcom/android/mms/transaction/TransactionError;
    const/16 v13, 0x1014

    const/4 v14, 0x0

    invoke-direct {v4, v13, v14}, Lcom/android/mms/transaction/TransactionError;-><init>(IZ)V

    .line 598
    .restart local v4       #error:Lcom/android/mms/transaction/TransactionError;
    invoke-virtual {v12, v4}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 599
    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v13

    if-nez v13, :cond_0

    .line 600
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getTransactionURI()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 605
    :cond_0
    invoke-virtual {v12}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_2

    .line 606
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService;->disposeTransaction(Lcom/android/mms/transaction/Transaction;)V

    .line 741
    :cond_1
    :goto_0
    return-void

    .line 612
    :cond_2
    const/4 v9, 0x0

    .line 613
    .local v9, noNetwork:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSendPendingUnderNoNetwork()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, -0x1

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/mms/ui/MessageUtils;->isNetworkAvailable(Landroid/content/Context;IZ)Z

    move-result v13

    if-nez v13, :cond_b

    const/4 v9, 0x1

    .line 616
    :goto_1
    if-eqz v9, :cond_3

    .line 619
    const-string v13, "TransactionService"

    const-string v14, "handleTransactionFailure() registerForConnectionStateChanges"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;)V

    .line 622
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v8

    .line 623
    .local v8, mTransactionState:Lcom/android/mms/transaction/TransactionState;
    const/4 v13, 0x2

    invoke-virtual {v8, v13}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 624
    new-instance v13, Lcom/android/mms/transaction/TransactionError;

    const/16 v14, 0x1001

    invoke-direct {v13, v14}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V

    invoke-virtual {v8, v13}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 630
    .end local v8           #mTransactionState:Lcom/android/mms/transaction/TransactionState;
    :cond_3
    const/4 v2, 0x0

    .line 633
    .local v2, bStopRetry:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/mms/ui/MessageUtils;->getAllowTextMessagingStatus(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionError;->getCode()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/transaction/TransactionService;->isStopRetry(I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 634
    :cond_4
    const/4 v2, 0x1

    .line 640
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getRetryPolicy()Lcom/android/mms/transaction/Transaction$RetryPolicy;

    move-result-object v10

    .line 641
    .local v10, policy:Lcom/android/mms/transaction/Transaction$RetryPolicy;
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getRetryCount()I

    move-result v13

    invoke-static {}, Lcom/android/mms/transaction/Transaction$RetryPolicy;->getMaxRetryCount()I

    move-result v14

    if-gt v13, v14, :cond_6

    if-eqz v2, :cond_e

    .line 642
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v13

    const/4 v14, 0x3

    if-eq v13, v14, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 651
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService;->moveMessageToOutboxFolder(Lcom/android/mms/transaction/Transaction;)V

    .line 653
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService;->updateDueTimeToMax(Lcom/android/mms/transaction/Transaction;)V

    .line 656
    :cond_9
    if-eqz v2, :cond_d

    .line 658
    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionError;->getCode()I

    move-result v13

    const v14, 0x10084

    if-ne v13, v14, :cond_c

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplication()Landroid/app/Application;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0901b2

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v13, v0, v14, v15}, Lcom/android/mms/transaction/MessagingNotification;->notifyTransactionFailure(Landroid/content/Context;Lcom/android/mms/transaction/Transaction;ZLjava/lang/String;)V

    .line 668
    :goto_2
    const-string v13, "TransactionService"

    const-string v14, "mms notification unlock"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/mms/transaction/PushReceiver;->mUpdateLocked:Z

    .line 670
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/mms/transaction/RetrieveTransaction;

    if-eqz v13, :cond_a

    .line 672
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v14

    const/16 v15, 0x87

    invoke-virtual {v13, v14, v15}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :cond_a
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService;->disposeTransaction(Lcom/android/mms/transaction/Transaction;)V

    goto/16 :goto_0

    .line 615
    .end local v2           #bStopRetry:Z
    .end local v10           #policy:Lcom/android/mms/transaction/Transaction$RetryPolicy;
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 662
    .restart local v2       #bStopRetry:Z
    .restart local v10       #policy:Lcom/android/mms/transaction/Transaction$RetryPolicy;
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/mms/transaction/TransactionService;->notifyTransactionFailure(Lcom/android/mms/transaction/Transaction;Z)V

    goto :goto_2

    .line 666
    :cond_d
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/mms/transaction/TransactionService;->notifyTransactionFailure(Lcom/android/mms/transaction/Transaction;Z)V

    goto :goto_2

    .line 673
    :catch_0
    move-exception v3

    .line 674
    .local v3, e:Ljava/lang/Exception;
    const-string v13, "TransactionService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "markState throw exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 680
    .end local v3           #e:Ljava/lang/Exception;
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService;->insertOrUpdateTransactionFailureToDb(Lcom/android/mms/transaction/Transaction;)I

    move-result v11

    .line 684
    .local v11, result:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v13

    if-nez v13, :cond_f

    .line 685
    check-cast p1, Lcom/android/mms/transaction/NotificationTransaction;

    .end local p1
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService;->replaceNotificationTransaction(Lcom/android/mms/transaction/NotificationTransaction;)Lcom/android/mms/transaction/Transaction;

    move-result-object p1

    .line 688
    .restart local p1
    :cond_f
    if-eqz p1, :cond_1

    .line 689
    invoke-virtual {v10}, Lcom/android/mms/transaction/Transaction$RetryPolicy;->getMode()I

    move-result v13

    if-nez v13, :cond_13

    .line 690
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/mms/transaction/TransactionService;->notifyTransactionFailure(Lcom/android/mms/transaction/Transaction;Z)V

    .line 697
    :cond_10
    :goto_4
    if-lez v11, :cond_1

    .line 701
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getRetryCount()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getRetryMode()I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/mms/transaction/Transaction$RetryPolicy;->getInterval(II)J

    move-result-wide v5

    .line 702
    .local v5, interval:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/TransactionService;->mScheduler:Lcom/android/mms/transaction/Scheduler;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v5, v6}, Lcom/android/mms/transaction/Scheduler;->schedule(Lcom/android/mms/transaction/Transaction;J)V

    .line 704
    const/4 v7, 0x0

    .line 707
    .local v7, isStopRetry:Z
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/mms/transaction/RetrieveTransaction;

    if-eqz v13, :cond_11

    .line 709
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v14

    const/16 v15, 0x82

    invoke-virtual {v13, v14, v15}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 717
    :cond_11
    :goto_5
    if-eqz v7, :cond_12

    .line 720
    const-string v13, "TransactionService"

    const-string v14, "Stop Retry due to expired"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    sget-short v13, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v14, 0xa8

    if-ne v13, v14, :cond_14

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplication()Landroid/app/Application;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f090227

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v13, v0, v14, v15}, Lcom/android/mms/transaction/MessagingNotification;->notifyTransactionFailure(Landroid/content/Context;Lcom/android/mms/transaction/Transaction;ZLjava/lang/String;)V

    .line 728
    :goto_6
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService;->updateDueTimeToMax(Lcom/android/mms/transaction/Transaction;)V

    .line 729
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService;->disposeTransaction(Lcom/android/mms/transaction/Transaction;)V

    .line 735
    :cond_12
    if-eqz v9, :cond_1

    .line 736
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/transaction/TransactionService;->mScheduler:Lcom/android/mms/transaction/Scheduler;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/mms/transaction/Scheduler;->removeScheduler(Lcom/android/mms/transaction/Transaction;)V

    goto/16 :goto_0

    .line 692
    .end local v5           #interval:J
    .end local v7           #isStopRetry:Z
    :cond_13
    if-eqz v4, :cond_10

    .line 693
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/mms/transaction/TransactionService;->notifyTransactionFailure(Lcom/android/mms/transaction/Transaction;Z)V

    goto :goto_4

    .line 710
    .restart local v5       #interval:J
    .restart local v7       #isStopRetry:Z
    :catch_1
    move-exception v3

    .line 711
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v13, "TransactionService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "markState throw exception "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 727
    .end local v3           #e:Ljava/lang/Exception;
    :cond_14
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/mms/transaction/TransactionService;->notifyTransactionFailure(Lcom/android/mms/transaction/Transaction;Z)V

    goto :goto_6
.end method

.method private handleTransactionSuccess(Lcom/android/mms/transaction/Transaction;Landroid/content/Intent;)V
    .locals 8
    .parameter "tx"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 493
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 533
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->disposeTransaction(Lcom/android/mms/transaction/Transaction;)V

    .line 534
    return-void

    .line 498
    :pswitch_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isAlwaysShowMMSNotification()Z

    move-result v5

    if-nez v5, :cond_2

    .line 499
    const-string v5, "notify_MsgURI"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, str:Ljava/lang/String;
    const/4 v4, 0x0

    .line 501
    .local v4, uri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 502
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 503
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6, v6, v7, v4}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;ZZZLandroid/net/Uri;)V

    .line 506
    .end local v3           #str:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_2
    const-string v5, "TransactionService"

    const-string v6, "mms notification unlock"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    sput-boolean v7, Lcom/android/mms/transaction/PushReceiver;->mUpdateLocked:Z

    .line 511
    const/16 v5, 0x78

    invoke-static {v5}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x59

    invoke-static {v5}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x1b

    invoke-static {v5}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 514
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v1

    .line 515
    .local v1, serviceId:I
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v2

    .line 516
    .local v2, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getApplicationID()[B

    move-result-object v0

    .line 517
    .local v0, appId:[B
    if-eqz v0, :cond_4

    .line 518
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Application-ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v5, "android.intent.action.TRANSACTION_COMPLETED_ACTION_FOR_JAVA"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string v5, "Application-ID"

    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 521
    const-string v5, "Reply-To-Application-ID"

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getReplyToApplicationID()[B

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto/16 :goto_0

    .line 523
    :cond_4
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " No Application-ID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 529
    .end local v0           #appId:[B
    .end local v1           #serviceId:I
    .end local v2           #state:Lcom/android/mms/transaction/TransactionState;
    :pswitch_1
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/util/RateController;->update()V

    goto/16 :goto_0

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private insertOrUpdateTransactionFailureToDb(Lcom/android/mms/transaction/Transaction;)I
    .locals 19
    .parameter "tx"

    .prologue
    .line 813
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v17

    .line 814
    .local v17, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 816
    .local v12, msgId:J
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/TransactionState;->getError()Lcom/android/mms/transaction/TransactionError;

    move-result-object v9

    .line 818
    .local v9, error:Lcom/android/mms/transaction/TransactionError;
    const/16 v10, 0xa

    .line 820
    .local v10, errorType:I
    if-eqz v9, :cond_0

    .line 821
    invoke-virtual {v9}, Lcom/android/mms/transaction/TransactionError;->isRetryEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v10, 0x1

    .line 825
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 826
    .local v7, current:J
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getRetryCount()I

    move-result v16

    .line 832
    .local v16, retryCount:I
    invoke-static {}, Lcom/android/mms/transaction/Transaction$RetryPolicy;->getMaxRetryCount()I

    move-result v11

    .line 833
    .local v11, maxRetryCount:I
    add-int/lit8 v1, v16, 0x1

    if-le v1, v11, :cond_2

    move/from16 v18, v11

    .line 834
    .local v18, t:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getRetryMode()I

    move-result v1

    move/from16 v0, v18

    invoke-static {v0, v1}, Lcom/android/mms/transaction/Transaction$RetryPolicy;->getInterval(II)J

    move-result-wide v1

    add-long v14, v7, v1

    .line 837
    .local v14, nextRetryTime:J
    new-instance v4, Landroid/content/ContentValues;

    const/4 v1, 0x5

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 838
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "err_type"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 839
    const-string v1, "err_code"

    invoke-virtual {v9}, Lcom/android/mms/transaction/TransactionError;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 840
    const-string v1, "retry_index"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 841
    const-string v1, "last_try"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 842
    const-string v1, "due_time"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 821
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v7           #current:J
    .end local v11           #maxRetryCount:I
    .end local v14           #nextRetryTime:J
    .end local v16           #retryCount:I
    .end local v18           #t:I
    :cond_1
    const/16 v10, 0xa

    goto :goto_0

    .line 833
    .restart local v7       #current:J
    .restart local v11       #maxRetryCount:I
    .restart local v16       #retryCount:I
    :cond_2
    add-int/lit8 v18, v16, 0x1

    goto :goto_1
.end method

.method private insertToList(Lcom/android/mms/transaction/Transaction;)Lcom/android/mms/transaction/Transaction;
    .locals 4
    .parameter "tx"

    .prologue
    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/Transaction;

    .line 322
    .local v1, t:Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v1, p1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    const-string v2, "TransactionService"

    const-string v3, "Transaction is Equivalent"

    invoke-virtual {p1, v2, v3}, Lcom/android/mms/transaction/Transaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    monitor-exit p0

    .line 330
    .end local v1           #t:Lcom/android/mms/transaction/Transaction;
    :goto_0
    return-object v1

    .line 327
    :cond_1
    const-string v2, "TransactionService"

    const-string v3, "insert to list"

    invoke-virtual {p1, v2, v3}, Lcom/android/mms/transaction/Transaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    monitor-exit p0

    move-object v1, p1

    .line 330
    goto :goto_0

    .line 329
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private isStopRetry(I)Z
    .locals 5
    .parameter "errorCode"

    .prologue
    const v4, 0x100100e1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 557
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xd2

    if-ne v2, v3, :cond_2

    .line 558
    const v2, 0x100100e0

    if-eq p1, v2, :cond_0

    if-eq p1, v4, :cond_0

    const v2, 0x100100e2

    if-eq p1, v2, :cond_0

    const v2, 0x100100e3

    if-eq p1, v2, :cond_0

    const v2, 0x100100e4

    if-eq p1, v2, :cond_0

    const v2, 0x100100e5

    if-eq p1, v2, :cond_0

    const v2, 0x100100e6

    if-eq p1, v2, :cond_0

    const v2, 0x100100e7

    if-eq p1, v2, :cond_0

    const v2, 0x100100e8

    if-eq p1, v2, :cond_0

    const v2, 0x100100e9

    if-eq p1, v2, :cond_0

    const v2, 0x100100ea

    if-eq p1, v2, :cond_0

    const v2, 0x100100eb

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 586
    :cond_1
    :goto_0
    return v0

    .line 576
    :cond_2
    const v2, 0x100101e2

    if-eq p1, v2, :cond_3

    const v2, 0x10084

    if-eq p1, v2, :cond_3

    const/16 v2, 0x1062

    if-eq p1, v2, :cond_3

    const v2, 0x10082

    if-eq p1, v2, :cond_3

    if-ne p1, v4, :cond_1

    :cond_3
    move v0, v1

    .line 583
    goto :goto_0
.end method

.method private static isTransientFailure(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 222
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V
    .locals 4
    .parameter "serviceId"
    .parameter "txnBundle"
    .parameter "noNetwork"

    .prologue
    .line 242
    const-string v1, "TransactionService"

    const-string v2, "3-launchTransaction()-getNetwork"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 245
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 246
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 249
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    return-void
.end method

.method private moveMessageToOutboxFolder(Lcom/android/mms/transaction/Transaction;)V
    .locals 5
    .parameter "tx"

    .prologue
    .line 781
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 784
    .local v1, p:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getTransactionURI()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    .end local v1           #p:Lcom/google/android/mms/pdu/PduPersister;
    :goto_0
    return-void

    .line 786
    :catch_0
    move-exception v0

    .line 789
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to move message to outbox and mark as error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getTransactionURI()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyTransactionFailure(Lcom/android/mms/transaction/Transaction;Z)V
    .locals 2
    .parameter "tx"
    .parameter "retryEnabled"

    .prologue
    .line 850
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifyTransactionFailure(Landroid/content/Context;Lcom/android/mms/transaction/Transaction;ZLjava/lang/String;)V

    .line 852
    return-void
.end method

.method private onNetworkUnavailable(II)V
    .locals 3
    .parameter "serviceId"
    .parameter "transactionType"

    .prologue
    .line 256
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkUnavailable: sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 260
    return-void
.end method

.method private replaceNotificationTransaction(Lcom/android/mms/transaction/NotificationTransaction;)Lcom/android/mms/transaction/Transaction;
    .locals 7
    .parameter "tx"

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 745
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/mms/transaction/NotificationTransaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 746
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Lcom/android/mms/transaction/TransactionBundle;

    const/4 v4, 0x1

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 747
    .local v0, args:Lcom/android/mms/transaction/TransactionBundle;
    invoke-virtual {p1}, Lcom/android/mms/transaction/NotificationTransaction;->getServiceId()I

    move-result v4

    invoke-static {v1, v0, v4}, Lcom/android/mms/transaction/Transaction$TransactionFactory;->createTransaction(Landroid/content/Context;Lcom/android/mms/transaction/TransactionBundle;I)Lcom/android/mms/transaction/Transaction;

    move-result-object v2

    .line 749
    .local v2, rtx:Lcom/android/mms/transaction/Transaction;
    if-nez v2, :cond_0

    .line 750
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to replace transaction "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/mms/transaction/NotificationTransaction;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with a RetrieveTransaction."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->disposeTransaction(Lcom/android/mms/transaction/Transaction;)V

    .line 753
    const/4 v4, 0x0

    .line 761
    :goto_0
    return-object v4

    .line 755
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/transaction/NotificationTransaction;->getRetryCount()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/mms/transaction/Transaction;->setRetryCount(I)V

    .line 757
    monitor-enter p0

    .line 758
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 759
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService;->mScheduler:Lcom/android/mms/transaction/Scheduler;

    invoke-virtual {v4, p1}, Lcom/android/mms/transaction/Scheduler;->removeScheduler(Lcom/android/mms/transaction/Transaction;)V

    .line 760
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/TransactionService;->insertToList(Lcom/android/mms/transaction/Transaction;)Lcom/android/mms/transaction/Transaction;

    move-result-object v4

    goto :goto_0

    .line 760
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private stopSelfIfIdle(I)V
    .locals 3
    .parameter "startId"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionList:Ljava/util/List;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "TransactionService"

    const-string v2, "stopSelfIfIdle: unRegisterForConnectionStateChanges"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 218
    :cond_0
    monitor-exit v1

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateDueTimeToMax(Lcom/android/mms/transaction/Transaction;)V
    .locals 9
    .parameter "tx"

    .prologue
    .line 795
    if-eqz p1, :cond_0

    .line 796
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v8

    .line 797
    .local v8, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v8}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 798
    .local v6, msgId:J
    const-string v0, "TransactionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update DueTime to max value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 800
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "due_time"

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 802
    const-string v0, "err_type"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 804
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 808
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v6           #msgId:J
    .end local v8           #state:Lcom/android/mms/transaction/TransactionState;
    :cond_0
    return-void
.end method


# virtual methods
.method cancelTransactionFailureNotification(Lcom/android/mms/transaction/Transaction;)V
    .locals 6
    .parameter "tx"

    .prologue
    .line 856
    const-string v1, "notification"

    .line 857
    .local v1, ns:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 858
    .local v0, nmgr:Landroid/app/NotificationManager;
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getId()Ljava/lang/String;

    move-result-object v2

    .line 860
    .local v2, txId:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 863
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancel transaction failure notified: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-void
.end method

.method handleTransactionRequest(Lcom/android/mms/transaction/TransactionBundle;IJ)V
    .locals 6
    .parameter "args"
    .parameter "serviceId"
    .parameter "delay"

    .prologue
    .line 279
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transaction request received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "serviceId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", delay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v2, 0x0

    .line 285
    .local v2, tx:Lcom/android/mms/transaction/Transaction;
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/mms/transaction/Transaction$TransactionFactory;->createTransaction(Landroid/content/Context;Lcom/android/mms/transaction/TransactionBundle;I)Lcom/android/mms/transaction/Transaction;

    move-result-object v2

    .line 287
    if-nez v2, :cond_0

    .line 317
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/TransactionService;->insertToList(Lcom/android/mms/transaction/Transaction;)Lcom/android/mms/transaction/Transaction;

    move-result-object v1

    .line 312
    .local v1, t:Lcom/android/mms/transaction/Transaction;
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mScheduler:Lcom/android/mms/transaction/Scheduler;

    invoke-virtual {v3, v1, p3, p4}, Lcom/android/mms/transaction/Scheduler;->schedule(Lcom/android/mms/transaction/Transaction;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    .end local v1           #t:Lcom/android/mms/transaction/Transaction;
    :catch_0
    move-exception v0

    .line 315
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "TransactionService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleTransationResult(Lcom/android/mms/transaction/Transaction;)V
    .locals 8
    .parameter "tx"

    .prologue
    .line 450
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v2

    .line 452
    .local v2, serviceId:I
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.TRANSACTION_COMPLETED_ACTION"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v3

    .line 454
    .local v3, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v1

    .line 455
    .local v1, result:I
    const-string v5, "state"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    packed-switch v1, :pswitch_data_0

    .line 481
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transaction state unknown: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->sendBroadcast(Landroid/content/Intent;)V

    .line 489
    return-void

    .line 460
    :pswitch_0
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transaction complete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionService;->cancelTransactionFailureNotification(Lcom/android/mms/transaction/Transaction;)V

    .line 466
    const-string v5, "uri"

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 467
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 468
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 469
    const-string v5, "notify_MsgURI"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/TransactionService;->handleTransactionSuccess(Lcom/android/mms/transaction/Transaction;Landroid/content/Intent;)V

    goto :goto_0

    .line 475
    .end local v4           #uri:Landroid/net/Uri;
    :pswitch_1
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transaction failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->handleTransactionFailure(Lcom/android/mms/transaction/Transaction;)V

    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isTransactionExist(Ljava/lang/Integer;)Z
    .locals 4
    .parameter "msg_id"

    .prologue
    .line 868
    monitor-enter p0

    .line 869
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/Transaction;

    .line 870
    .local v1, t:Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v1}, Lcom/android/mms/transaction/Transaction;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 871
    const/4 v2, 0x1

    monitor-exit p0

    .line 874
    .end local v1           #t:Lcom/android/mms/transaction/Transaction;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_0

    .line 875
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method loadTransactionsFromDb(I)V
    .locals 27
    .parameter "serviceId"

    .prologue
    .line 336
    const-string v24, "TransactionService"

    const-string v25, "Loading previous transactions."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v21

    .line 340
    .local v21, p:Lcom/google/android/mms/pdu/PduPersister;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 343
    .local v12, current:J
    const/4 v14, 0x0

    .line 345
    .local v14, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/android/mms/transaction/Transaction$RetryPolicy;->getMaxRetryInterval()J

    move-result-wide v24

    add-long v24, v24, v12

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 352
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v24

    if-nez v24, :cond_4

    .line 353
    :cond_0
    const-string v24, "TransactionService"

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 354
    const-string v24, "TransactionService"

    const-string v25, "No pending messages."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSendPendingUnderNoNetwork()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 360
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/TransactionService;->stopSelfIfIdle(I)V

    .line 364
    :cond_2
    if-eqz v14, :cond_3

    .line 365
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_3
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v17

    .line 347
    .local v17, ex:Ljava/lang/IllegalStateException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 371
    .end local v17           #ex:Ljava/lang/IllegalStateException;
    :cond_4
    :try_start_1
    const-string v24, "msg_id"

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 372
    .local v9, colMsgId:I
    const-string v24, "msg_type"

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 373
    .local v10, colMsgType:I
    const-string v24, "err_code"

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 374
    .local v7, colErrCode:I
    const-string v24, "err_type"

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 375
    .local v8, colErrType:I
    const-string v24, "retry_index"

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 376
    .local v11, colRetryCount:I
    const-string v24, "due_time"

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 380
    .local v6, colDueTime:I
    const/16 v20, 0x0

    .line 381
    .local v20, noNetwork:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSendPendingUnderNoNetwork()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const/16 v25, -0x1

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/mms/ui/MessageUtils;->isNetworkAvailable(Landroid/content/Context;IZ)Z

    move-result v24

    if-nez v24, :cond_6

    const/16 v20, 0x1

    .line 384
    :goto_1
    if-eqz v20, :cond_5

    .line 387
    const-string v24, "TransactionService"

    const-string v25, "loadTransactionsFromDb() registerForConnectionStateChanges"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;)V

    .line 394
    :cond_5
    :goto_2
    :pswitch_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 395
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 396
    .local v19, msgType:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v22

    .line 397
    .local v22, txType:I
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 398
    .local v15, dueTime:J
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "loadTransactionsFromDb() txType >"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSendPendingUnderNoNetwork()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 402
    if-eqz v20, :cond_7

    .line 403
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->onNetworkUnavailable(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 383
    .end local v15           #dueTime:J
    .end local v19           #msgType:I
    .end local v22           #txType:I
    :cond_6
    const/16 v20, 0x0

    goto :goto_1

    .line 408
    .restart local v15       #dueTime:J
    .restart local v19       #msgType:I
    .restart local v22       #txType:I
    :cond_7
    packed-switch v22, :pswitch_data_0

    .line 421
    :cond_8
    :pswitch_1
    :try_start_2
    sget-object v24, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static/range {v24 .. v26}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 422
    .local v23, uri:Landroid/net/Uri;
    new-instance v4, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    move/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v4, v0, v1}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 423
    .local v4, args:Lcom/android/mms/transaction/TransactionBundle;
    invoke-interface {v14, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/mms/transaction/TransactionBundle;->setErrorCode(I)V

    .line 424
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/mms/transaction/TransactionBundle;->setRetryCount(I)V

    .line 426
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "loadTransactionsFromDb() Transaction uri >"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "loadTransactionsFromDb() Transaction ErrorCode >"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v24, "TransactionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "loadTransactionsFromDb() Transaction RetryCount >"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v5, 0x0

    .line 433
    .local v5, bSendImmediately:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSendPendingUnderNoNetwork()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 434
    const/4 v5, 0x1

    .line 436
    :cond_9
    if-nez v5, :cond_a

    cmp-long v24, v15, v12

    if-lez v24, :cond_a

    .line 437
    sub-long v24, v15, v12

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService;->handleTransactionRequest(Lcom/android/mms/transaction/TransactionBundle;IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 445
    .end local v4           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v5           #bSendImmediately:Z
    .end local v6           #colDueTime:I
    .end local v7           #colErrCode:I
    .end local v8           #colErrType:I
    .end local v9           #colMsgId:I
    .end local v10           #colMsgType:I
    .end local v11           #colRetryCount:I
    .end local v15           #dueTime:J
    .end local v19           #msgType:I
    .end local v20           #noNetwork:Z
    .end local v22           #txType:I
    .end local v23           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v24

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v24

    .line 415
    .restart local v6       #colDueTime:I
    .restart local v7       #colErrCode:I
    .restart local v8       #colErrType:I
    .restart local v9       #colMsgId:I
    .restart local v10       #colMsgType:I
    .restart local v11       #colRetryCount:I
    .restart local v15       #dueTime:J
    .restart local v19       #msgType:I
    .restart local v20       #noNetwork:Z
    .restart local v22       #txType:I
    :pswitch_2
    :try_start_3
    invoke-interface {v14, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 416
    .local v18, failureType:I
    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/TransactionService;->isTransientFailure(I)Z

    move-result v24

    if-nez v24, :cond_8

    goto/16 :goto_2

    .line 439
    .end local v18           #failureType:I
    .restart local v4       #args:Lcom/android/mms/transaction/TransactionBundle;
    .restart local v5       #bSendImmediately:Z
    .restart local v23       #uri:Landroid/net/Uri;
    :cond_a
    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService;->handleTransactionRequest(Lcom/android/mms/transaction/TransactionBundle;IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 445
    .end local v4           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v5           #bSendImmediately:Z
    .end local v15           #dueTime:J
    .end local v19           #msgType:I
    .end local v22           #txType:I
    .end local v23           #uri:Landroid/net/Uri;
    :cond_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 161
    const-string v2, "TransactionService"

    const-string v3, "1-Creating TransactionService"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TransactionService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, thread:Landroid/os/HandlerThread;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 169
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 171
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 172
    .local v0, looper:Landroid/os/Looper;
    new-instance v2, Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-direct {v2, v0, p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;-><init>(Landroid/os/Looper;Lcom/android/mms/transaction/TransactionService;)V

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    .line 174
    new-instance v2, Lcom/android/mms/transaction/Scheduler;

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/mms/transaction/Scheduler;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mScheduler:Lcom/android/mms/transaction/Scheduler;

    .line 177
    sput-object p0, Lcom/android/mms/transaction/TransactionService;->mThis:Lcom/android/mms/transaction/TransactionService;

    .line 179
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 265
    const-string v0, "TransactionService"

    const-string v1, "Destroying TransactionService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 269
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x2

    .line 183
    if-nez p1, :cond_0

    .line 205
    :goto_0
    return v3

    .line 187
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 191
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 192
    .local v1, m:Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 193
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 196
    .end local v1           #m:Landroid/os/Message;
    :cond_1
    new-instance v0, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    .line 202
    .local v0, args:Lcom/android/mms/transaction/TransactionBundle;
    const/4 v2, 0x0

    invoke-direct {p0, p3, v0, v2}, Lcom/android/mms/transaction/TransactionService;->launchTransaction(ILcom/android/mms/transaction/TransactionBundle;Z)V

    goto :goto_0
.end method
