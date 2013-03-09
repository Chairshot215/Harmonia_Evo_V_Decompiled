.class final Lcom/htc/dlnamiddlelayer/DLNAService$ResponseMsgHandler;
.super Landroid/os/Handler;
.source "DLNAService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/DLNAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResponseMsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/DLNAService;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V
    .locals 0
    .parameter

    .prologue
    .line 583
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$ResponseMsgHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;Lcom/htc/dlnamiddlelayer/DLNAService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 583
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/DLNAService$ResponseMsgHandler;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 587
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$ResponseMsgHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mbServiceDestroy:Z
    invoke-static {v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$600(Lcom/htc/dlnamiddlelayer/DLNAService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/dlnamiddlelayer/MediaController;

    .line 592
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-eqz v0, :cond_0

    .line 595
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 596
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->errorUPnPMsg(I)V

    goto :goto_0

    .line 598
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/htc/dlnamiddlelayer/MediaController;->responseMsg(I)V

    goto :goto_0
.end method
