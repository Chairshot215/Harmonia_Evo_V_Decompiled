.class Lcom/htc/launcher/PendingUIUpdate$PendingUIHandler;
.super Landroid/os/Handler;
.source "PendingUIUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/PendingUIUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/PendingUIUpdate;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/PendingUIUpdate;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/launcher/PendingUIUpdate$PendingUIHandler;->this$0:Lcom/htc/launcher/PendingUIUpdate;

    .line 31
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 37
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/htc/launcher/PendingUIUpdate$PendingUIHandler;->this$0:Lcom/htc/launcher/PendingUIUpdate;

    #getter for: Lcom/htc/launcher/PendingUIUpdate;->mCount:I
    invoke-static {v3}, Lcom/htc/launcher/PendingUIUpdate;->access$000(Lcom/htc/launcher/PendingUIUpdate;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_2

    const-string v2, "PendingUIUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after take - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_2
    iget-object v2, p0, Lcom/htc/launcher/PendingUIUpdate$PendingUIHandler;->this$0:Lcom/htc/launcher/PendingUIUpdate;

    #getter for: Lcom/htc/launcher/PendingUIUpdate;->mDidScroll:Z
    invoke-static {v2}, Lcom/htc/launcher/PendingUIUpdate;->access$100(Lcom/htc/launcher/PendingUIUpdate;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 45
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_3

    const-string v2, "PendingUIUpdate"

    const-string v3, "enter waiting."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_3
    invoke-static {}, Lcom/htc/launcher/PendingUIUpdate;->access$200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 48
    :try_start_0
    invoke-static {}, Lcom/htc/launcher/PendingUIUpdate;->access$200()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    sget-boolean v2, Lcom/htc/launcher/Launcher;->localLOGD:Z

    if-eqz v2, :cond_4

    const-string v2, "PendingUIUpdate"

    const-string v3, "wake from waiting."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_4
    sget-object v2, Lcom/htc/launcher/Launcher;->sRefLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/Launcher;

    .line 58
    .local v1, launcher:Lcom/htc/launcher/Launcher;
    if-eqz v1, :cond_0

    .line 59
    iget-object v3, v1, Lcom/htc/launcher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    const-wide/16 v2, 0xc8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v2

    goto :goto_0

    .line 49
    .end local v1           #launcher:Lcom/htc/launcher/Launcher;
    :catch_1
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 53
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method
