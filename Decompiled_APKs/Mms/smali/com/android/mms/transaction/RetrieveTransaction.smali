.class public Lcom/android/mms/transaction/RetrieveTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "RetrieveTransaction.java"


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "RetrieveTransaction"


# instance fields
.field private final mContentLocation:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "serviceId"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x2f

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;I)V

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/transaction/Transaction;->mType:I

    .line 82
    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 83
    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mMsgID:Ljava/lang/String;

    .line 84
    :cond_0
    const-string v0, "Goven"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RetrieveTransaction/construct uri is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v0, "content://"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    .line 87
    const-string v0, "Goven"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RetrieveTransaction/construct parsed mUri is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/android/mms/transaction/RetrieveTransaction;->getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 90
    const-string v0, "RetrieveTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X-Mms-Content-Location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "Jerry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retrieveTransaction server URI >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->getServerUrlFromMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initializing from X-Mms-Content-Location is abandoned!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "ct_l"

    aput-object v0, v3, v2

    const-string v0, "tr_id"

    aput-object v0, v3, v11

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 114
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 116
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v11, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    .line 119
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 120
    .local v10, str:Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, "mms?uid="

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 143
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v10           #str:Ljava/lang/String;
    :goto_0
    return-object v10

    .line 127
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, ggstr:Ljava/lang/String;
    const-string v0, "Goven"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RetrieveTransaction/get cursor string is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 143
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 136
    .end local v9           #ggstr:Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 137
    .local v7, cc:I
    const-string v0, "Goven"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor not null, but count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 152
    .end local v7           #cc:I
    :goto_1
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get X-Mms-Content-Location from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 148
    :cond_2
    const-string v0, "Goven"

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getThreadID(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v2

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 435
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 437
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 441
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 449
    :goto_0
    return-wide v0

    .line 441
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 449
    :goto_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 441
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 446
    :cond_1
    const-string v0, "Goven"

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    .locals 12
    .parameter "context"
    .parameter "rc"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 371
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageId()[B

    move-result-object v9

    .line 372
    .local v9, rawMessageId:[B
    if-eqz v9, :cond_1

    .line 373
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 374
    .local v8, messageId:Ljava/lang/String;
    const-string v4, "(m_id = ? AND m_type = ?)"

    .line 376
    .local v4, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    aput-object v8, v5, v11

    const/16 v0, 0x84

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    .line 378
    .local v5, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v11

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 382
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 384
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 389
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 393
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #messageId:Ljava/lang/String;
    :goto_0
    return v0

    .line 389
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #messageId:Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #messageId:Ljava/lang/String;
    :cond_1
    move v0, v11

    .line 393
    goto :goto_0

    .line 389
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #messageId:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    .locals 6
    .parameter "rc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getTransactionId()[B

    move-result-object v2

    .line 402
    .local v2, tranId:[B
    if-eqz v2, :cond_0

    .line 403
    const-string v3, "RetrieveTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendAcknowledgeInd- tid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/transaction/RetrieveTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    const/16 v3, 0x12

    invoke-direct {v0, v3, v2}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[B)V

    .line 410
    .local v0, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :try_start_0
    new-instance v3, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/RetrieveTransaction;->sendPdu([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v0           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :cond_0
    :goto_0
    return-void

    .line 411
    .restart local v0       #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :catch_0
    move-exception v1

    .line 414
    .local v1, e:Ljava/io/IOException;
    const-string v3, "RetrieveTransaction"

    const-string v4, "Unexpected IOException."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "contentLocation"

    .prologue
    const/4 v4, 0x0

    .line 422
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 423
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "ct_l"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 426
    return-void
.end method


# virtual methods
.method public getFailureDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const v1, 0x7f0900f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRetryPolicy()Lcom/android/mms/transaction/Transaction$RetryPolicy;
    .locals 3

    .prologue
    .line 471
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    .line 472
    .local v0, autoOn:Z
    new-instance v2, Lcom/android/mms/transaction/Transaction$RetryPolicy;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v2, v1}, Lcom/android/mms/transaction/Transaction$RetryPolicy;-><init>(I)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTransactionURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x1

    return v0
.end method

.method public process()V
    .locals 22

    .prologue
    .line 161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/Transaction;->mRetryCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/transaction/Transaction;->mRetryCount:I

    .line 163
    const/4 v6, 0x0

    .line 166
    .local v6, error:Lcom/android/mms/transaction/TransactionError;
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    const/16 v19, 0x81

    invoke-virtual/range {v17 .. v19}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)Z

    .line 170
    const-string v17, "RetrieveTransaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "get Pdu start - cl:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/RetrieveTransaction;->getPdu(Ljava/lang/String;)[B

    move-result-object v11

    .line 172
    .local v11, resp:[B
    const-string v17, "RetrieveTransaction"

    const-string v18, "get Pdu end"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v17, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v14

    check-cast v14, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 176
    .local v14, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    if-nez v14, :cond_1

    .line 177
    new-instance v7, Lcom/android/mms/transaction/TransactionError;

    const/16 v17, 0x1002

    move/from16 v0, v17

    invoke-direct {v7, v0}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6

    .line 178
    .end local v6           #error:Lcom/android/mms/transaction/TransactionError;
    .local v7, error:Lcom/android/mms/transaction/TransactionError;
    :try_start_1
    new-instance v17, Lcom/google/android/mms/MmsException;

    const-string v18, "Invalid M-Retrieve.conf PDU."

    invoke-direct/range {v17 .. v18}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_7

    .line 312
    :catch_0
    move-exception v5

    .line 314
    .end local v11           #resp:[B
    .end local v14           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .local v5, e:Lcom/google/android/mms/MmsException;
    :goto_0
    :try_start_2
    const-string v17, "RetrieveTransaction"

    const-string v18, "Unexpected MmsException."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    if-nez v7, :cond_14

    .line 317
    new-instance v6, Lcom/android/mms/transaction/TransactionError;

    const/16 v17, 0x1001

    move/from16 v0, v17

    invoke-direct {v6, v0}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 319
    .end local v7           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v6       #error:Lcom/android/mms/transaction/TransactionError;
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 364
    const-string v17, "RetrieveTransaction"

    const-string v18, "Retrieval failed."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .end local v5           #e:Lcom/google/android/mms/MmsException;
    :cond_0
    :goto_2
    return-void

    .line 181
    .restart local v11       #resp:[B
    .restart local v14       #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :cond_1
    :try_start_4
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/RetrieveConf;->getRetrieveStatus()I

    move-result v13

    .line 184
    .local v13, retrStatus:I
    const/16 v17, 0x94

    invoke-static/range {v17 .. v17}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v17

    if-nez v17, :cond_2

    const/16 v17, 0xaf

    invoke-static/range {v17 .. v17}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v17

    if-nez v17, :cond_2

    const/16 v17, 0xc

    invoke-static/range {v17 .. v17}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 187
    :cond_2
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/RetrieveConf;->getRetrieveText()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    if-eqz v17, :cond_4

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/RetrieveConf;->getRetrieveText()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v12

    .line 189
    .local v12, respText:Ljava/lang/String;
    :goto_3
    const-string v17, "RetrieveTransaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "retrieve text:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0903bb

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/RetrieveTransaction;->showLowBalanceNotification()V

    .line 195
    .end local v12           #respText:Ljava/lang/String;
    :cond_3
    if-eqz v13, :cond_5

    const/16 v17, 0x80

    move/from16 v0, v17

    if-eq v13, v0, :cond_5

    .line 197
    const-string v17, "RetrieveTransaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "!!Retrieve MMS fail!! reason="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {v13}, Lcom/android/mms/transaction/TransactionError;->retrieveStatusToErrorCode(I)I

    move-result v4

    .line 200
    .local v4, code:I
    new-instance v7, Lcom/android/mms/transaction/TransactionError;

    invoke-direct {v7, v4}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6

    .line 201
    .end local v6           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v7       #error:Lcom/android/mms/transaction/TransactionError;
    :try_start_5
    new-instance v17, Lcom/google/android/mms/MmsException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Server returns an error code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_7

    .line 320
    .end local v4           #code:I
    .end local v13           #retrStatus:I
    :catch_1
    move-exception v5

    .line 322
    .end local v11           #resp:[B
    .end local v14           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .local v5, e:Ljava/lang/ClassCastException;
    :goto_4
    :try_start_6
    const-string v17, "RetrieveTransaction"

    const-string v18, "Invalid M-Retrieve.conf pdu."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    new-instance v6, Lcom/android/mms/transaction/TransactionError;

    const/16 v17, 0x1001

    move/from16 v0, v17

    invoke-direct {v6, v0}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 325
    .end local v7           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v6       #error:Lcom/android/mms/transaction/TransactionError;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 364
    const-string v17, "RetrieveTransaction"

    const-string v18, "Retrieval failed."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 187
    .end local v5           #e:Ljava/lang/ClassCastException;
    .restart local v11       #resp:[B
    .restart local v13       #retrStatus:I
    .restart local v14       #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 204
    :cond_5
    const/4 v8, 0x0

    .line 205
    .local v8, msgUri:Landroid/net/Uri;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lcom/android/mms/transaction/RetrieveTransaction;->isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 296
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 299
    if-eqz v8, :cond_7

    .line 302
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 305
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lcom/android/mms/util/MsgForwardHelper;->autoForwardMMS(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 310
    const-string v17, "RetrieveTransaction"

    const-string v18, "RETRIEVE MMS successful."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mms/transaction/RetrieveTransaction;->sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_6

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 364
    const-string v17, "RetrieveTransaction"

    const-string v18, "Retrieval failed."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 213
    :cond_8
    :try_start_9
    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_9

    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    :cond_9
    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v18, 0x25

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 217
    :cond_a
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    if-eqz v17, :cond_b

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 219
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/mms/transaction/RetrieveTransaction;->getThreadID(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v15

    .line 220
    .local v15, threadID:J
    const-wide/16 v17, 0x0

    cmp-long v17, v15, v17

    if-lez v17, :cond_c

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, address:Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 224
    new-instance v17, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 241
    .end local v3           #address:Ljava/lang/String;
    .end local v15           #threadID:J
    :cond_c
    :goto_6
    const-string v17, "RetrieveTransaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "pdu type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportForceRelatedByCheckSmil()Z

    move-result v17

    if-eqz v17, :cond_d

    const-string v17, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-static {v14}, Lcom/android/mms/ui/MessageUtils;->hasSmilPart(Lcom/google/android/mms/pdu/RetrieveConf;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 245
    const-string v17, "application/vnd.wap.multipart.related"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setContentType([B)V

    .line 246
    const-string v17, "RetrieveTransaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "persist pdu ContentType="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsApp;->isShowingMTMmsbyDeviceTime()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 253
    if-eqz v14, :cond_e

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    div-long v17, v17, v19

    move-wide/from16 v0, v17

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/RetrieveConf;->setDate(J)V

    .line 258
    :cond_e
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/mms/transaction/PushReceiver;->mUpdateLocked:Z

    .line 259
    const-string v17, "RetrieveTransaction"

    const-string v18, "mms notification lock"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v10

    .line 263
    .local v10, persister:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v17, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v10, v14, v0}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 268
    invoke-static {}, Lcom/android/mms/MmsApp;->isShowingMTMmsbyDeviceTime()Z

    move-result v17

    if-nez v17, :cond_f

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-static {v0, v8, v1, v2}, Lcom/android/mms/ui/MessageUtils;->updateMessageDate2(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 274
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 278
    invoke-static {}, Lcom/android/mms/MmsApp;->accumulateNewIncomingMSG()V

    .line 279
    const-string v17, "RetrieveTransaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "manully download M-Retrieve.conf: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v8, v1}, Lcom/android/mms/transaction/RetrieveTransaction;->updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 286
    const/16 v17, 0x78

    invoke-static/range {v17 .. v17}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v17

    if-nez v17, :cond_10

    const/16 v17, 0x59

    invoke-static/range {v17 .. v17}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v17

    if-nez v17, :cond_10

    const/16 v17, 0x1b

    invoke-static/range {v17 .. v17}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 289
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/RetrieveConf;->getApplicationID()[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setApplicationID([B)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/RetrieveConf;->getReplyToApplicationID()[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setReplyToApplicationID([B)V

    goto/16 :goto_5

    .line 312
    .end local v8           #msgUri:Landroid/net/Uri;
    .end local v10           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v11           #resp:[B
    .end local v13           #retrStatus:I
    .end local v14           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :catch_2
    move-exception v5

    move-object v7, v6

    .end local v6           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v7       #error:Lcom/android/mms/transaction/TransactionError;
    goto/16 :goto_0

    .line 227
    .end local v7           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v6       #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v8       #msgUri:Landroid/net/Uri;
    .restart local v11       #resp:[B
    .restart local v13       #retrStatus:I
    .restart local v14       #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :cond_11
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    if-eqz v17, :cond_c

    .line 229
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    .line 230
    .restart local v3       #address:Ljava/lang/String;
    const-string v17, "<"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    const-string v17, ">"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 232
    const/16 v17, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 233
    .local v9, number_trim:Ljava/lang/String;
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 234
    new-instance v17, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/RetrieveConf;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_6

    .line 320
    .end local v3           #address:Ljava/lang/String;
    .end local v8           #msgUri:Landroid/net/Uri;
    .end local v9           #number_trim:Ljava/lang/String;
    .end local v11           #resp:[B
    .end local v13           #retrStatus:I
    .end local v14           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :catch_3
    move-exception v5

    move-object v7, v6

    .end local v6           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v7       #error:Lcom/android/mms/transaction/TransactionError;
    goto/16 :goto_4

    .line 326
    .end local v7           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v6       #error:Lcom/android/mms/transaction/TransactionError;
    :catch_4
    move-exception v5

    move-object v7, v6

    .line 328
    .end local v6           #error:Lcom/android/mms/transaction/TransactionError;
    .local v5, e:Ljava/io/IOException;
    .restart local v7       #error:Lcom/android/mms/transaction/TransactionError;
    :goto_7
    :try_start_a
    const-string v17, "RetrieveTransaction"

    const-string v18, "Unexpected IOException."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    instance-of v0, v5, Lcom/htc/messaging/util/HtcHttpTransportError;

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 334
    check-cast v5, Lcom/htc/messaging/util/HtcHttpTransportError;

    .end local v5           #e:Ljava/io/IOException;
    invoke-virtual {v5}, Lcom/htc/messaging/util/HtcHttpTransportError;->toTransactionError()I

    move-result v4

    .line 335
    .restart local v4       #code:I
    new-instance v6, Lcom/android/mms/transaction/TransactionError;

    invoke-direct {v6, v4}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 339
    .end local v4           #code:I
    .end local v7           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v6       #error:Lcom/android/mms/transaction/TransactionError;
    :goto_8
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 364
    const-string v17, "RetrieveTransaction"

    const-string v18, "Retrieval failed."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 337
    .end local v6           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v5       #e:Ljava/io/IOException;
    .restart local v7       #error:Lcom/android/mms/transaction/TransactionError;
    :cond_12
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/RetrieveTransaction;->getNetworkError()Lcom/android/mms/transaction/TransactionError;

    move-result-object v6

    .end local v7           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v6       #error:Lcom/android/mms/transaction/TransactionError;
    goto :goto_8

    .line 341
    .end local v5           #e:Ljava/io/IOException;
    :catch_5
    move-exception v5

    move-object v7, v6

    .line 343
    .end local v6           #error:Lcom/android/mms/transaction/TransactionError;
    .local v5, e:Ljava/lang/Exception;
    .restart local v7       #error:Lcom/android/mms/transaction/TransactionError;
    :goto_9
    const-string v17, "RetrieveTransaction"

    const-string v18, "Unexpected Exception."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    new-instance v6, Lcom/android/mms/transaction/TransactionError;

    const/16 v17, 0x1001

    move/from16 v0, v17

    invoke-direct {v6, v0}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 346
    .end local v7           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v6       #error:Lcom/android/mms/transaction/TransactionError;
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 364
    const-string v17, "RetrieveTransaction"

    const-string v18, "Retrieval failed."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 348
    .end local v5           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v5

    move-object v7, v6

    .line 350
    .end local v6           #error:Lcom/android/mms/transaction/TransactionError;
    .local v5, e:Ljava/lang/OutOfMemoryError;
    .restart local v7       #error:Lcom/android/mms/transaction/TransactionError;
    :goto_a
    :try_start_e
    const-string v17, "RetrieveTransaction"

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    new-instance v6, Lcom/android/mms/transaction/TransactionError;

    const/16 v17, 0x1001

    move/from16 v0, v17

    invoke-direct {v6, v0}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 357
    .end local v7           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v6       #error:Lcom/android/mms/transaction/TransactionError;
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 364
    const-string v17, "RetrieveTransaction"

    const-string v18, "Retrieval failed."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 360
    .end local v5           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v17

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 364
    const-string v18, "RetrieveTransaction"

    const-string v19, "Retrieval failed."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    throw v17

    .line 360
    .end local v6           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v7       #error:Lcom/android/mms/transaction/TransactionError;
    :catchall_1
    move-exception v17

    move-object v6, v7

    .end local v7           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v6       #error:Lcom/android/mms/transaction/TransactionError;
    goto :goto_b

    .line 348
    .end local v6           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v7       #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v11       #resp:[B
    .restart local v14       #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :catch_7
    move-exception v5

    goto/16 :goto_a

    .line 341
    :catch_8
    move-exception v5

    goto/16 :goto_9

    .line 326
    :catch_9
    move-exception v5

    goto/16 :goto_7

    .end local v11           #resp:[B
    .end local v14           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .local v5, e:Lcom/google/android/mms/MmsException;
    :cond_14
    move-object v6, v7

    .end local v7           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v6       #error:Lcom/android/mms/transaction/TransactionError;
    goto/16 :goto_1
.end method

.method public setFailedContentUri()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 461
    return-void
.end method
