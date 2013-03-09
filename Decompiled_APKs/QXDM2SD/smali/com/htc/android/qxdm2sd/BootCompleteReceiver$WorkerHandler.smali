.class Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;
.super Landroid/os/Handler;
.source "BootCompleteReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/qxdm2sd/BootCompleteReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/qxdm2sd/BootCompleteReceiver;


# direct methods
.method public constructor <init>(Lcom/htc/android/qxdm2sd/BootCompleteReceiver;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->this$0:Lcom/htc/android/qxdm2sd/BootCompleteReceiver;

    .line 271
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 272
    return-void
.end method

.method private worker_airplane_mode_changed(Z)V
    .locals 6
    .parameter "airplaneMode"

    .prologue
    const/4 v1, 0x1

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, isRunning:Z
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.htc.android.qxdm2sd/data/qxdm2sd.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 293
    :goto_0
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$400()Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 295
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->getDaemonPID()I

    move-result v2

    if-lez v2, :cond_2

    move v0, v1

    .line 297
    :goto_1
    if-ne p1, v1, :cond_3

    if-ne v0, v1, :cond_3

    .line 299
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v2

    const/4 v3, 0x7

    const/16 v4, 0x3ef

    const/16 v5, 0x7d2

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 306
    :cond_0
    :goto_2
    return-void

    .line 290
    :cond_1
    const-string v2, "/data/data/com.htc.android.qxdm2sd/data/qxdm2sd.conf"

    #calls: Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->loadConfig(Ljava/lang/String;)Z
    invoke-static {v2}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$300(Ljava/lang/String;)Z

    goto :goto_0

    .line 295
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 301
    :cond_3
    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 303
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/16 v5, 0x7d3

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method private worker_media_eject()V
    .locals 5

    .prologue
    .line 312
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.htc.android.qxdm2sd/data/qxdm2sd.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    :goto_0
    const-string v0, "INTERNAL_STORAGE"

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    :cond_0
    :goto_1
    return-void

    .line 318
    :cond_1
    const-string v0, "/data/data/com.htc.android.qxdm2sd/data/qxdm2sd.conf"

    #calls: Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->loadConfig(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$300(Ljava/lang/String;)Z

    goto :goto_0

    .line 326
    :cond_2
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->getDaemonPID()I

    move-result v0

    if-lez v0, :cond_0

    .line 328
    const-string v0, "QXDM2SD:BootCompleteReceiver"

    const-string v1, "phone/external is un-mounted during running"

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v0

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v1

    const/4 v2, 0x7

    const/16 v3, 0x3ef

    const/16 v4, 0x7d4

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const-wide/16 v5, 0x3e8

    const/4 v2, 0x1

    const/4 v4, 0x2

    .line 337
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 340
    :sswitch_0
    const-string v0, "QXDM2SD:BootCompleteReceiver"

    const-string v1, "WorkerHandler: MSG_INIT_BEGIN: begin"

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.htc.android.qxdm2sd/data/qxdm2sd.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 351
    :goto_1
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->removeMessages(I)V

    .line 354
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v0

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x7d1

    invoke-virtual {v1, v4, v2, v3}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 357
    :cond_1
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$600()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/qxdm2sd/Device;->initEnvironment(Landroid/content/Context;)Z

    .line 358
    invoke-static {v7}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$702(Z)Z

    .line 359
    const-string v0, "QXDM2SD:BootCompleteReceiver"

    const-string v1, "WorkerHandler: MSG_INIT_BEGIN: end"

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_2
    const-string v0, "/data/data/com.htc.android.qxdm2sd/data/qxdm2sd.conf"

    #calls: Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->loadConfig(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$300(Ljava/lang/String;)Z

    goto :goto_1

    .line 365
    :sswitch_1
    const-string v0, "EXTERNAL_STORAGE"

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->getExternalStorageState()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 369
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v0

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v1

    const/4 v2, 0x6

    const/16 v3, 0x3ee

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 373
    :cond_3
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->removeMessages(I)V

    .line 375
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v0

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v4, v2, v3}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 377
    const-string v0, "QXDM2SD:BootCompleteReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_AUTO_RUN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not mounted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 380
    :cond_4
    const-string v0, "PHONE_STORAGE"

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->getPhoneStorageState()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 384
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v0

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v1

    const/4 v2, 0x6

    const/16 v3, 0x3ee

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 388
    :cond_5
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->removeMessages(I)V

    .line 390
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v0

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$200()Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v4, v2, v3}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 392
    const-string v0, "QXDM2SD:BootCompleteReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_AUTO_RUN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not mounted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :sswitch_2
    const-string v0, "QXDM2SD:BootCompleteReceiver"

    const-string v1, "WorkerHandler: MSG_START_LOGGER: begin"

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$800()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$900()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$1000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 401
    :cond_6
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$000()Ljava/util/List;

    move-result-object v0

    const-string v1, "AT@FlushCDLogToAppsAck=0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_7
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$1100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 405
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$000()Ljava/util/List;

    move-result-object v0

    const-string v1, "AT%TRACE=1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_8
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$100()Landroid/os/Handler;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 411
    const-string v0, "QXDM2SD:BootCompleteReceiver"

    const-string v1, "WorkerHandler: MSG_START_LOGGER: end"

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 415
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->startDaemon(Ljava/lang/String;)I

    .line 416
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$600()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f02

    const-string v3, "QXDM Logger"

    const-string v4, "QXDM Logger"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/htc/android/qxdm2sd/Device;->sendNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, ""

    goto :goto_2

    .line 420
    :sswitch_4
    const-string v0, "QXDM2SD:BootCompleteReceiver"

    const-string v1, "WorkerHandler: MSG_STOP_LOGGER: begin"

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$800()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$900()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$1000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 423
    :cond_a
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$000()Ljava/util/List;

    move-result-object v0

    const-string v1, "AT@FlushCDLogToAppsAck=1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_b
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$1100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    .line 428
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$000()Ljava/util/List;

    move-result-object v0

    const-string v1, "AT%TRACE=0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_c
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$100()Landroid/os/Handler;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 434
    const-string v0, "QXDM2SD:BootCompleteReceiver"

    const-string v1, "WorkerHandler: MSG_STOP_LOGGER: end"

    invoke-static {v0, v1}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 438
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->stopDaemon(Ljava/lang/String;)I

    .line 439
    invoke-static {}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver;->access$600()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f02

    const-string v3, "QXDM Logger"

    const-string v4, "QXDM Logger"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/htc/android/qxdm2sd/Device;->sendNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, ""

    goto :goto_3

    .line 443
    :sswitch_6
    invoke-direct {p0, v2}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->worker_airplane_mode_changed(Z)V

    goto/16 :goto_0

    .line 447
    :sswitch_7
    invoke-direct {p0, v7}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->worker_airplane_mode_changed(Z)V

    goto/16 :goto_0

    .line 451
    :sswitch_8
    invoke-direct {p0}, Lcom/htc/android/qxdm2sd/BootCompleteReceiver$WorkerHandler;->worker_media_eject()V

    goto/16 :goto_0

    .line 337
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_4
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0x3ee -> :sswitch_3
        0x3ef -> :sswitch_5
    .end sparse-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method
