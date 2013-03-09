.class Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;
.super Landroid/os/AsyncTask;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceivePushTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final MSGID_QUERY_FLAG:[B

.field private final UID_QUERY_FLAG:[B

.field private final VZW_QUERY_FLAG:[B

.field private mContext:Landroid/content/Context;

.field mQueryFlagList:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/android/mms/transaction/PushReceiver;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/PushReceiver;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->this$0:Lcom/android/mms/transaction/PushReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->UID_QUERY_FLAG:[B

    .line 92
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->VZW_QUERY_FLAG:[B

    .line 96
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->MSGID_QUERY_FLAG:[B

    .line 101
    iput-object p2, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    .line 102
    return-void

    .line 88
    :array_0
    .array-data 0x1
        0x3ft
        0x75t
        0x69t
        0x64t
        0x3dt
    .end array-data

    .line 92
    nop

    :array_1
    .array-data 0x1
        0x3ft
        0x76t
        0x65t
        0x72t
        0x69t
        0x7at
        0x6ft
        0x6et
    .end array-data

    .line 96
    :array_2
    .array-data 0x1
        0x3ft
        0x6dt
        0x65t
        0x73t
        0x73t
        0x61t
        0x67t
        0x65t
        0x2dt
        0x69t
        0x64t
        0x3dt
    .end array-data
.end method

.method private concatBytesArray([B[B)[B
    .locals 5
    .parameter "b1"
    .parameter "b2"

    .prologue
    const/4 v4, 0x0

    .line 483
    if-eqz p1, :cond_0

    array-length v1, p1

    .local v1, len1:I
    if-gtz v1, :cond_1

    .end local v1           #len1:I
    :cond_0
    move-object v0, p2

    .line 495
    :goto_0
    return-object v0

    .line 487
    .restart local v1       #len1:I
    :cond_1
    if-eqz p2, :cond_2

    array-length v2, p2

    .local v2, len2:I
    if-gtz v2, :cond_3

    .end local v2           #len2:I
    :cond_2
    move-object v0, p1

    .line 488
    goto :goto_0

    .line 491
    .restart local v2       #len2:I
    :cond_3
    add-int v3, v1, v2

    new-array v0, v3, [B

    .line 492
    .local v0, concatArray:[B
    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    invoke-static {p2, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private getIntactContentLocation(Lcom/google/android/mms/pdu/NotificationInd;)[B
    .locals 3
    .parameter "ind"

    .prologue
    .line 349
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v0

    .line 350
    .local v0, rawContentLocation:[B
    if-eqz v0, :cond_0

    .line 351
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->requiresUidConcat([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v1

    .line 354
    .local v1, tId:[B
    invoke-direct {p0, v0, v1}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->concatBytesArray([B[B)[B

    move-result-object v0

    .line 357
    .end local v0           #rawContentLocation:[B
    .end local v1           #tId:[B
    :cond_0
    return-object v0
.end method

.method private isASCIIFormat([B)Z
    .locals 3
    .parameter "byteArray"

    .prologue
    .line 385
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 386
    aget-byte v1, p1, v0

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    aget-byte v1, p1, v0

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_0
    const/4 v1, 0x0

    .line 394
    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isEndWithEqual(Ljava/lang/String;)Z
    .locals 1
    .parameter "temp"

    .prologue
    .line 400
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x1

    .line 405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isQuestionMarkValidate(Ljava/lang/String;)Z
    .locals 4
    .parameter "temp"

    .prologue
    const/4 v2, 0x0

    .line 412
    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 413
    .local v0, firstQuestionPos:I
    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 414
    .local v1, lastQuestionPos:I
    if-gez v0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v2

    .line 418
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-eq v0, v3, :cond_0

    .line 422
    if-ne v0, v1, :cond_0

    .line 427
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private requiresUidConcat([B)Z
    .locals 3
    .parameter "location"

    .prologue
    const/4 v1, 0x0

    .line 432
    if-nez p1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v1

    .line 434
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->isASCIIFormat([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 436
    .local v0, locationString:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->isEndWithEqual(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->isQuestionMarkValidate(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 52
    .parameter "intents"

    .prologue
    .line 106
    const/4 v2, 0x0

    aget-object v38, p1, v2

    .line 109
    .local v38, intent:Landroid/content/Intent;
    const-string v2, "data"

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v46

    .line 110
    .local v46, pushData:[B
    new-instance v44, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 111
    .local v44, parser:Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual/range {v44 .. v44}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v45

    .line 112
    .local v45, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    const/16 v35, 0x0

    .line 114
    .local v35, iResult:I
    if-nez v45, :cond_0

    .line 115
    const-string v2, "PushReceiver"

    const-string v6, "Invalid PUSH data"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 336
    .end local v45           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :goto_0
    return-object v2

    .line 119
    .restart local v45       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v43

    .line 120
    .local v43, p:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 121
    .local v3, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {v45 .. v45}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v51

    .line 122
    .local v51, type:I
    const-wide/16 v14, -0x1

    .line 124
    .local v14, threadId:J
    const-string v2, "PushReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received message type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v51

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sparse-switch v51, :sswitch_data_0

    .line 323
    :try_start_0
    const-string v2, "PushReceiver"

    const-string v6, "Received unrecognized PDU."

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    .end local v45           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    :goto_1
    const-string v2, "PushReceiver"

    const-string v6, "PUSH Intent processed."

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 131
    .restart local v45       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :sswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v45

    move/from16 v1, v51

    #calls: Lcom/android/mms/transaction/PushReceiver;->findThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J
    invoke-static {v2, v0, v1}, Lcom/android/mms/transaction/PushReceiver;->access$000(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J

    move-result-wide v14

    .line 132
    const-wide/16 v6, -0x1

    cmp-long v2, v14, v6

    if-eqz v2, :cond_1

    .line 138
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 140
    .local v4, uri:Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 141
    .local v5, values:Landroid/content/ContentValues;
    const-string v2, "thread_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 142
    const-string v2, "read"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportReportNotification()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    const/16 v2, 0x86

    move/from16 v0, v51

    if-ne v0, v2, :cond_3

    .line 149
    new-instance v40, Ljava/lang/String;

    move-object/from16 v0, v45

    check-cast v0, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v2

    move-object/from16 v0, v40

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 153
    .local v40, messageId:Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v40 .. v40}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 154
    .local v10, selection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND m_type=128"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 155
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "_id"

    aput-object v7, v9, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    invoke-static/range {v6 .. v12}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v32

    .line 156
    .local v32, c:Landroid/database/Cursor;
    if-eqz v32, :cond_2

    .line 158
    :try_start_2
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToLast()Z

    .line 159
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 160
    .local v16, _id:J
    const/16 v2, 0x86

    move/from16 v0, v51

    if-ne v0, v2, :cond_6

    .line 163
    check-cast v45, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local v45           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual/range {v45 .. v45}, Lcom/google/android/mms/pdu/DeliveryInd;->getStatus()I

    move-result v33

    .line 164
    .local v33, delivery_status:I
    const/16 v2, 0x82

    move/from16 v0, v33

    if-ne v0, v2, :cond_4

    .line 165
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const v12, 0x7f0901f5

    const v13, 0x7f0901f7

    invoke-static/range {v11 .. v17}, Lcom/android/mms/transaction/MessagingNotification;->showReportNotification(Landroid/content/Context;IIJJ)V

    .line 180
    .end local v33           #delivery_status:I
    :goto_3
    const-string v2, "PushReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showNotification type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v51

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " _id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 183
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v31

    .line 184
    .local v31, builder:Landroid/net/Uri$Builder;
    const-string v2, "updateCSTimestamp"

    const-string v6, "true"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 185
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 187
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    .end local v5           #values:Landroid/content/ContentValues;
    .local v21, values:Landroid/content/ContentValues;
    :try_start_3
    const-string v2, "cs_synced"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-static/range {v18 .. v23}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 190
    const-string v2, "Jerry1"

    const-string v6, "get delivery/read report and notify CS to sync!!!"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 193
    :try_start_4
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    move-object/from16 v5, v21

    .line 200
    .end local v10           #selection:Ljava/lang/String;
    .end local v16           #_id:J
    .end local v21           #values:Landroid/content/ContentValues;
    .end local v31           #builder:Landroid/net/Uri$Builder;
    .end local v32           #c:Landroid/database/Cursor;
    .end local v40           #messageId:Ljava/lang/String;
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_2
    new-instance v30, Landroid/content/Intent;

    const-string v2, "android.message.CHECK_PENDING_NOTIFICATION"

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v30, broadcast:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    invoke-static {}, Lcom/android/mms/util/ReportIndicatorCache;->getInstance()Lcom/android/mms/util/ReportIndicatorCache;

    move-result-object v36

    .line 204
    .local v36, instance:Lcom/android/mms/util/ReportIndicatorCache;
    if-eqz v36, :cond_1

    .line 205
    const-wide/16 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v7}, Lcom/android/mms/util/ReportIndicatorCache;->startAsyncQueryReports(J)V
    :try_end_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 325
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v30           #broadcast:Landroid/content/Intent;
    .end local v36           #instance:Lcom/android/mms/util/ReportIndicatorCache;
    :catch_0
    move-exception v34

    .line 326
    .local v34, e:Lcom/google/android/mms/MmsException;
    const-string v2, "PushReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to save the data from PUSH: type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v51

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-static {v2, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 151
    .end local v34           #e:Lcom/google/android/mms/MmsException;
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local v45       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_3
    :try_start_5
    new-instance v40, Ljava/lang/String;

    move-object/from16 v0, v45

    check-cast v0, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object v2

    move-object/from16 v0, v40

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_5
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .restart local v40       #messageId:Ljava/lang/String;
    goto/16 :goto_2

    .line 166
    .end local v45           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10       #selection:Ljava/lang/String;
    .restart local v16       #_id:J
    .restart local v32       #c:Landroid/database/Cursor;
    .restart local v33       #delivery_status:I
    :cond_4
    const/16 v2, 0x80

    move/from16 v0, v33

    if-ne v0, v2, :cond_5

    .line 167
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const v12, 0x7f0901f5

    const v13, 0x7f0901f8

    invoke-static/range {v11 .. v17}, Lcom/android/mms/transaction/MessagingNotification;->showReportNotification(Landroid/content/Context;IIJJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 193
    .end local v16           #_id:J
    .end local v33           #delivery_status:I
    :catchall_0
    move-exception v2

    :goto_4
    :try_start_7
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_7
    .catch Lcom/google/android/mms/MmsException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 327
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v10           #selection:Ljava/lang/String;
    .end local v32           #c:Landroid/database/Cursor;
    .end local v40           #messageId:Ljava/lang/String;
    :catch_1
    move-exception v34

    .line 328
    .local v34, e:Ljava/lang/RuntimeException;
    const-string v2, "PushReceiver"

    const-string v6, "Unexpected RuntimeException."

    move-object/from16 v0, v34

    invoke-static {v2, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 169
    .end local v34           #e:Ljava/lang/RuntimeException;
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local v10       #selection:Ljava/lang/String;
    .restart local v16       #_id:J
    .restart local v32       #c:Landroid/database/Cursor;
    .restart local v33       #delivery_status:I
    .restart local v40       #messageId:Ljava/lang/String;
    :cond_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const v12, 0x7f0901f5

    const v13, 0x7f0901f6

    invoke-static/range {v11 .. v17}, Lcom/android/mms/transaction/MessagingNotification;->showReportNotification(Landroid/content/Context;IIJJ)V

    goto/16 :goto_3

    .line 173
    .end local v33           #delivery_status:I
    .restart local v45       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_6
    check-cast v45, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local v45           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual/range {v45 .. v45}, Lcom/google/android/mms/pdu/ReadOrigInd;->getReadStatus()I

    move-result v47

    .line 174
    .local v47, read_status:I
    const/16 v2, 0x80

    move/from16 v0, v47

    if-ne v0, v2, :cond_7

    .line 175
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const v12, 0x7f0901f9

    const v13, 0x7f0901fa

    invoke-static/range {v11 .. v17}, Lcom/android/mms/transaction/MessagingNotification;->showReportNotification(Landroid/content/Context;IIJJ)V

    goto/16 :goto_3

    .line 177
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const v12, 0x7f0901f9

    const v13, 0x7f0901fb

    invoke-static/range {v11 .. v17}, Lcom/android/mms/transaction/MessagingNotification;->showReportNotification(Landroid/content/Context;IIJJ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 209
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v10           #selection:Ljava/lang/String;
    .end local v16           #_id:J
    .end local v32           #c:Landroid/database/Cursor;
    .end local v40           #messageId:Ljava/lang/String;
    .end local v47           #read_status:I
    .restart local v45       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :sswitch_1
    :try_start_9
    move-object/from16 v0, v45

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v41, v0

    .line 210
    .local v41, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->getIntactContentLocation(Lcom/google/android/mms/pdu/NotificationInd;)[B

    move-result-object v37

    .line 211
    .local v37, intactContentLocation:[B
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    .line 215
    invoke-virtual/range {v41 .. v41}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v50

    .line 216
    .local v50, tId:[B
    invoke-virtual/range {v41 .. v41}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v48

    .line 217
    .local v48, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v48, :cond_8

    .line 218
    const-string v2, "PushReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subject: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v48 .. v48}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_8
    if-eqz v50, :cond_9

    .line 220
    const-string v2, "PushReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TransactionId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, v50

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_9
    if-eqz v37, :cond_a

    .line 222
    const-string v2, "PushReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContentLocation: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 227
    invoke-virtual/range {v41 .. v41}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v48

    .line 228
    if-eqz v48, :cond_13

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->sendMMSReceiveLog(Z)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->sendMsgCountLog(Landroid/content/Context;)V

    .line 232
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v41

    #calls: Lcom/android/mms/transaction/PushReceiver;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    invoke-static {v2, v0}, Lcom/android/mms/transaction/PushReceiver;->access$100(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 234
    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xb

    if-eq v2, v6, :cond_d

    :cond_c
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v6, 0x25

    if-eq v2, v6, :cond_d

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v6, 0x5

    if-ne v2, v6, :cond_e

    :cond_d
    invoke-virtual/range {v45 .. v45}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 239
    invoke-virtual/range {v45 .. v45}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v28

    .line 240
    .local v28, address:Ljava/lang/String;
    const-string v2, "<"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, ">"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 242
    const/4 v2, 0x1

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v42

    .line 243
    .local v42, number_trim:Ljava/lang/String;
    invoke-static/range {v42 .. v42}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 244
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v42

    invoke-direct {v2, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/GenericPdu;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 248
    .end local v28           #address:Ljava/lang/String;
    .end local v42           #number_trim:Ljava/lang/String;
    :cond_e
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/transaction/PushReceiver;->mUpdateLocked:Z

    .line 249
    const-string v2, "PushReceiver"

    const-string v6, "mms notification lock"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 255
    .restart local v4       #uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isShowingMTMmsbyDeviceTime()Z

    move-result v2

    if-nez v2, :cond_f

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v2, v4, v6, v7}, Lcom/android/mms/ui/MessageUtils;->updateMessageDate2(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 264
    :cond_f
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/Context;)Z

    move-result v29

    .line 268
    .local v29, autoDownload:Z
    const-string v2, "PushReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autoDownload: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    if-eqz v29, :cond_10

    invoke-static {}, Lcom/android/mms/MmsApp;->isAlwaysShowMMSNotification()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 272
    :cond_10
    invoke-static {}, Lcom/android/mms/MmsApp;->accumulateNewIncomingMSG()V

    .line 273
    invoke-static {}, Lcom/android/mms/MmsApp;->isAlwaysShowMMSNotification()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 275
    const/16 v35, 0x1

    .line 282
    :cond_11
    const-string v2, "gsm.pdp.power.saving"

    const/4 v6, 0x0

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 285
    .local v39, isPowerSavingMode:Z
    if-eqz v39, :cond_14

    .line 286
    const-string v2, "PushReceiver"

    const-string v6, "Update notification directly due to power saving mode."

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v2, v6}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;Z)V

    .line 288
    const-string v2, "PushReceiver"

    const-string v6, "mms notification unlock"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/transaction/PushReceiver;->mUpdateLocked:Z

    .line 301
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    #calls: Lcom/android/mms/transaction/PushReceiver;->findThreadIdByTransactionId(Landroid/content/Context;Ljava/lang/String;)J
    invoke-static {v2, v6}, Lcom/android/mms/transaction/PushReceiver;->access$200(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v14

    .line 303
    const-wide/16 v6, 0x0

    cmp-long v2, v14, v6

    if-lez v2, :cond_1

    .line 305
    const/16 v2, 0xd8

    invoke-static {v2}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const-wide/16 v6, 0x0

    invoke-static {v2, v14, v15, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getContactIdFromThreadID(Landroid/content/Context;JJ)J

    move-result-wide v26

    .line 307
    .local v26, contactId:J
    const-wide/16 v6, 0x0

    cmp-long v2, v26, v6

    if-lez v2, :cond_12

    const-wide/32 v6, 0x5f5e100

    cmp-long v2, v26, v6

    if-gez v2, :cond_12

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x1

    const-wide/16 v24, 0x0

    invoke-static/range {v22 .. v27}, Landroid/provider/HtcContactsContract$Frequency;->markAsFromMsg(Landroid/content/ContentResolver;IJJ)V

    .line 313
    .end local v26           #contactId:J
    :cond_12
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, v14, v15}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    goto/16 :goto_1

    .line 228
    .end local v4           #uri:Landroid/net/Uri;
    .end local v29           #autoDownload:Z
    .end local v39           #isPowerSavingMode:Z
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 293
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v29       #autoDownload:Z
    .restart local v39       #isPowerSavingMode:Z
    :cond_14
    new-instance v49, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v49

    invoke-direct {v0, v2, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    .local v49, svc:Landroid/content/Intent;
    const-string v2, "uri"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v2, "type"

    const/4 v6, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_6

    .line 317
    .end local v4           #uri:Landroid/net/Uri;
    .end local v29           #autoDownload:Z
    .end local v39           #isPowerSavingMode:Z
    .end local v49           #svc:Landroid/content/Intent;
    :cond_15
    const-string v2, "PushReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip downloading duplicate message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Lcom/google/android/mms/MmsException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    .line 193
    .end local v37           #intactContentLocation:[B
    .end local v41           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v45           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v48           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v50           #tId:[B
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v10       #selection:Ljava/lang/String;
    .restart local v16       #_id:J
    .restart local v21       #values:Landroid/content/ContentValues;
    .restart local v31       #builder:Landroid/net/Uri$Builder;
    .restart local v32       #c:Landroid/database/Cursor;
    .restart local v40       #messageId:Ljava/lang/String;
    :catchall_1
    move-exception v2

    move-object/from16 v5, v21

    .end local v21           #values:Landroid/content/ContentValues;
    .restart local v5       #values:Landroid/content/ContentValues;
    goto/16 :goto_4

    .line 128
    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "itype"

    .prologue
    const/4 v1, 0x1

    .line 341
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 342
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;Z)V

    .line 343
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
