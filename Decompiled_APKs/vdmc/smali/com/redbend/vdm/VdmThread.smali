.class Lcom/redbend/vdm/VdmThread;
.super Ljava/lang/Thread;
.source "VdmThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final STOP:I = 0x3e9

.field public static final VDM_RUN:I = 0x3e8


# instance fields
.field protected _engine:Lcom/redbend/vdm/VdmEngine;

.field protected _handler:Landroid/os/Handler;

.field private volatile _isRunning:Z

.field private volatile _stopRequested:Z


# direct methods
.method public constructor <init>(Lcom/redbend/vdm/VdmEngine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/redbend/vdm/VdmThread;->_engine:Lcom/redbend/vdm/VdmEngine;

    .line 21
    const-string v0, "vdm"

    invoke-virtual {p0, v0}, Lcom/redbend/vdm/VdmThread;->setName(Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/redbend/vdm/VdmThread;->setDaemon(Z)V

    .line 24
    return-void
.end method

.method private declared-synchronized _notifyAll()V
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method die()V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbend/vdm/VdmThread;->_stopRequested:Z

    .line 109
    iget-object v0, p0, Lcom/redbend/vdm/VdmThread;->_handler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 64
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, isHandled:Z
    :goto_0
    return v0

    .line 66
    .end local v0           #isHandled:Z
    :pswitch_0
    invoke-virtual {p0}, Lcom/redbend/vdm/VdmThread;->onVdmRun()V

    .line 67
    const/4 v0, 0x1

    .line 68
    .restart local v0       #isHandled:Z
    goto :goto_0

    .line 70
    .end local v0           #isHandled:Z
    :pswitch_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 71
    const/4 v0, 0x1

    .line 72
    .restart local v0       #isHandled:Z
    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onVdmRun()V
    .locals 4

    .prologue
    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/redbend/vdm/VdmThread;->_isRunning:Z

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/redbend/vdm/VdmThread;->_engine:Lcom/redbend/vdm/VdmEngine;

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmEngine;->run()V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/redbend/vdm/VdmThread;->_isRunning:Z

    .line 90
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "vDM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught VdmException at VdmThread#onVdmRun: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method quit()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/redbend/vdm/VdmThread;->_handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/redbend/vdm/VdmThread;->die()V

    .line 104
    iget-object v0, p0, Lcom/redbend/vdm/VdmThread;->_handler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 106
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/redbend/vdm/VdmThread;->_handler:Landroid/os/Handler;

    .line 38
    invoke-direct {p0}, Lcom/redbend/vdm/VdmThread;->_notifyAll()V

    .line 39
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 41
    return-void
.end method

.method public declared-synchronized signal()Z
    .locals 3

    .prologue
    .line 93
    monitor-enter p0

    const/4 v0, 0x1

    .line 94
    .local v0, result:Z
    :try_start_0
    iget-boolean v1, p0, Lcom/redbend/vdm/VdmThread;->_isRunning:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/redbend/vdm/VdmThread;->_stopRequested:Z

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/redbend/vdm/VdmThread;->_handler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_0
    monitor-exit p0

    return v0

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/redbend/vdm/VdmThread;->_handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 52
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 48
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 57
    :cond_0
    monitor-exit p0

    return-void
.end method
