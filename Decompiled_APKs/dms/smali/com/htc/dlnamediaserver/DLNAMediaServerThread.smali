.class public Lcom/htc/dlnamediaserver/DLNAMediaServerThread;
.super Ljava/lang/Thread;
.source "DLNAMediaServerThread.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRun:Z


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "aHandler"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerThread;->mRun:Z

    .line 17
    iput-object p1, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerThread;->mHandler:Landroid/os/Handler;

    .line 18
    iput-boolean v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerThread;->mRun:Z

    .line 19
    return-void
.end method


# virtual methods
.method public Start()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerThread;->mRun:Z

    .line 26
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/DLNAMediaServerThread;->start()V

    .line 27
    return-void
.end method

.method public Stop()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerThread;->mRun:Z

    .line 34
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 40
    :goto_0
    iget-boolean v2, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerThread;->mRun:Z

    if-eqz v2, :cond_0

    .line 42
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 43
    .local v1, theMessage:Landroid/os/Message;
    sget-object v2, Lcom/htc/dlnamediaserver/Settings$HandlerAction;->UpdateStatus:Lcom/htc/dlnamediaserver/Settings$HandlerAction;

    invoke-virtual {v2}, Lcom/htc/dlnamediaserver/Settings$HandlerAction;->ordinal()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 44
    iget-object v2, p0, Lcom/htc/dlnamediaserver/DLNAMediaServerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 45
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #theMessage:Landroid/os/Message;
    :cond_0
    return-void
.end method
