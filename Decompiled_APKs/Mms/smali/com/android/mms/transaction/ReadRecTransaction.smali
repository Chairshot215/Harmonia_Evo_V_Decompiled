.class public Lcom/android/mms/transaction/ReadRecTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "ReadRecTransaction.java"


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "ReadRecTransaction"


# instance fields
.field private final mReadReportURI:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "transId"
    .parameter "uri"

    .prologue
    const/16 v1, 0x2f

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;I)V

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/transaction/Transaction;->mType:I

    .line 57
    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 58
    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mMsgID:Ljava/lang/String;

    .line 59
    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    .line 60
    iput-object p3, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/android/mms/transaction/Transaction$RetryPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/Transaction$RetryPolicy;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mRetryPolicy:Lcom/android/mms/transaction/Transaction$RetryPolicy;

    .line 62
    const-string v0, "ReadRecTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadRecTransaction server URI >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/ReadRecTransaction;->getServerUrlFromMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/transaction/ReadRecTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getFailureDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x3

    return v0
.end method

.method public process()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    .line 78
    iget v8, p0, Lcom/android/mms/transaction/Transaction;->mRetryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/mms/transaction/Transaction;->mRetryCount:I

    .line 80
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    .line 82
    .local v4, persister:Lcom/google/android/mms/pdu/PduPersister;
    const/4 v1, 0x0

    .line 85
    .local v1, error:Lcom/android/mms/transaction/TransactionError;
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v6

    check-cast v6, Lcom/google/android/mms/pdu/ReadRecInd;

    .line 88
    .local v6, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    new-instance v8, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v6}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v5

    .line 89
    .local v5, postingData:[B
    const-string v8, "ReadRecTransaction"

    const-string v9, "send Pdu start"

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/transaction/ReadRecTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v5}, Lcom/android/mms/transaction/ReadRecTransaction;->sendPdu([B)[B

    .line 91
    const-string v8, "ReadRecTransaction"

    const-string v9, "send Pdu end"

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/transaction/ReadRecTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v8, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    sget-object v9, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v8, v9}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 94
    .local v7, uri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 95
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 96
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/ReadRecInd;->getMessageId()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, messageId:Ljava/lang/String;
    const-string v8, "ReadRecTransaction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Send Read successful. messageId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/transaction/ReadRecTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3

    .line 123
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v8

    if-eq v8, v12, :cond_0

    .line 124
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 125
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v9, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 126
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8, v1}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 127
    const-string v8, "ReadRecTransaction"

    const-string v9, "Delivery failed."

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/transaction/ReadRecTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v3           #messageId:Ljava/lang/String;
    .end local v5           #postingData:[B
    .end local v6           #readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v8, "ReadRecTransaction"

    const-string v9, "Failed to send M-Read-Rec.Ind."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->getNetworkError()Lcom/android/mms/transaction/TransactionError;

    move-result-object v1

    .line 103
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v8

    if-eq v8, v12, :cond_0

    .line 124
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 125
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v9, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 126
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8, v1}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 127
    const-string v8, "ReadRecTransaction"

    const-string v9, "Delivery failed."

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/transaction/ReadRecTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, e:Lcom/google/android/mms/MmsException;
    :try_start_2
    const-string v8, "ReadRecTransaction"

    const-string v9, "Failed to load message from Outbox."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    new-instance v2, Lcom/android/mms/transaction/TransactionError;

    const/16 v8, 0x1001

    invoke-direct {v2, v8}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    .end local v1           #error:Lcom/android/mms/transaction/TransactionError;
    .local v2, error:Lcom/android/mms/transaction/TransactionError;
    :try_start_3
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v8

    if-eq v8, v12, :cond_2

    .line 124
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 125
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v9, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 126
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8, v2}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 127
    const-string v8, "ReadRecTransaction"

    const-string v9, "Delivery failed."

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/transaction/ReadRecTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .end local v2           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v1       #error:Lcom/android/mms/transaction/TransactionError;
    goto :goto_0

    .line 110
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_2
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v8, "ReadRecTransaction"

    const-string v9, "Unexpected RuntimeException."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    new-instance v2, Lcom/android/mms/transaction/TransactionError;

    const/16 v8, 0x1001

    invoke-direct {v2, v8}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    .end local v1           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v2       #error:Lcom/android/mms/transaction/TransactionError;
    :try_start_5
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v8

    if-eq v8, v12, :cond_2

    .line 124
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 125
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v9, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 126
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8, v2}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 127
    const-string v8, "ReadRecTransaction"

    const-string v9, "Delivery failed."

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/transaction/ReadRecTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .end local v2           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v1       #error:Lcom/android/mms/transaction/TransactionError;
    goto/16 :goto_0

    .line 116
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 118
    .local v0, e:Ljava/util/concurrent/TimeoutException;
    :try_start_6
    const-string v8, "ReadRecTransaction"

    const-string v9, "Send Read.rec timeout."

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    new-instance v2, Lcom/android/mms/transaction/TransactionError;

    const/16 v8, 0x1062

    invoke-direct {v2, v8}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 121
    .end local v1           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v2       #error:Lcom/android/mms/transaction/TransactionError;
    :try_start_7
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 123
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v8

    if-eq v8, v12, :cond_2

    .line 124
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 125
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v9, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 126
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8, v2}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 127
    const-string v8, "ReadRecTransaction"

    const-string v9, "Delivery failed."

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/transaction/ReadRecTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .end local v2           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v1       #error:Lcom/android/mms/transaction/TransactionError;
    goto/16 :goto_0

    .line 123
    .end local v0           #e:Ljava/util/concurrent/TimeoutException;
    :catchall_0
    move-exception v8

    :goto_1
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v9}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v9

    if-eq v9, v12, :cond_1

    .line 124
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v9, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 125
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v10, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 126
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v9, v1}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 127
    const-string v9, "ReadRecTransaction"

    const-string v10, "Delivery failed."

    invoke-virtual {p0, v9, v10}, Lcom/android/mms/transaction/ReadRecTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    throw v8

    .line 123
    .end local v1           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v2       #error:Lcom/android/mms/transaction/TransactionError;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v1       #error:Lcom/android/mms/transaction/TransactionError;
    goto :goto_1

    .end local v1           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v2       #error:Lcom/android/mms/transaction/TransactionError;
    :cond_2
    move-object v1, v2

    .end local v2           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v1       #error:Lcom/android/mms/transaction/TransactionError;
    goto/16 :goto_0
.end method

.method public setFailedContentUri()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 141
    return-void
.end method
