.class Lcom/android/mms/util/MmsAsyncWorkHandler$bgWorkerHandler;
.super Landroid/os/Handler;
.source "MmsAsyncWorkHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/MmsAsyncWorkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "bgWorkerHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 351
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->access$100()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 352
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 356
    iget v9, p1, Landroid/os/Message;->what:I

    .line 357
    .local v9, token:I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 358
    .local v3, event:I
    const-wide/16 v5, 0x0

    .local v5, time:J
    const-wide/16 v7, 0x0

    .line 360
    .local v7, time1:J
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->closeHighPriorityCursorInArray()V

    .line 362
    packed-switch v3, :pswitch_data_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 364
    :pswitch_0
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->access$200()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 366
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;

    .line 367
    .local v0, args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    invoke-static {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler;->queryDebug(Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;)Landroid/database/Cursor;

    .line 369
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->access$300()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 370
    .local v4, msg1:Landroid/os/Message;
    const/16 v10, 0x2711

    iput v10, v4, Landroid/os/Message;->arg1:I

    .line 371
    iput v9, v4, Landroid/os/Message;->arg2:I

    .line 372
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 373
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->access$300()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 378
    .end local v0           #args:Lcom/android/mms/util/MmsAsyncWorkHandler$WorkerArgs;
    .end local v4           #msg1:Landroid/os/Message;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    .line 379
    .local v1, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->access$200()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 385
    :cond_2
    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_3

    .line 386
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->access$200()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 391
    const-string v10, "MmsAsyncWorkHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\nclose Cursor time = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v5

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :catch_0
    move-exception v2

    .line 388
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "MmsAsyncWorkHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "EVENT_CLOSE_CURSOR >"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
