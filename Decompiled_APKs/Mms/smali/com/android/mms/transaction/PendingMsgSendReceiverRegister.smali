.class public Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;
.super Ljava/lang/Object;
.source "PendingMsgSendReceiverRegister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$MessageWorkingHandler;,
        Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$PendingMsgSendReceiver;
    }
.end annotation


# static fields
.field public static final HANDLER_SEND_QUEUED_MSG:I = 0x1

.field private static final SEND_COLUMN_ADDRESS:I = 0x2

.field private static final SEND_COLUMN_BODY:I = 0x3

.field private static final SEND_COLUMN_CALLBACK_NUM:I = 0x5

.field private static final SEND_COLUMN_ID:I = 0x0

.field private static final SEND_COLUMN_PRIORITY:I = 0x4

.field private static final SEND_COLUMN_STATUS:I = 0x6

.field private static final SEND_COLUMN_THREAD_ID:I = 0x1

.field private static final SEND_MOREINFO_PROJECTION:[Ljava/lang/String; = null

.field private static final SEND_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "PendingMsgSendReceiverRegister"

.field private static mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mReceiver:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$PendingMsgSendReceiver;

.field mRegistered:Z

.field private mWaitObj:Ljava/lang/Object;

.field private mWorkingHandler:Landroid/os/Handler;

.field private mWorkingThread:Landroid/os/HandlerThread;

.field private mbNeedtoSendQueueImmediatelly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "priority"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->SEND_PROJECTION:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "priority"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->SEND_MOREINFO_PROJECTION:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 270
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mReceiver:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$PendingMsgSendReceiver;

    .line 76
    iput-object v0, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mFilter:Landroid/content/IntentFilter;

    .line 77
    iput-boolean v1, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegistered:Z

    .line 79
    iput-object v0, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingThread:Landroid/os/HandlerThread;

    .line 80
    iput-object v0, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingHandler:Landroid/os/Handler;

    .line 81
    iput-object v0, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWaitObj:Ljava/lang/Object;

    .line 82
    iput-object v0, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mContext:Landroid/content/Context;

    .line 83
    iput-boolean v1, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mbNeedtoSendQueueImmediatelly:Z

    .line 271
    new-instance v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$PendingMsgSendReceiver;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$PendingMsgSendReceiver;-><init>(Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;)V

    iput-object v0, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mReceiver:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$PendingMsgSendReceiver;

    .line 272
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mFilter:Landroid/content/IntentFilter;

    .line 273
    return-void
.end method

.method static synthetic access$000()Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mbNeedtoSendQueueImmediatelly:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static forceClearRawTable()V
    .locals 8

    .prologue
    .line 368
    const-string v4, "PendingMsgSendReceiverRegister"

    const-string v5, "forceClearRawTable"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    sget-object v4, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v4, v4, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 403
    .local v0, fContext:Landroid/content/Context;
    .local v1, mRawUri:Landroid/net/Uri;
    .local v2, resolver:Landroid/content/ContentResolver;
    .local v3, thread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 373
    .end local v0           #fContext:Landroid/content/Context;
    .end local v1           #mRawUri:Landroid/net/Uri;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #thread:Ljava/lang/Thread;
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1

    sget-object v4, Landroid/provider/Telephony$HTCMessageUtil;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "ems"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 376
    .restart local v1       #mRawUri:Landroid/net/Uri;
    :goto_1
    sget-object v4, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v4, v4, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 377
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v0, v4, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mContext:Landroid/content/Context;

    .line 379
    .restart local v0       #fContext:Landroid/content/Context;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$1;

    invoke-direct {v4, v2, v1}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 400
    .restart local v3       #thread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 373
    .end local v0           #fContext:Landroid/content/Context;
    .end local v1           #mRawUri:Landroid/net/Uri;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #thread:Ljava/lang/Thread;
    :cond_1
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "raw"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1
.end method

.method public static declared-synchronized forceSendPendMessage()V
    .locals 5

    .prologue
    .line 354
    const-class v1, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 357
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v0, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 358
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v0, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;
    .locals 3

    .prologue
    .line 277
    const-class v1, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    if-nez v0, :cond_0

    .line 278
    const-string v0, "PendingMsgSendReceiverRegister"

    const-string v2, "mRegister is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    invoke-direct {v0}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    .line 282
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static notifyNextPendMegtoSend()V
    .locals 2

    .prologue
    .line 341
    const-string v0, "PendingMsgSendReceiverRegister"

    const-string v1, "notifyNextPendMegtoSend >>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v0, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWaitObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 344
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v1, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWaitObj:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v0, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWaitObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 346
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :cond_0
    const-string v0, "PendingMsgSendReceiverRegister"

    const-string v1, "notifyNextPendMegtoSend <<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 346
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized sendQueuedMessage(Landroid/content/Context;)V
    .locals 24
    .parameter "context"

    .prologue
    .line 145
    const-class v23, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    monitor-enter v23

    :try_start_0
    const-string v3, "PendingMsgSendReceiverRegister"

    const-string v8, "Enter sendQueuedMessage"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    if-nez p0, :cond_0

    .line 268
    :goto_0
    monitor-exit v23

    return-void

    .line 149
    :cond_0
    :try_start_1
    const-string v3, "content://sms/queued"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 150
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 151
    .local v4, resolver:Landroid/content/ContentResolver;
    const/4 v14, 0x0

    .line 154
    .local v14, c:Landroid/database/Cursor;
    sget-object v6, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 157
    if-eqz v14, :cond_b

    .line 158
    const-string v3, "PendingMsgSendReceiverRegister"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendQueuedMessage, cursor not null and count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 162
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 163
    .local v18, msgId:I
    const/4 v3, 0x3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 164
    .local v7, msgText:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, dest:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 166
    .local v10, realTid:J
    const-string v20, "normal"

    .line 167
    .local v20, priStr:Ljava/lang/String;
    const-string v15, ""

    .line 170
    .local v15, callback:Ljava/lang/String;
    const/16 v21, 0x0

    .line 171
    .local v21, pri_id:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    const/4 v3, 0x4

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 173
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    const/4 v3, 0x5

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 176
    :cond_2
    if-lez v21, :cond_9

    .line 177
    new-instance v20, Ljava/lang/String;

    .end local v20           #priStr:Ljava/lang/String;
    const-string v3, "high"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 183
    .restart local v20       #priStr:Ljava/lang/String;
    :goto_1
    const-wide/16 v8, -0x1

    move/from16 v0, v18

    int-to-long v12, v0

    invoke-static/range {v6 .. v13}, Lcom/android/mms/ui/MessageUtils;->createSmsMessageSenderIntent(Ljava/lang/String;Ljava/lang/String;JJJ)Landroid/content/Intent;

    move-result-object v17

    .line 186
    .local v17, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 187
    const-string v3, "priority"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 189
    const-string v3, "callback"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPacketSms()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 200
    const-string v3, "send_mode"

    sget v8, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_SEND_MODE_TRANSACTION:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    :cond_5
    new-instance v22, Lcom/android/mms/transaction/SmsMessageSender;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 207
    .local v22, sender:Lcom/android/mms/transaction/SmsMessageSender;
    const-string v3, "PendingMsgSendReceiverRegister"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send pending: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 209
    const-wide/16 v8, -0x1

    :try_start_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/android/mms/transaction/SmsMessageSender;->sendMessage(J)Z

    .line 211
    invoke-static {}, Lcom/android/mms/MmsApp;->isImproveSmsSending()Z

    move-result v3

    if-nez v3, :cond_6

    .line 214
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v18

    int-to-long v8, v0

    invoke-static {v3, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 215
    .local v19, msgUri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v4, v1, v3, v8}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 223
    .end local v19           #msgUri:Landroid/net/Uri;
    :cond_6
    :goto_2
    :try_start_4
    sget-object v3, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    if-eqz v3, :cond_7

    .line 224
    const-string v3, "PendingMsgSendReceiverRegister"

    const-string v8, "before wait !!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 226
    :try_start_5
    sget-object v3, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v3, v3, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWaitObj:Ljava/lang/Object;

    if-eqz v3, :cond_7

    .line 227
    sget-object v3, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v8, v3, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWaitObj:Ljava/lang/Object;

    monitor-enter v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 228
    :try_start_6
    sget-object v3, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v3, v3, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWaitObj:Ljava/lang/Object;

    const-wide/16 v12, 0x4e20

    invoke-virtual {v3, v12, v13}, Ljava/lang/Object;->wait(J)V

    .line 229
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 236
    :cond_7
    :goto_3
    :try_start_7
    const-string v3, "PendingMsgSendReceiverRegister"

    const-string v8, "after wait !!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v8, 0x1

    if-le v3, v8, :cond_a

    .line 239
    const-string v3, "PendingMsgSendReceiverRegister"

    const-string v8, "Have Remain pending message, force send"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->forceSendPendMessage()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 258
    .end local v6           #dest:Ljava/lang/String;
    .end local v7           #msgText:Ljava/lang/String;
    .end local v10           #realTid:J
    .end local v15           #callback:Ljava/lang/String;
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #msgId:I
    .end local v20           #priStr:Ljava/lang/String;
    .end local v21           #pri_id:I
    .end local v22           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :cond_8
    :goto_4
    :try_start_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 145
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v14           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    monitor-exit v23

    throw v3

    .line 179
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v6       #dest:Ljava/lang/String;
    .restart local v7       #msgText:Ljava/lang/String;
    .restart local v10       #realTid:J
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v15       #callback:Ljava/lang/String;
    .restart local v18       #msgId:I
    .restart local v20       #priStr:Ljava/lang/String;
    .restart local v21       #pri_id:I
    :cond_9
    :try_start_9
    new-instance v20, Ljava/lang/String;

    .end local v20           #priStr:Ljava/lang/String;
    const-string v3, "normal"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v20       #priStr:Ljava/lang/String;
    goto/16 :goto_1

    .line 218
    .restart local v17       #intent:Landroid/content/Intent;
    .restart local v22       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :catch_0
    move-exception v16

    .line 219
    .local v16, e:Ljava/lang/Exception;
    const-string v3, "PendingMsgSendReceiverRegister"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to send message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    .line 250
    .end local v6           #dest:Ljava/lang/String;
    .end local v7           #msgText:Ljava/lang/String;
    .end local v10           #realTid:J
    .end local v15           #callback:Ljava/lang/String;
    .end local v16           #e:Ljava/lang/Exception;
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #msgId:I
    .end local v20           #priStr:Ljava/lang/String;
    .end local v21           #pri_id:I
    .end local v22           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :catch_1
    move-exception v16

    .line 251
    .local v16, e:Ljava/lang/IllegalStateException;
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 258
    :try_start_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 229
    .end local v16           #e:Ljava/lang/IllegalStateException;
    .restart local v6       #dest:Ljava/lang/String;
    .restart local v7       #msgText:Ljava/lang/String;
    .restart local v10       #realTid:J
    .restart local v15       #callback:Ljava/lang/String;
    .restart local v17       #intent:Landroid/content/Intent;
    .restart local v18       #msgId:I
    .restart local v20       #priStr:Ljava/lang/String;
    .restart local v21       #pri_id:I
    .restart local v22       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :catchall_1
    move-exception v3

    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_d .. :try_end_d} :catch_3

    .line 232
    :catch_2
    move-exception v16

    .line 233
    .local v16, e:Ljava/lang/Exception;
    :try_start_e
    const-string v3, "PendingMsgSendReceiverRegister"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wait exception >"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_3

    .line 254
    .end local v6           #dest:Ljava/lang/String;
    .end local v7           #msgText:Ljava/lang/String;
    .end local v10           #realTid:J
    .end local v15           #callback:Ljava/lang/String;
    .end local v16           #e:Ljava/lang/Exception;
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #msgId:I
    .end local v20           #priStr:Ljava/lang/String;
    .end local v21           #pri_id:I
    .end local v22           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :catch_3
    move-exception v16

    .line 255
    .local v16, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_f
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 258
    :try_start_10
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    .line 243
    .end local v16           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .restart local v6       #dest:Ljava/lang/String;
    .restart local v7       #msgText:Ljava/lang/String;
    .restart local v10       #realTid:J
    .restart local v15       #callback:Ljava/lang/String;
    .restart local v17       #intent:Landroid/content/Intent;
    .restart local v18       #msgId:I
    .restart local v20       #priStr:Ljava/lang/String;
    .restart local v21       #pri_id:I
    .restart local v22       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :cond_a
    :try_start_11
    const-string v3, "PendingMsgSendReceiverRegister"

    const-string v8, "sendQueuedMessage, pending last send"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->getInstance()Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    move-result-object v3

    invoke-direct {v3}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->unregister()V

    .line 245
    invoke-static {}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->forceClearRawTable()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_11 .. :try_end_11} :catch_3

    goto :goto_4

    .line 258
    .end local v6           #dest:Ljava/lang/String;
    .end local v7           #msgText:Ljava/lang/String;
    .end local v10           #realTid:J
    .end local v15           #callback:Ljava/lang/String;
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #msgId:I
    .end local v20           #priStr:Ljava/lang/String;
    .end local v21           #pri_id:I
    .end local v22           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :catchall_2
    move-exception v3

    :try_start_12
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3

    .line 262
    :cond_b
    const-string v3, "PendingMsgSendReceiverRegister"

    const-string v8, "sendQueuedMessage, cursor null -- unregister"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->getInstance()Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    move-result-object v3

    invoke-direct {v3}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->unregister()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized unregister()V
    .locals 2

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    const-string v0, "PendingMsgSendReceiverRegister"

    const-string v1, "unregister >>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    if-nez v0, :cond_0

    .line 318
    const-string v0, "PendingMsgSendReceiverRegister"

    const-string v1, "mRegister is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :goto_0
    monitor-exit p0

    return-void

    .line 322
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v0, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mReceiver:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$PendingMsgSendReceiver;

    if-eqz v0, :cond_2

    .line 323
    const-string v0, "PendingMsgSendReceiverRegister"

    const-string v1, "start to unregister receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v0, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v1, v1, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mReceiver:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$PendingMsgSendReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v0, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 326
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v0, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v0, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v0, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 331
    :cond_1
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWaitObj:Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegistered:Z

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mbNeedtoSendQueueImmediatelly:Z

    .line 336
    :cond_2
    const-string v0, "PendingMsgSendReceiverRegister"

    const-string v1, "unregister <<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized register(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    const-string v0, "PendingMsgSendReceiverRegister"

    const-string v1, "register >>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-boolean v0, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegistered:Z

    if-nez v0, :cond_0

    .line 290
    const-string v0, "PendingMsgSendReceiverRegister"

    const-string v1, "start to register receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v0, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "pendMsgSendThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingThread:Landroid/os/HandlerThread;

    .line 295
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v0, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 296
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    new-instance v1, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$MessageWorkingHandler;

    sget-object v2, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v2, v2, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$MessageWorkingHandler;-><init>(Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingHandler:Landroid/os/Handler;

    .line 299
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v0, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mReceiver:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister$PendingMsgSendReceiver;

    sget-object v1, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v1, v1, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegistered:Z

    .line 301
    const-string v0, "PendingMsgSendReceiverRegister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWorkingHandler new sesult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iget-object v2, v2, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWaitObj:Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mRegister:Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;

    iput-object p1, v0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mContext:Landroid/content/Context;

    .line 304
    iget-boolean v0, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mbNeedtoSendQueueImmediatelly:Z

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "PendingMsgSendReceiverRegister"

    const-string v1, "Pose sendQue immediatelly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/android/mms/transaction/PendingMsgSendReceiverRegister;->mWorkingHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 310
    :cond_0
    const-string v0, "PendingMsgSendReceiverRegister"

    const-string v1, "register <<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
