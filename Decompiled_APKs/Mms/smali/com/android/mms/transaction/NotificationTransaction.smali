.class public Lcom/android/mms/transaction/NotificationTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "NotificationTransaction.java"


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "NotificationTransaction"


# instance fields
.field private mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/android/mms/pdu/NotificationInd;)V
    .locals 5
    .parameter "context"
    .parameter "serviceId"
    .parameter "ind"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;I)V

    .line 118
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p3, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 120
    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, uri:Ljava/lang/String;
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/mms/transaction/Transaction;->mType:I

    .line 122
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 123
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/Transaction;->mMsgID:Ljava/lang/String;

    .line 127
    :cond_0
    const-string v2, "NotificationTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationTransaction from Ind/ mUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    iput-object p3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    .line 136
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 138
    const-string v2, "Jerry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationTransaction server URI >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v4}, Lcom/android/mms/transaction/NotificationTransaction;->getServerUrlFromMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 130
    .end local v1           #uri:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "NotificationTransaction"

    const-string v3, "Failed to save NotificationInd in constructor."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "serviceId"
    .parameter "uri"

    .prologue
    const/16 v2, 0x2f

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;I)V

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/transaction/Transaction;->mType:I

    .line 87
    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 88
    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mMsgID:Ljava/lang/String;

    .line 90
    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 92
    const-string v1, "NotificationTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationTransaction from string/ construct mUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 102
    const-string v1, "Jerry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationTransaction server URI >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/NotificationTransaction;->getServerUrlFromMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "NotificationTransaction"

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

    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private installDrmRights(Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 9
    .parameter "pdu"

    .prologue
    .line 144
    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x18

    if-eq v7, v8, :cond_0

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x39

    if-eq v7, v8, :cond_0

    sget-short v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_1

    .line 168
    .end local p1
    :cond_0
    return-void

    .line 149
    .restart local p1
    :cond_1
    instance-of v7, p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v7, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    check-cast p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v6

    .line 154
    .local v6, partsNum:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 155
    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 156
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    .line 157
    .local v2, ctBytes:[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 158
    .local v1, contentType:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 160
    :try_start_0
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/drm/DrmWrapper;->installDrmRights([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v3

    .line 162
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
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
    .line 409
    new-instance v0, Lcom/google/android/mms/pdu/NotifyRespInd;

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    .line 413
    .local v0, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    const-string v1, "NotificationTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNotifyRespInd- tid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendPdu([B)[B

    .line 416
    return-void
.end method


# virtual methods
.method public getFailureDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const v1, 0x7f0900f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRetryPolicy()Lcom/android/mms/transaction/Transaction$RetryPolicy;
    .locals 3

    .prologue
    .line 436
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    .line 437
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
    .line 107
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public process()V
    .locals 27

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/Transaction;->mRetryCount:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/transaction/Transaction;->mRetryCount:I

    .line 179
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v8

    .line 180
    .local v8, downloadManager:Lcom/android/mms/util/DownloadManager;
    const/4 v10, 0x0

    .line 181
    .local v10, error:Lcom/android/mms/transaction/TransactionError;
    invoke-virtual {v8}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v4

    .line 183
    .local v4, autoDownload:Z
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_7

    .line 184
    const-string v22, "NotificationTransaction"

    const-string v23, "auto download true"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    :try_start_0
    const-string v22, "NotificationTransaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Notification transaction launched: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/16 v20, 0x83

    .line 198
    .local v20, status:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v13

    .line 199
    .local v13, isLowStorage:Z
    if-eqz v4, :cond_0

    if-eqz v13, :cond_8

    .line 200
    :cond_0
    const-string v22, "NotificationTransaction"

    const-string v23, "autoDownload:false, status:DEFERRED"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    const/16 v23, 0x80

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)Z

    .line 203
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSendUnderMobileNetworkUnChecked()Z

    move-result v22

    if-nez v22, :cond_1

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v22

    const/16 v23, -0x1

    invoke-static/range {v22 .. v23}, Lcom/android/mms/ui/MessageUtils;->isMobileNetworkChecked(Landroid/content/Context;I)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 206
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V

    .line 208
    :cond_2
    if-eqz v13, :cond_3

    .line 209
    const-string v22, "Goven"

    const-string v23, "low storage"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x104011d

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4

    .line 389
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 390
    if-nez v4, :cond_4

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 395
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 398
    if-nez v10, :cond_5

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->getNetworkError()Lcom/android/mms/transaction/TransactionError;

    move-result-object v10

    .line 401
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 402
    const-string v22, "NotificationTransaction"

    const-string v23, "NotificationTransaction failed."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v13           #isLowStorage:Z
    .end local v20           #status:I
    :cond_6
    :goto_1
    return-void

    .line 186
    :cond_7
    const-string v22, "NotificationTransaction"

    const-string v23, "auto download false"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 216
    .restart local v13       #isLowStorage:Z
    .restart local v20       #status:I
    :cond_8
    :try_start_1
    const-string v22, "NotificationTransaction"

    const-string v23, "Enter downloading"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    const/16 v23, 0x81

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)Z

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v5

    .line 219
    .local v5, clBytes:[B
    if-nez v5, :cond_b

    .line 220
    new-instance v22, Lcom/google/android/mms/MmsException;

    const-string v23, "Content-Location may not be null."

    invoke-direct/range {v22 .. v23}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4

    .line 365
    .end local v5           #clBytes:[B
    .end local v13           #isLowStorage:Z
    .end local v20           #status:I
    :catch_0
    move-exception v9

    .line 367
    .local v9, e:Lcom/google/android/mms/MmsException;
    :goto_2
    :try_start_2
    const-string v22, "NotificationTransaction"

    const-string v23, "Unexpected MmsException."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 390
    if-nez v4, :cond_9

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 395
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 398
    if-nez v10, :cond_a

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->getNetworkError()Lcom/android/mms/transaction/TransactionError;

    move-result-object v10

    .line 401
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 402
    const-string v22, "NotificationTransaction"

    const-string v23, "NotificationTransaction failed."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 223
    .end local v9           #e:Lcom/google/android/mms/MmsException;
    .restart local v5       #clBytes:[B
    .restart local v13       #isLowStorage:Z
    .restart local v20       #status:I
    :cond_b
    :try_start_3
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    .line 225
    .local v7, contentLocation:Ljava/lang/String;
    const-string v22, "NotificationTransaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Content-Location: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4

    .line 228
    const/16 v19, 0x0

    .line 232
    .local v19, retrieveConfData:[B
    :try_start_4
    const-string v22, "NotificationTransaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "get Pdu start - cl:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/mms/transaction/NotificationTransaction;->getPdu(Ljava/lang/String;)[B

    move-result-object v19

    .line 234
    const-string v22, "NotificationTransaction"

    const-string v23, "get Pdu end"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4

    move-object v11, v10

    .line 242
    .end local v10           #error:Lcom/android/mms/transaction/TransactionError;
    .local v11, error:Lcom/android/mms/transaction/TransactionError;
    :goto_3
    if-eqz v19, :cond_1b

    .line 243
    :try_start_5
    const-string v22, "NotificationTransaction"

    const-string v23, "retrieve Conf not null"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v22, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v15

    .line 246
    .local v15, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v15, :cond_c

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v22

    const/16 v23, 0x84

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_12

    .line 247
    :cond_c
    const-string v23, "NotificationTransaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Invalid M-RETRIEVE.CONF PDU."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-eqz v15, :cond_10

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "messageType = "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :goto_4
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v23, "NotificationTransaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Invalid M-RETRIEVE.CONF PDU."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    if-eqz v15, :cond_11

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "messageType = "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v25

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v10, Lcom/android/mms/transaction/TransactionError;

    const/16 v22, 0x1002

    move/from16 v0, v22

    invoke-direct {v10, v0}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_5

    .line 251
    .end local v11           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v10       #error:Lcom/android/mms/transaction/TransactionError;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 252
    const/16 v20, 0x84

    .line 341
    .end local v15           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :goto_6
    const-string v22, "NotificationTransaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "status=0x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    packed-switch v20, :pswitch_data_0

    .line 360
    :cond_d
    :goto_7
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V

    .line 363
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_4

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 390
    if-nez v4, :cond_e

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 395
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 398
    if-nez v10, :cond_f

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->getNetworkError()Lcom/android/mms/transaction/TransactionError;

    move-result-object v10

    .line 401
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 402
    const-string v22, "NotificationTransaction"

    const-string v23, "NotificationTransaction failed."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 235
    :catch_1
    move-exception v9

    .line 236
    .local v9, e:Ljava/io/IOException;
    :try_start_7
    const-string v22, "NotificationTransaction"

    const-string v23, "RETRIEVE MMS failed."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->getNetworkError()Lcom/android/mms/transaction/TransactionError;

    move-result-object v10

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_4

    move-object v11, v10

    .end local v10           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v11       #error:Lcom/android/mms/transaction/TransactionError;
    goto/16 :goto_3

    .line 247
    .end local v9           #e:Ljava/io/IOException;
    .restart local v15       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_10
    :try_start_8
    const-string v22, ""

    goto/16 :goto_4

    .line 248
    :cond_11
    const-string v22, ""

    goto/16 :goto_5

    .line 254
    :cond_12
    const-string v22, "NotificationTransaction"

    const-string v23, "pdu type is retrieve conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    move-object v0, v15

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/RetrieveConf;->getRetrieveStatus()I

    move-result v17

    .line 259
    .local v17, retrStatus:I
    const/16 v22, 0x94

    invoke-static/range {v22 .. v22}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v22

    if-nez v22, :cond_13

    const/16 v22, 0xaf

    invoke-static/range {v22 .. v22}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v22

    if-nez v22, :cond_13

    const/16 v22, 0xc

    invoke-static/range {v22 .. v22}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 262
    :cond_13
    move-object v0, v15

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/RetrieveConf;->getRetrieveText()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v22

    if-eqz v22, :cond_15

    move-object v0, v15

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/RetrieveConf;->getRetrieveText()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v16

    .line 264
    .local v16, respText:Ljava/lang/String;
    :goto_8
    const-string v22, "NotificationTransaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "retrieve text:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    if-eqz v16, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0903bb

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->showLowBalanceNotification()V

    .line 270
    .end local v16           #respText:Ljava/lang/String;
    :cond_14
    if-eqz v17, :cond_16

    const/16 v22, 0x80

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_16

    .line 271
    const-string v22, "NotificationTransaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "!!Retrieve MMS fail!! reason="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static/range {v17 .. v17}, Lcom/android/mms/transaction/TransactionError;->retrieveStatusToErrorCode(I)I

    move-result v6

    .line 277
    .local v6, code:I
    new-instance v10, Lcom/android/mms/transaction/TransactionError;

    invoke-direct {v10, v6}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_5

    .line 278
    .end local v11           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v10       #error:Lcom/android/mms/transaction/TransactionError;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_4

    .line 279
    const/16 v20, 0x83

    .line 280
    goto/16 :goto_6

    .line 262
    .end local v6           #code:I
    .end local v10           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v11       #error:Lcom/android/mms/transaction/TransactionError;
    :cond_15
    const/16 v16, 0x0

    goto :goto_8

    .line 283
    :cond_16
    :try_start_a
    move-object v0, v15

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v18, v0

    .line 284
    .local v18, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    const-string v22, "NotificationTransaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "pdu type="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportForceRelatedByCheckSmil()Z

    move-result v22

    if-eqz v22, :cond_17

    const-string v22, "application/vnd.wap.multipart.mixed"

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_17

    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MessageUtils;->hasSmilPart(Lcom/google/android/mms/pdu/RetrieveConf;)Z

    move-result v22

    if-eqz v22, :cond_17

    .line 288
    move-object v0, v15

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v22, v0

    const-string v23, "application/vnd.wap.multipart.related"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/mms/pdu/RetrieveConf;->setContentType([B)V

    .line 289
    const-string v23, "NotificationTransaction"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "persist pdu ContentType="

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object v0, v15

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_17
    invoke-static {}, Lcom/android/mms/MmsApp;->isShowingMTMmsbyDeviceTime()Z

    move-result v22

    if-eqz v22, :cond_18

    .line 295
    if-eqz v18, :cond_18

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/RetrieveConf;->setDate(J)V

    .line 300
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v14

    .line 301
    .local v14, p:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v22, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-virtual {v14, v15, v0}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v21

    .line 306
    .local v21, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isShowingMTMmsbyDeviceTime()Z

    move-result v22

    if-nez v22, :cond_19

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    const-wide/16 v25, 0x3e8

    div-long v23, v23, v25

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->updateMessageDate2(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 312
    :cond_19
    invoke-static {}, Lcom/android/mms/MmsApp;->accumulateNewIncomingMSG()V

    .line 313
    const-string v22, "NotificationTransaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "retrieve.conf: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/transaction/NotificationTransaction;->installDrmRights(Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v22 .. v26}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 320
    .local v12, iqs:I
    const-string v22, "Goven"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Already download the MM so del: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "result: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 323
    const/16 v20, 0x81

    .line 326
    const/16 v22, 0x78

    invoke-static/range {v22 .. v22}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v22

    if-nez v22, :cond_1a

    const/16 v22, 0x59

    invoke-static/range {v22 .. v22}, Lcom/android/mms/MmsApp;->isDeviceFlag(S)Z

    move-result v22

    if-nez v22, :cond_1a

    const/16 v22, 0x1b

    invoke-static/range {v22 .. v22}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 330
    :cond_1a
    if-eqz v18, :cond_1b

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/RetrieveConf;->getApplicationID()[B

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setApplicationID([B)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/RetrieveConf;->getReplyToApplicationID()[B

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setReplyToApplicationID([B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_5

    .end local v12           #iqs:I
    .end local v14           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v15           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v17           #retrStatus:I
    .end local v18           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_1b
    move-object v10, v11

    .end local v11           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v10       #error:Lcom/android/mms/transaction/TransactionError;
    goto/16 :goto_6

    .line 347
    :pswitch_1
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/mms/util/MsgForwardHelper;->autoForwardMMS(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 350
    const-string v22, "NotificationTransaction"

    const-string v23, "RETRIEVE MMS successful."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->Log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_7

    .line 369
    .end local v5           #clBytes:[B
    .end local v7           #contentLocation:Ljava/lang/String;
    .end local v13           #isLowStorage:Z
    .end local v19           #retrieveConfData:[B
    .end local v20           #status:I
    :catch_2
    move-exception v9

    .line 371
    .restart local v9       #e:Ljava/io/IOException;
    :goto_9
    :try_start_c
    const-string v22, "NotificationTransaction"

    const-string v23, "Unexpected IOException."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 390
    if-nez v4, :cond_1c

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 395
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 398
    if-nez v10, :cond_1d

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->getNetworkError()Lcom/android/mms/transaction/TransactionError;

    move-result-object v10

    .line 401
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 402
    const-string v22, "NotificationTransaction"

    const-string v23, "NotificationTransaction failed."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 354
    .end local v9           #e:Ljava/io/IOException;
    .restart local v5       #clBytes:[B
    .restart local v7       #contentLocation:Ljava/lang/String;
    .restart local v13       #isLowStorage:Z
    .restart local v19       #retrieveConfData:[B
    .restart local v20       #status:I
    :pswitch_2
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v22

    if-nez v22, :cond_d

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_7

    .line 373
    .end local v5           #clBytes:[B
    .end local v7           #contentLocation:Ljava/lang/String;
    .end local v13           #isLowStorage:Z
    .end local v19           #retrieveConfData:[B
    .end local v20           #status:I
    :catch_3
    move-exception v9

    .line 375
    .local v9, e:Ljava/lang/Exception;
    :goto_a
    :try_start_e
    const-string v22, "NotificationTransaction"

    const-string v23, "Unexpected Exception."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 390
    if-nez v4, :cond_1e

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 395
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 398
    if-nez v10, :cond_1f

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->getNetworkError()Lcom/android/mms/transaction/TransactionError;

    move-result-object v10

    .line 401
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 402
    const-string v22, "NotificationTransaction"

    const-string v23, "NotificationTransaction failed."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 378
    .end local v9           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 380
    .local v9, e:Ljava/lang/OutOfMemoryError;
    :goto_b
    :try_start_f
    const-string v22, "NotificationTransaction"

    invoke-virtual {v9}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 390
    if-nez v4, :cond_20

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 395
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 398
    if-nez v10, :cond_21

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->getNetworkError()Lcom/android/mms/transaction/TransactionError;

    move-result-object v10

    .line 401
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 402
    const-string v22, "NotificationTransaction"

    const-string v23, "NotificationTransaction failed."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 389
    .end local v9           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v22

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 390
    if-nez v4, :cond_22

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 395
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_24

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 398
    if-nez v10, :cond_23

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->getNetworkError()Lcom/android/mms/transaction/TransactionError;

    move-result-object v10

    .line 401
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/android/mms/transaction/TransactionState;->setError(Lcom/android/mms/transaction/TransactionError;)V

    .line 402
    const-string v23, "NotificationTransaction"

    const-string v24, "NotificationTransaction failed."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    throw v22

    .line 389
    .end local v10           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v5       #clBytes:[B
    .restart local v7       #contentLocation:Ljava/lang/String;
    .restart local v11       #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v13       #isLowStorage:Z
    .restart local v19       #retrieveConfData:[B
    .restart local v20       #status:I
    :catchall_1
    move-exception v22

    move-object v10, v11

    .end local v11           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v10       #error:Lcom/android/mms/transaction/TransactionError;
    goto :goto_c

    .line 378
    .end local v10           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v11       #error:Lcom/android/mms/transaction/TransactionError;
    :catch_5
    move-exception v9

    move-object v10, v11

    .end local v11           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v10       #error:Lcom/android/mms/transaction/TransactionError;
    goto/16 :goto_b

    .line 373
    .end local v10           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v11       #error:Lcom/android/mms/transaction/TransactionError;
    :catch_6
    move-exception v9

    move-object v10, v11

    .end local v11           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v10       #error:Lcom/android/mms/transaction/TransactionError;
    goto/16 :goto_a

    .line 369
    .end local v10           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v11       #error:Lcom/android/mms/transaction/TransactionError;
    :catch_7
    move-exception v9

    move-object v10, v11

    .end local v11           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v10       #error:Lcom/android/mms/transaction/TransactionError;
    goto/16 :goto_9

    .line 365
    .end local v10           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v11       #error:Lcom/android/mms/transaction/TransactionError;
    :catch_8
    move-exception v9

    move-object v10, v11

    .end local v11           #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v10       #error:Lcom/android/mms/transaction/TransactionError;
    goto/16 :goto_2

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setFailedContentUri()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 427
    return-void
.end method
