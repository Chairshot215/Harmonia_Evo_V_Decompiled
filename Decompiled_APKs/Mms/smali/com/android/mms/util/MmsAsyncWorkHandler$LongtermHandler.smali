.class public Lcom/android/mms/util/MmsAsyncWorkHandler$LongtermHandler;
.super Landroid/os/Handler;
.source "MmsAsyncWorkHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/MmsAsyncWorkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongtermHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 420
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->access$400()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 421
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 417
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->access$400()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 418
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 429
    const-wide/16 v0, 0x0

    .local v0, time:J
    const-wide/16 v2, 0x0

    .line 430
    .local v2, time1:J
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->access$200()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 432
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/MmsAsyncWorkHandler$LongtermHandler;->handleMessage_Debug(Landroid/os/Message;)V

    .line 433
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->closeHighPriorityCursorInArray()V

    .line 435
    const-string v4, "MmsAsyncWorkHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nhandleMessage token = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->access$200()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 438
    const-string v4, "MmsAsyncWorkHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nhandleMessage extra info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v4, "MmsAsyncWorkHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nhandleMessage_Debug time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    return-void
.end method

.method public handleMessage_Debug(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 425
    return-void
.end method
