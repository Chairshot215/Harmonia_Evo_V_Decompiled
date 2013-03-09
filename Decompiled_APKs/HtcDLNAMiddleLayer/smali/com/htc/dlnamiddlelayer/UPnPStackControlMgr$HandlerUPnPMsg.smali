.class final Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr$HandlerUPnPMsg;
.super Landroid/os/Handler;
.source "UPnPStackControlMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandlerUPnPMsg"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr$HandlerUPnPMsg;->this$0:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr$HandlerUPnPMsg;-><init>(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr$HandlerUPnPMsg;->this$0:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    #getter for: Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mStack:Lcom/awox/jUPnPCP/UPnPStack;
    invoke-static {v1}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->access$100(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;)Lcom/awox/jUPnPCP/UPnPStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPStack;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr$HandlerUPnPMsg;->this$0:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    #getter for: Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->sClassName:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->access$200(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": stack not running, msg unhandled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr$HandlerUPnPMsg;->this$0:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    #getter for: Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mStack:Lcom/awox/jUPnPCP/UPnPStack;
    invoke-static {v1}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->access$100(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;)Lcom/awox/jUPnPCP/UPnPStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPStack;->getCommandToHandle()Lcom/awox/jUPnPCP/UPnPCommand;

    move-result-object v0

    .line 158
    .local v0, theCommand:Lcom/awox/jUPnPCP/UPnPCommand;
    if-eqz v0, :cond_1

    .line 160
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr$HandlerUPnPMsg;->this$0:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    #calls: Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->handleCommand(Lcom/awox/jUPnPCP/UPnPCommand;)V
    invoke-static {v1, v0}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->access$300(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;Lcom/awox/jUPnPCP/UPnPCommand;)V

    .line 161
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr$HandlerUPnPMsg;->this$0:Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;

    #getter for: Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mStack:Lcom/awox/jUPnPCP/UPnPStack;
    invoke-static {v1}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->access$100(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;)Lcom/awox/jUPnPCP/UPnPStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/awox/jUPnPCP/UPnPStack;->handledCommand(Lcom/awox/jUPnPCP/UPnPCommand;)V

    .line 164
    :cond_1
    if-nez v0, :cond_0

    goto :goto_0
.end method
