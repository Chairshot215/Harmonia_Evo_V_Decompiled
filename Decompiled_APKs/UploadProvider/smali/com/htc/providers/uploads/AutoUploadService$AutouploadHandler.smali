.class Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;
.super Landroid/os/Handler;
.source "AutoUploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/providers/uploads/AutoUploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutouploadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/providers/uploads/AutoUploadService;


# direct methods
.method private constructor <init>(Lcom/htc/providers/uploads/AutoUploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/providers/uploads/AutoUploadService;Lcom/htc/providers/uploads/AutoUploadService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;-><init>(Lcom/htc/providers/uploads/AutoUploadService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 408
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 420
    :goto_0
    return-void

    .line 410
    :pswitch_0
    iget-object v0, p0, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    #getter for: Lcom/htc/providers/uploads/AutoUploadService;->uploadingLock:Z
    invoke-static {v0}, Lcom/htc/providers/uploads/AutoUploadService;->access$600(Lcom/htc/providers/uploads/AutoUploadService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    #getter for: Lcom/htc/providers/uploads/AutoUploadService;->dbLock:Z
    invoke-static {v0}, Lcom/htc/providers/uploads/AutoUploadService;->access$100(Lcom/htc/providers/uploads/AutoUploadService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    const-string v0, "AutoUploadService"

    const-string v1, "stop service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    const/4 v1, 0x0

    #setter for: Lcom/htc/providers/uploads/AutoUploadService;->stopselfCount:I
    invoke-static {v0, v1}, Lcom/htc/providers/uploads/AutoUploadService;->access$202(Lcom/htc/providers/uploads/AutoUploadService;I)I

    .line 413
    iget-object v0, p0, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    invoke-virtual {v0}, Lcom/htc/providers/uploads/AutoUploadService;->stopSelf()V

    goto :goto_0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    invoke-static {v0}, Lcom/htc/providers/uploads/AutoUploadService;->access$208(Lcom/htc/providers/uploads/AutoUploadService;)I

    .line 417
    const-string v0, "AutoUploadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopselfCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/providers/uploads/AutoUploadService$AutouploadHandler;->this$0:Lcom/htc/providers/uploads/AutoUploadService;

    #getter for: Lcom/htc/providers/uploads/AutoUploadService;->stopselfCount:I
    invoke-static {v2}, Lcom/htc/providers/uploads/AutoUploadService;->access$200(Lcom/htc/providers/uploads/AutoUploadService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
