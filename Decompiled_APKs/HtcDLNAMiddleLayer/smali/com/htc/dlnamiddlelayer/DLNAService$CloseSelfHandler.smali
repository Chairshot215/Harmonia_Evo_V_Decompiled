.class final Lcom/htc/dlnamiddlelayer/DLNAService$CloseSelfHandler;
.super Landroid/os/Handler;
.source "DLNAService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/DLNAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CloseSelfHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/DLNAService;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$CloseSelfHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;Lcom/htc/dlnamiddlelayer/DLNAService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/DLNAService$CloseSelfHandler;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$CloseSelfHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mbServiceDestroy:Z
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$600(Lcom/htc/dlnamiddlelayer/DLNAService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$CloseSelfHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mBindCount:I
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1300(Lcom/htc/dlnamiddlelayer/DLNAService;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$CloseSelfHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRefControllerUse:Ljava/util/Vector;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1400(Lcom/htc/dlnamiddlelayer/DLNAService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$CloseSelfHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->stopSelf()V

    .line 612
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "stop service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$CloseSelfHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRefControllerUse:Ljava/util/Vector;
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1400(Lcom/htc/dlnamiddlelayer/DLNAService;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$CloseSelfHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #calls: Lcom/htc/dlnamiddlelayer/DLNAService;->releaseSystemResource()V
    invoke-static {v0}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1500(Lcom/htc/dlnamiddlelayer/DLNAService;)V

    .line 617
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "release resource"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 621
    :cond_2
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bind count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService$CloseSelfHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mBindCount:I
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1300(Lcom/htc/dlnamiddlelayer/DLNAService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RefUse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService$CloseSelfHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRefControllerUse:Ljava/util/Vector;
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1400(Lcom/htc/dlnamiddlelayer/DLNAService;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",registerCount ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/DLNAService$CloseSelfHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRegisterCount:I
    invoke-static {v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1600(Lcom/htc/dlnamiddlelayer/DLNAService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
