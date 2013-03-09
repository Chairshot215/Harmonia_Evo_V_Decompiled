.class Lcom/android/mms/transaction/Scheduler$1;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/Scheduler;->schedule(Lcom/android/mms/transaction/Transaction;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/Scheduler;

.field final synthetic val$tx:Lcom/android/mms/transaction/Transaction;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/Scheduler;Lcom/android/mms/transaction/Transaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/mms/transaction/Scheduler$1;->this$0:Lcom/android/mms/transaction/Scheduler;

    iput-object p2, p0, Lcom/android/mms/transaction/Scheduler$1;->val$tx:Lcom/android/mms/transaction/Transaction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 88
    iget-object v5, p0, Lcom/android/mms/transaction/Scheduler$1;->this$0:Lcom/android/mms/transaction/Scheduler;

    iget-object v6, p0, Lcom/android/mms/transaction/Scheduler$1;->val$tx:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/Scheduler;->notifyTransactionStarted(Lcom/android/mms/transaction/Transaction;)V

    .line 89
    iget-object v5, p0, Lcom/android/mms/transaction/Scheduler$1;->this$0:Lcom/android/mms/transaction/Scheduler;

    iget-object v5, v5, Lcom/android/mms/transaction/Scheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 90
    .local v0, airplaneMode:I
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 92
    iget-object v5, p0, Lcom/android/mms/transaction/Scheduler$1;->val$tx:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v5}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v3

    .line 93
    .local v3, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v3, v7}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 94
    new-instance v2, Lcom/android/mms/transaction/TransactionError;

    const/16 v5, 0x1063

    invoke-direct {v2, v5, v8}, Lcom/android/mms/transaction/TransactionError;-><init>(IZ)V

    .line 97
    .local v2, error:Lcom/android/mms/transaction/TransactionError;
    invoke-virtual {v3, v2}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 98
    iget-object v5, p0, Lcom/android/mms/transaction/Scheduler$1;->val$tx:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v5}, Lcom/android/mms/transaction/Transaction;->getTransactionURI()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 99
    iget-object v5, p0, Lcom/android/mms/transaction/Scheduler$1;->val$tx:Lcom/android/mms/transaction/Transaction;

    iget-object v6, p0, Lcom/android/mms/transaction/Scheduler$1;->val$tx:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v6}, Lcom/android/mms/transaction/Transaction;->getRetryCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/Transaction;->setRetryCount(I)V

    .line 100
    iget-object v5, p0, Lcom/android/mms/transaction/Scheduler$1;->val$tx:Lcom/android/mms/transaction/Transaction;

    const-string v6, "Scheduler"

    const-string v7, "Don\'t send/receive in airplane mode"

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/transaction/Transaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v2           #error:Lcom/android/mms/transaction/TransactionError;
    .end local v3           #state:Lcom/android/mms/transaction/TransactionState;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/mms/transaction/Scheduler$1;->this$0:Lcom/android/mms/transaction/Scheduler;

    iget-object v6, p0, Lcom/android/mms/transaction/Scheduler$1;->val$tx:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/Scheduler;->notifyTransactionFinished(Lcom/android/mms/transaction/Transaction;)V

    .line 137
    return-void

    .line 106
    :cond_1
    iget-object v5, p0, Lcom/android/mms/transaction/Scheduler$1;->val$tx:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v5}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 107
    iget-object v5, p0, Lcom/android/mms/transaction/Scheduler$1;->val$tx:Lcom/android/mms/transaction/Transaction;

    iget-object v5, v5, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/mms/transaction/Scheduler$1;->val$tx:Lcom/android/mms/transaction/Transaction;

    iget-object v6, v6, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, str:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 109
    iget-object v5, p0, Lcom/android/mms/transaction/Scheduler$1;->this$0:Lcom/android/mms/transaction/Scheduler;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    #calls: Lcom/android/mms/transaction/Scheduler;->checkPendingTransactionExist(J)Z
    invoke-static {v5, v6, v7}, Lcom/android/mms/transaction/Scheduler;->access$000(Lcom/android/mms/transaction/Scheduler;J)Z

    move-result v5

    if-nez v5, :cond_2

    .line 110
    iget-object v5, p0, Lcom/android/mms/transaction/Scheduler$1;->val$tx:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v5}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v3

    .line 111
    .restart local v3       #state:Lcom/android/mms/transaction/TransactionState;
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 112
    new-instance v2, Lcom/android/mms/transaction/TransactionError;

    const/16 v5, 0x1014

    invoke-direct {v2, v5, v8}, Lcom/android/mms/transaction/TransactionError;-><init>(IZ)V

    .line 115
    .restart local v2       #error:Lcom/android/mms/transaction/TransactionError;
    invoke-virtual {v3, v2}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 116
    iget-object v5, p0, Lcom/android/mms/transaction/Scheduler$1;->val$tx:Lcom/android/mms/transaction/Transaction;

    const-string v6, "Scheduler"

    const-string v7, "msg isn\'t in pending table"

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/transaction/Transaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v2           #error:Lcom/android/mms/transaction/TransactionError;
    .end local v3           #state:Lcom/android/mms/transaction/TransactionState;
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/transaction/Scheduler$1;->val$tx:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v5}, Lcom/android/mms/transaction/Transaction;->process()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Scheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "schedule run -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #str:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/mms/transaction/Scheduler$1;->val$tx:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v5}, Lcom/android/mms/transaction/Transaction;->process()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 129
    :catch_1
    move-exception v1

    .line 130
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "Scheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "schedule run -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
