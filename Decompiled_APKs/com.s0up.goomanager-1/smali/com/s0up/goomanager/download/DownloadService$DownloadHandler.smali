.class Lcom/s0up/goomanager/download/DownloadService$DownloadHandler;
.super Landroid/os/Handler;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/s0up/goomanager/download/DownloadService;


# direct methods
.method public constructor <init>(Lcom/s0up/goomanager/download/DownloadService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/s0up/goomanager/download/DownloadService$DownloadHandler;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    .line 141
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 142
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 146
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 147
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "downloadFile"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/s0up/goomanager/download/Download;

    .line 148
    .local v1, downloadInformation:Lcom/s0up/goomanager/download/Download;
    iget-object v2, p0, Lcom/s0up/goomanager/download/DownloadService$DownloadHandler;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    #calls: Lcom/s0up/goomanager/download/DownloadService;->submitPendingDownload(Lcom/s0up/goomanager/download/Download;)V
    invoke-static {v2, v1}, Lcom/s0up/goomanager/download/DownloadService;->access$0(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V

    .line 173
    .end local v1           #downloadInformation:Lcom/s0up/goomanager/download/Download;
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 151
    iget-object v2, p0, Lcom/s0up/goomanager/download/DownloadService$DownloadHandler;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    #getter for: Lcom/s0up/goomanager/download/DownloadService;->mDownloads:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/s0up/goomanager/download/DownloadService;->access$1(Lcom/s0up/goomanager/download/DownloadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "downloadKey"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s0up/goomanager/download/Download;

    .line 152
    .local v0, download:Lcom/s0up/goomanager/download/Download;
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    iget-object v2, p0, Lcom/s0up/goomanager/download/DownloadService$DownloadHandler;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    #calls: Lcom/s0up/goomanager/download/DownloadService;->onDownloadStarted(Lcom/s0up/goomanager/download/Download;)V
    invoke-static {v2, v0}, Lcom/s0up/goomanager/download/DownloadService;->access$2(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v2, p0, Lcom/s0up/goomanager/download/DownloadService$DownloadHandler;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    iget v3, p1, Landroid/os/Message;->arg2:I

    int-to-long v3, v3

    #calls: Lcom/s0up/goomanager/download/DownloadService;->onDownloadUpdated(Lcom/s0up/goomanager/download/Download;J)V
    invoke-static {v2, v0, v3, v4}, Lcom/s0up/goomanager/download/DownloadService;->access$3(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;J)V

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v2, p0, Lcom/s0up/goomanager/download/DownloadService$DownloadHandler;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    #calls: Lcom/s0up/goomanager/download/DownloadService;->onDownloadFinished(Lcom/s0up/goomanager/download/Download;)V
    invoke-static {v2, v0}, Lcom/s0up/goomanager/download/DownloadService;->access$4(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V

    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v2, p0, Lcom/s0up/goomanager/download/DownloadService$DownloadHandler;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/s0up/goomanager/download/DownloadService;->onDownloadErrored(Lcom/s0up/goomanager/download/Download;I)V
    invoke-static {v2, v0, v3}, Lcom/s0up/goomanager/download/DownloadService;->access$5(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;I)V

    goto :goto_0

    .line 166
    :pswitch_4
    iget-object v2, p0, Lcom/s0up/goomanager/download/DownloadService$DownloadHandler;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    #calls: Lcom/s0up/goomanager/download/DownloadService;->onDownloadCancelled(Lcom/s0up/goomanager/download/Download;)V
    invoke-static {v2, v0}, Lcom/s0up/goomanager/download/DownloadService;->access$6(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V

    goto :goto_0

    .line 169
    :pswitch_5
    iget-object v2, p0, Lcom/s0up/goomanager/download/DownloadService$DownloadHandler;->this$0:Lcom/s0up/goomanager/download/DownloadService;

    #calls: Lcom/s0up/goomanager/download/DownloadService;->onDownloadCheckingMD5Sum(Lcom/s0up/goomanager/download/Download;)V
    invoke-static {v2, v0}, Lcom/s0up/goomanager/download/DownloadService;->access$7(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
