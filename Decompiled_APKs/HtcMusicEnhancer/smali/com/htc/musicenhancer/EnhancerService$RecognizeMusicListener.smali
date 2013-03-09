.class Lcom/htc/musicenhancer/EnhancerService$RecognizeMusicListener;
.super Ljava/lang/Object;
.source "EnhancerService.java"

# interfaces
.implements Lcom/htc/musicenhancer/RecognizeMusic$OnCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/EnhancerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecognizeMusicListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/EnhancerService;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/EnhancerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1532
    iput-object p1, p0, Lcom/htc/musicenhancer/EnhancerService$RecognizeMusicListener;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(ILcom/htc/musicenhancer/SearchResult;)V
    .locals 4
    .parameter "albumId"
    .parameter "searchResult"

    .prologue
    .line 1534
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$RecognizeMusicListener;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v2}, Lcom/htc/musicenhancer/EnhancerService;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1545
    :cond_0
    :goto_0
    return-void

    .line 1536
    :cond_1
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$RecognizeMusicListener;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1537
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$RecognizeMusicListener;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1538
    .local v1, msg:Landroid/os/Message;
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1539
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1540
    .local v0, data:Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/musicenhancer/EnhancerService;->access$1300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1541
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1542
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$RecognizeMusicListener;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/musicenhancer/EnhancerService;->access$700(Lcom/htc/musicenhancer/EnhancerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
