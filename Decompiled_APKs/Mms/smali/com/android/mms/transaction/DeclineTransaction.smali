.class public Lcom/android/mms/transaction/DeclineTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "DeclineTransaction.java"


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "DeclineTransaction"


# instance fields
.field private mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "serviceId"
    .parameter "uri"

    .prologue
    const/16 v2, 0x2f

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;I)V

    .line 80
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/mms/transaction/Transaction;->mType:I

    .line 81
    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 82
    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mMsgID:Ljava/lang/String;

    .line 84
    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/DeclineTransaction;->mUri:Landroid/net/Uri;

    .line 87
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/DeclineTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    iput-object v1, p0, Lcom/android/mms/transaction/DeclineTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/DeclineTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 95
    const-string v1, "DeclineTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationTransaction server URI >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/DeclineTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/DeclineTransaction;->getServerUrlFromMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/transaction/DeclineTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mServerUrl:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 97
    const-string v1, "DeclineTransaction"

    const-string v2, "mServerUrl==null"

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/transaction/DeclineTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/mms/transaction/DeclineTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 99
    const-string v1, "DeclineTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentLocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/transaction/DeclineTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/transaction/DeclineTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/DeclineTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mServerUrl:Ljava/lang/String;

    .line 109
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "DeclineTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load NotificationInd from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 103
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :cond_1
    const-string v1, "DeclineTransaction"

    const-string v2, "mNotificationInd.getContentLocation()"

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/transaction/DeclineTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    const-string v1, "DeclineTransaction"

    const-string v2, "mServerUrl!=null"

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/transaction/DeclineTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendNotifyRespInd(I)V
    .locals 5
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/google/android/mms/pdu/NotifyRespInd;

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/mms/transaction/DeclineTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    .line 150
    .local v0, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    const-string v1, "DeclineTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNotifyRespInd- tid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/transaction/DeclineTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/transaction/DeclineTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/DeclineTransaction;->sendPdu([B)[B

    .line 153
    return-void
.end method


# virtual methods
.method public getFailureDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/transaction/DeclineTransaction;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x4

    return v0
.end method

.method public process()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 123
    iget v1, p0, Lcom/android/mms/transaction/Transaction;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/mms/transaction/Transaction;->mRetryCount:I

    .line 126
    const/16 v1, 0x82

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/DeclineTransaction;->sendNotifyRespInd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 140
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 142
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Lcom/google/android/mms/MmsException;
    :try_start_1
    const-string v1, "DeclineTransaction"

    const-string v2, "Unexpected MmsException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto :goto_0

    .line 131
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v0

    .line 133
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v1, "DeclineTransaction"

    const-string v2, "Unexpected IOException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto :goto_0

    .line 135
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "DeclineTransaction"

    const-string v2, "Unexpected Exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    throw v1
.end method

.method public setFailedContentUri()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/DeclineTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 164
    return-void
.end method
