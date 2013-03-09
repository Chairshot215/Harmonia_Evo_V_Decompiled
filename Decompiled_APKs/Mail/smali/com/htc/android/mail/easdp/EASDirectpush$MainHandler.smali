.class Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;
.super Landroid/os/Handler;
.source "EASDirectpush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easdp/EASDirectpush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/android/mail/easdp/EASDirectpush;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/easdp/EASDirectpush;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    .line 303
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 304
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->mContext:Landroid/content/Context;

    .line 305
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 309
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 381
    :goto_0
    return-void

    .line 312
    :pswitch_0
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, v9, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakelockLock:Ljava/lang/Object;

    monitor-enter v10

    .line 313
    :try_start_0
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v9, v9, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    if-nez v9, :cond_0

    .line 314
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v11, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->mContext:Landroid/content/Context;

    const-string v12, "START_SERVICE"

    invoke-static {v11, v12}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v11

    iput-object v11, v9, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 316
    :cond_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/Intent;

    .line 318
    .local v6, serviceIntent:Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, action:Ljava/lang/String;
    const-string v9, "exchangeAccount"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 320
    .local v3, exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    const-string v9, "EASDirectpush"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MSG_SERVICE_ON_START:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v3, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 321
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 323
    .local v7, startId:I
    :try_start_1
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-boolean v9, v9, Lcom/htc/android/mail/easdp/EASDirectpush;->serviceRelease:Z

    if-eqz v9, :cond_1

    .line 324
    const-string v9, "EASDirectpush"

    const-string v10, "MSG_SERVICE_ON_START:(serviceRelease)"

    invoke-static {v9, v3, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 372
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, v9, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakelockLock:Ljava/lang/Object;

    monitor-enter v10

    .line 373
    :try_start_2
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v9, v9, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    invoke-static {v9}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 374
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    const/4 v11, 0x0

    iput-object v11, v9, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 375
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 316
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .end local v6           #serviceIntent:Landroid/content/Intent;
    .end local v7           #startId:I
    :catchall_1
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 327
    .restart local v0       #action:Ljava/lang/String;
    .restart local v3       #exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .restart local v6       #serviceIntent:Landroid/content/Intent;
    .restart local v7       #startId:I
    :cond_1
    if-eqz v0, :cond_2

    :try_start_4
    const-string v9, "com.htc.android.mail.intent.dp.start"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 329
    :cond_2
    const-string v9, "delayMs"

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 330
    .local v4, offset:J
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-lez v9, :cond_4

    .line 331
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V
    invoke-static {v9, v3, v4, v5}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$300(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 372
    .end local v4           #offset:J
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, v9, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakelockLock:Ljava/lang/Object;

    monitor-enter v10

    .line 373
    :try_start_5
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v9, v9, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    invoke-static {v9}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 374
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    const/4 v11, 0x0

    iput-object v11, v9, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 375
    monitor-exit v10

    goto/16 :goto_0

    :catchall_2
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9

    .line 333
    .restart local v4       #offset:J
    :cond_4
    :try_start_6
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    invoke-static {v9, v3}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$400(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_1

    .line 372
    .end local v4           #offset:J
    :catchall_3
    move-exception v9

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, v10, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakelockLock:Ljava/lang/Object;

    monitor-enter v10

    .line 373
    :try_start_7
    iget-object v11, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v11, v11, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    invoke-static {v11}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 374
    iget-object v11, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/htc/android/mail/easdp/EASDirectpush;->mWakeLockOnStart:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 375
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 372
    throw v9

    .line 335
    :cond_5
    :try_start_8
    const-string v9, "com.htc.android.mail.intent.dp.stop"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 336
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->stopDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    invoke-static {v9, v3}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$500(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    goto :goto_1

    .line 337
    :cond_6
    const-string v9, "com.htc.android.mail.intent.dp.restartAfterSync"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 338
    const-string v9, "userCancel"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 339
    .local v8, userCancel:Z
    const-string v9, "errorWhileSync"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 340
    .local v2, errorWhileSync:Z
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v9, v9, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    iget-wide v10, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;

    .line 341
    .local v1, dpHandler:Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
    if-eqz v1, :cond_7

    iget-object v9, v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    if-eqz v9, :cond_7

    iget-object v9, v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    invoke-virtual {v9}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->isForceShutdown()Z

    move-result v9

    if-nez v9, :cond_3

    .line 352
    :cond_7
    if-eqz v1, :cond_9

    .line 353
    if-nez v8, :cond_8

    if-eqz v2, :cond_a

    :cond_8
    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->waitRestartAlarm:Z

    .line 354
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->checkAccountData(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    invoke-static {v9, v10, v3}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$600(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 356
    :cond_9
    if-eqz v8, :cond_b

    .line 357
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    const-wide/32 v10, 0xea60

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V
    invoke-static {v9, v3, v10, v11}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$300(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V

    goto/16 :goto_1

    .line 353
    :cond_a
    const/4 v9, 0x0

    goto :goto_2

    .line 358
    :cond_b
    if-eqz v2, :cond_c

    .line 359
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    const-wide/32 v10, 0x493e0

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V
    invoke-static {v9, v3, v10, v11}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$300(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V

    goto/16 :goto_1

    .line 361
    :cond_c
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    invoke-static {v9, v3}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$400(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    goto/16 :goto_1

    .line 364
    .end local v1           #dpHandler:Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
    .end local v2           #errorWhileSync:Z
    .end local v8           #userCancel:Z
    :cond_d
    const-string v9, "com.htc.android.mail.intent.dp.resetHttp"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 365
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$MainHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v9, v9, Lcom/htc/android/mail/easdp/EASDirectpush;->mDirectpushHandlerList:Ljava/util/Hashtable;

    iget-wide v10, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;

    .line 366
    .restart local v1       #dpHandler:Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
    if-eqz v1, :cond_3

    iget-object v9, v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    if-eqz v9, :cond_3

    .line 368
    iget-object v9, v1, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    invoke-virtual {v9}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->releaseHttpClient()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_1

    .line 375
    .end local v1           #dpHandler:Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
    :catchall_4
    move-exception v9

    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v9

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
