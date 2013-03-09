.class public abstract Lcom/android/mms/transaction/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/Transaction$RetryPolicy;,
        Lcom/android/mms/transaction/Transaction$TransactionFactory;
    }
.end annotation


# static fields
.field protected static final BROADCAST_TRANSACTION:Ljava/lang/String; = "com.htc.messaging.transaction"

.field protected static final BROADCAST_TRANSACTION_REMOTE_NUMBER:Ljava/lang/String; = "remote_number"

.field protected static final BROADCAST_TRANSACTION_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field protected static final BROADCAST_TRANSACTION_TYPE:Ljava/lang/String; = "type"

.field public static final DECLINE_TRANSACTION:I = 0x4

.field public static final DEFAULT_RETRY_MODE:I = 0x0

.field private static final LOCAL_LOGV:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Transaction"

.field public static final MMSC_TIMEOUT_RETRY_MODE:I = 0x1

.field public static final NOTIFICATION_TRANSACTION:I = 0x0

.field public static final READREC_TRANSACTION:I = 0x3

.field public static final RETRIEVE_TRANSACTION:I = 0x1

.field public static final SEND_TRANSACTION:I = 0x2


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mId:Ljava/lang/String;

.field protected mMsgID:Ljava/lang/String;

.field protected mRetryCount:I

.field protected mRetryMode:I

.field protected mRetryPolicy:Lcom/android/mms/transaction/Transaction$RetryPolicy;

.field mRunnable:Ljava/lang/Runnable;

.field protected mServerUrl:Ljava/lang/String;

.field private final mServiceId:I

.field protected mTransactionState:Lcom/android/mms/transaction/TransactionState;

.field protected mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "serviceId"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mServerUrl:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/transaction/Transaction;->mRetryMode:I

    .line 88
    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mRunnable:Ljava/lang/Runnable;

    .line 111
    iput-object p1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    .line 112
    new-instance v0, Lcom/android/mms/transaction/TransactionState;

    invoke-direct {v0}, Lcom/android/mms/transaction/TransactionState;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    .line 113
    iput p2, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    .line 114
    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mRunnable:Ljava/lang/Runnable;

    .line 115
    return-void
.end method

.method private correctURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "urlString"

    .prologue
    .line 476
    move-object v1, p1

    .line 477
    .local v1, newURLString:Ljava/lang/String;
    const/4 v2, 0x0

    .line 479
    .local v2, url:Ljava/net/URL;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v2           #url:Ljava/net/URL;
    .local v3, url:Ljava/net/URL;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v4

    if-lez v4, :cond_0

    .line 483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    :cond_0
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :cond_1
    move-object v2, v3

    .line 493
    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    :goto_0
    return-object v1

    .line 488
    :catch_0
    move-exception v0

    .line 490
    .local v0, e:Ljava/net/MalformedURLException;
    :goto_1
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 488
    .end local v0           #e:Ljava/net/MalformedURLException;
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto :goto_1
.end method


# virtual methods
.method public Log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][TTP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/transaction/Transaction;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][MID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mMsgID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][RCT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/transaction/Transaction;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]>> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return-void
.end method

.method public abstract getFailureDescription()Ljava/lang/String;
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    return-object v0
.end method

.method protected getNetworkError()Lcom/android/mms/transaction/TransactionError;
    .locals 3

    .prologue
    .line 326
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_0

    .line 328
    invoke-static {}, Lcom/android/mms/transaction/CDMATransportError;->getLastError()Lcom/android/mms/transaction/CDMATransportError;

    move-result-object v0

    .line 329
    .local v0, cause:Lcom/android/mms/transaction/CDMATransportError;
    if-eqz v0, :cond_0

    .line 330
    new-instance v1, Lcom/android/mms/transaction/TransactionError;

    invoke-direct {v1, v0}, Lcom/android/mms/transaction/TransactionError;-><init>(Lcom/android/mms/transaction/CDMATransportError;)V

    .line 333
    .end local v0           #cause:Lcom/android/mms/transaction/CDMATransportError;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/mms/transaction/TransactionError;

    const/16 v2, 0x1014

    invoke-direct {v1, v2}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V

    goto :goto_0
.end method

.method protected getPdu(Ljava/lang/String;)[B
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/transport/Transport;->requestConnection(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 255
    const-string v1, "Goven"

    const-string v2, "getPdu requestConnection -- ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/transport/Transport;->createTransport(Landroid/content/Context;)Lcom/android/mms/transport/Transport;

    move-result-object v0

    .line 257
    .local v0, transport:Lcom/android/mms/transport/Transport;
    const-string v1, "Transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transport retrieve url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/transaction/Transaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, p1}, Lcom/android/mms/transport/Transport;->retrieve(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 246
    .end local v0           #transport:Lcom/android/mms/transport/Transport;
    :pswitch_0
    const-string v1, "Transaction"

    const-string v2, "Network setup timeout."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :pswitch_1
    const-string v1, "Goven"

    const-string v2, "getPdu requestConnection -- fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :pswitch_2
    const-string v1, "Goven"

    const-string v2, "getPdu requestConnection -- closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to request connection."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/android/mms/transaction/Transaction;->mRetryCount:I

    return v0
.end method

.method public getRetryMode()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/android/mms/transaction/Transaction;->mRetryMode:I

    return v0
.end method

.method public getRetryPolicy()Lcom/android/mms/transaction/Transaction$RetryPolicy;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mRetryPolicy:Lcom/android/mms/transaction/Transaction$RetryPolicy;

    return-object v0
.end method

.method public getServerUrlFromMessage(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .parameter "mUri"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 289
    if-nez p1, :cond_0

    .line 312
    :goto_0
    return-object v4

    .line 292
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 293
    .local v8, mScheme:Ljava/lang/String;
    const-string v0, "Jerry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScheme >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz v8, :cond_3

    const-string v0, "content"

    invoke-virtual {v8, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 296
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/String;

    const-string v2, "ct_l"

    aput-object v2, v3, v5

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 299
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 301
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mServerUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 312
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mServerUrl:Ljava/lang/String;

    goto :goto_0

    .line 305
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 310
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mServerUrl:Ljava/lang/String;

    goto :goto_1
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    return v0
.end method

.method public getState()Lcom/android/mms/transaction/TransactionState;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    return-object v0
.end method

.method public getTransactionURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public isEquivalent(Lcom/android/mms/transaction/Transaction;)Z
    .locals 2
    .parameter "transaction"

    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyFailureToObservers()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 280
    invoke-virtual {p0}, Lcom/android/mms/transaction/Transaction;->setFailedContentUri()V

    .line 281
    return-void
.end method

.method public abstract process()V
.end method

.method protected sendPdu(J[B)[B
    .locals 5
    .parameter "token"
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/NoRouteToHostException;,
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/transport/Transport;->requestConnection(Landroid/content/Context;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 227
    const-string v2, "Transaction"

    const-string v3, "Connection status is default"

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/transaction/Transaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 201
    :pswitch_0
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 203
    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/transport/Transport;->createTransport(Landroid/content/Context;)Lcom/android/mms/transport/Transport;

    move-result-object v1

    .line 205
    .local v1, transport:Lcom/android/mms/transport/Transport;
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mServerUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mServerUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 206
    const-string v2, "Jerry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transaction - sendPdu -> mServerUrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mServerUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x25

    if-ne v2, v3, :cond_1

    .line 209
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mServerUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/mms/transaction/Transaction;->correctURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/mms/transport/Transport;->mMessageCenterUrl:Ljava/lang/String;

    .line 218
    :cond_0
    :goto_0
    const-string v2, "Transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transport send token:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/transaction/Transaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1, p3, p1, p2}, Lcom/android/mms/transport/Transport;->send([BJ)[B

    move-result-object v0

    .line 224
    .local v0, r:[B
    return-object v0

    .line 212
    .end local v0           #r:[B
    :cond_1
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mServerUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/mms/transport/Transport;->mMessageCenterUrl:Ljava/lang/String;

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected sendPdu([B)[B
    .locals 2
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/NoRouteToHostException;,
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 179
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[B)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract setFailedContentUri()V
.end method

.method public setRetryCount(I)V
    .locals 0
    .parameter "retryCount"

    .prologue
    .line 337
    iput p1, p0, Lcom/android/mms/transaction/Transaction;->mRetryCount:I

    .line 338
    return-void
.end method

.method public setRetryMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 117
    iput p1, p0, Lcom/android/mms/transaction/Transaction;->mRetryMode:I

    .line 118
    return-void
.end method

.method showLowBalanceNotification()V
    .locals 5

    .prologue
    const v4, 0x7f0903ba

    .line 505
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const v3, 0x7f0903bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, respText:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.ui.action.SHOW_COMFIRM_DIALOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, dialogIntent:Landroid/content/Intent;
    const-string v2, "title"

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 511
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/android/mms/transaction/MessagingNotification;->notifyErrorMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 514
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
