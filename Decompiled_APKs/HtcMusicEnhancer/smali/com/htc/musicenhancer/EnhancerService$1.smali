.class Lcom/htc/musicenhancer/EnhancerService$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 603
    iput-object p1, p0, Lcom/htc/musicenhancer/EnhancerService$1;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 605
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, action:Ljava/lang/String;
    const-string v2, "action_notification_downloading"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 607
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$1;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    const-class v3, Lcom/htc/musicenhancer/ProgressActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 609
    .local v1, progressIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$1;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;
    invoke-static {v2}, Lcom/htc/musicenhancer/EnhancerService;->access$200(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->totalDownloadCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 630
    .end local v1           #progressIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 612
    .restart local v1       #progressIntent:Landroid/content/Intent;
    :cond_1
    const/high16 v2, 0x1080

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 614
    const-string v2, "total_download_count"

    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$1;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;
    invoke-static {v3}, Lcom/htc/musicenhancer/EnhancerService;->access$200(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->totalDownloadCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    const-string v2, "current_download_count"

    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$1;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    #getter for: Lcom/htc/musicenhancer/EnhancerService;->mDownloadAlbumInfoList:Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;
    invoke-static {v3}, Lcom/htc/musicenhancer/EnhancerService;->access$200(Lcom/htc/musicenhancer/EnhancerService;)Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/musicenhancer/EnhancerService$DownloadAlbumInfoList;->currentDownloadCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    const-string v2, "auto_update"

    iget-object v3, p0, Lcom/htc/musicenhancer/EnhancerService$1;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    iget-boolean v3, v3, Lcom/htc/musicenhancer/EnhancerService;->mIsAutoUpdate:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 619
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$1;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v2, v1}, Lcom/htc/musicenhancer/EnhancerService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 620
    .end local v1           #progressIntent:Landroid/content/Intent;
    :cond_2
    const-string v2, "action_cancel_download"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 621
    const-string v2, "[EnhancerService]"

    const-string v3, "received cancel download"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$1;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v2, v4, v4}, Lcom/htc/musicenhancer/EnhancerService;->cancelDownload(ZZ)V

    goto :goto_0

    .line 623
    :cond_3
    const-string v2, "action_auto_update_album"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 624
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$1;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v2}, Lcom/htc/musicenhancer/EnhancerService;->startDownload()V

    goto :goto_0

    .line 625
    :cond_4
    const-string v2, "action_update_all_album"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 626
    iget-object v2, p0, Lcom/htc/musicenhancer/EnhancerService$1;->this$0:Lcom/htc/musicenhancer/EnhancerService;

    invoke-virtual {v2}, Lcom/htc/musicenhancer/EnhancerService;->startDownload()V

    goto :goto_0

    .line 627
    :cond_5
    const-string v2, "action_update_current_album"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
