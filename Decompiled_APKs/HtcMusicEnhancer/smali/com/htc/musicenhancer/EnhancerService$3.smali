.class Lcom/htc/musicenhancer/EnhancerService$3;
.super Landroid/os/Handler;
.source "EnhancerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/EnhancerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/EnhancerService;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/EnhancerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/htc/musicenhancer/EnhancerService$3;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService$3;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mCurrStatus:I
    invoke-static {v0}, Lcom/htc/musicenhancer/EnhancerService;->access$1600(Lcom/htc/musicenhancer/EnhancerService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService$3;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/musicenhancer/EnhancerService;->stopForeground(Z)V

    .line 1246
    iget-object v0, p0, Lcom/htc/musicenhancer/EnhancerService$3;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    iget-object v1, p0, Lcom/htc/musicenhancer/EnhancerService$3;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mServiceStartId:I
    invoke-static {v1}, Lcom/htc/musicenhancer/EnhancerService;->access$1700(Lcom/htc/musicenhancer/EnhancerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/musicenhancer/EnhancerService;->stopSelf(I)V

    .line 1247
    const-string v0, "[EnhancerService]"

    const-string v1, "stop service"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    :cond_0
    return-void
.end method
