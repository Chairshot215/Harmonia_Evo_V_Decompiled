.class public Lcom/htc/dlnamiddlelayer/UPnPStackMsgNotifyThread;
.super Ljava/lang/Thread;
.source "UPnPStackMsgNotifyThread.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mStack:Lcom/awox/jUPnPCP/UPnPStack;


# direct methods
.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;Landroid/os/Handler;)V
    .locals 0
    .parameter "aStack"
    .parameter "aHandler"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/UPnPStackMsgNotifyThread;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    .line 26
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/UPnPStackMsgNotifyThread;->mHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 32
    :goto_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/UPnPStackMsgNotifyThread;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPStack;->waitCommand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/UPnPStackMsgNotifyThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 37
    :cond_0
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "UPnPStackMsgNotifyThread run exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method
