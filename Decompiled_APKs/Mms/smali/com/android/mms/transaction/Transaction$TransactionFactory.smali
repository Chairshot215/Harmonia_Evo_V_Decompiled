.class Lcom/android/mms/transaction/Transaction$TransactionFactory;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransactionFactory"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TransactionFactory"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 345
    return-void
.end method

.method public static createTransaction(Landroid/content/Context;Lcom/android/mms/transaction/TransactionBundle;I)Lcom/android/mms/transaction/Transaction;
    .locals 12
    .parameter "context"
    .parameter "args"
    .parameter "servid"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x2

    .line 350
    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v7

    .line 351
    .local v7, uri:Ljava/lang/String;
    const/4 v4, 0x0

    .line 354
    .local v4, tx:Lcom/android/mms/transaction/Transaction;
    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 416
    const-string v9, "TransactionFactory"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid transaction type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :goto_0
    return-object v8

    .line 356
    :pswitch_0
    if-eqz v7, :cond_1

    .line 357
    const-string v8, "Mms"

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 358
    const-string v8, "TransactionFactory"

    const-string v9, "6-handleMessage()-EVENT_TRANSACTION_REQUEST:NOTIFICATION_TRANSACTION"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    new-instance v4, Lcom/android/mms/transaction/NotificationTransaction;

    .end local v4           #tx:Lcom/android/mms/transaction/Transaction;
    invoke-direct {v4, p0, p2, v7}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 419
    .restart local v4       #tx:Lcom/android/mms/transaction/Transaction;
    :goto_1
    const-string v8, "TransactionFactory"

    const-string v9, "create a transaction done"

    invoke-virtual {v4, v8, v9}, Lcom/android/mms/transaction/Transaction;->Log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    .line 420
    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getPushData()[B

    move-result-object v3

    .line 364
    .local v3, pushData:[B
    new-instance v2, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v2, v3}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 365
    .local v2, parser:Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    .line 367
    .local v1, ind:Lcom/google/android/mms/pdu/GenericPdu;
    const/16 v6, 0x82

    .line 368
    .local v6, type:I
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v9

    if-ne v9, v6, :cond_2

    .line 369
    new-instance v4, Lcom/android/mms/transaction/NotificationTransaction;

    .end local v4           #tx:Lcom/android/mms/transaction/Transaction;
    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    .end local v1           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-direct {v4, p0, p2, v1}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/google/android/mms/pdu/NotificationInd;)V

    .restart local v4       #tx:Lcom/android/mms/transaction/Transaction;
    goto :goto_1

    .line 372
    .restart local v1       #ind:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_2
    const-string v9, "TransactionFactory"

    const-string v10, "Invalid PUSH data."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 379
    .end local v1           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v2           #parser:Lcom/google/android/mms/pdu/PduParser;
    .end local v3           #pushData:[B
    .end local v6           #type:I
    :pswitch_1
    invoke-static {p0}, Lcom/android/mms/util/SpaceBufferUtil;->isLowStorage(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 380
    const-string v9, "TransactionFactory"

    const-string v10, "Unable to retrieve message, no storage!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :cond_3
    const-string v9, "Mms"

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 384
    const-string v9, "TransactionFactory"

    const-string v10, "6-handleMessage()-EVENT_TRANSACTION_REQUEST:RETRIEVE_TRANSACTION"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_4
    :try_start_0
    new-instance v5, Lcom/android/mms/transaction/RetrieveTransaction;

    invoke-direct {v5, p0, p2, v7}, Lcom/android/mms/transaction/RetrieveTransaction;-><init>(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #tx:Lcom/android/mms/transaction/Transaction;
    .local v5, tx:Lcom/android/mms/transaction/Transaction;
    move-object v4, v5

    .line 391
    .end local v5           #tx:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #tx:Lcom/android/mms/transaction/Transaction;
    goto :goto_1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v9, "TransactionFactory"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 396
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :pswitch_2
    const-string v8, "Mms"

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 397
    const-string v8, "TransactionFactory"

    const-string v9, "6-handleMessage()-EVENT_TRANSACTION_REQUEST:SEND_TRANSACTION"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_5
    new-instance v4, Lcom/android/mms/transaction/SendTransaction;

    .end local v4           #tx:Lcom/android/mms/transaction/Transaction;
    invoke-direct {v4, p0, p2, v7}, Lcom/android/mms/transaction/SendTransaction;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 400
    .restart local v4       #tx:Lcom/android/mms/transaction/Transaction;
    goto :goto_1

    .line 402
    :pswitch_3
    const-string v8, "Mms"

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 403
    const-string v8, "TransactionFactory"

    const-string v9, "6-handleMessage()-EVENT_TRANSACTION_REQUEST:READREC_TRANSACTION"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_6
    new-instance v4, Lcom/android/mms/transaction/ReadRecTransaction;

    .end local v4           #tx:Lcom/android/mms/transaction/Transaction;
    invoke-direct {v4, p0, p2, v7}, Lcom/android/mms/transaction/ReadRecTransaction;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 406
    .restart local v4       #tx:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_1

    .line 409
    :pswitch_4
    const-string v8, "Mms"

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 410
    const-string v8, "TransactionFactory"

    const-string v9, "6-handleMessage()-EVENT_TRANSACTION_REQUEST:DECLINE_TRANSACTION"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_7
    new-instance v4, Lcom/android/mms/transaction/DeclineTransaction;

    .end local v4           #tx:Lcom/android/mms/transaction/Transaction;
    invoke-direct {v4, p0, p2, v7}, Lcom/android/mms/transaction/DeclineTransaction;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 413
    .restart local v4       #tx:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_1

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
