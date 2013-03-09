.class final Lcom/htc/dlnamiddlelayer/DLNAService$ThumbnailThreadHandler;
.super Landroid/os/Handler;
.source "DLNAService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/DLNAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThumbnailThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/DLNAService;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$ThumbnailThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;Lcom/htc/dlnamiddlelayer/DLNAService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/DLNAService$ThumbnailThreadHandler;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 536
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/DLNAService$ThumbnailThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mbServiceDestroy:Z
    invoke-static {v4}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$600(Lcom/htc/dlnamiddlelayer/DLNAService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    .line 541
    .local v0, aItem:Lcom/htc/dlnamiddlelayer/DownloadItemInfo;
    if-nez v0, :cond_2

    .line 543
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "DMC_THUMBNAIL_UPDATE is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 547
    :cond_2
    sget-object v4, Lcom/htc/dlnamiddlelayer/DLNAService$6;->$SwitchMap$com$htc$dlnamiddlelayer$GlobalDataStore$ThumbnailReturnType:[I

    iget-object v5, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mThumbReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 550
    :pswitch_0
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/DLNAService$ThumbnailThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v4}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->getServerItem(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/ServerItem;

    move-result-object v3

    .line 551
    .local v3, server:Lcom/htc/dlnamiddlelayer/ServerItem;
    if-eqz v3, :cond_3

    .line 553
    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/dlnamiddlelayer/ServerItem;->setThumbIconPath(Ljava/lang/String;)V

    .line 555
    :cond_3
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/DLNAService$ThumbnailThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget v5, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->cookie:I

    iget-object v6, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    iget-object v7, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/dlnamiddlelayer/DLNAService;->serverThumbnailUpdateMsg(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 558
    .end local v3           #server:Lcom/htc/dlnamiddlelayer/ServerItem;
    :pswitch_1
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/DLNAService$ThumbnailThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mRendererModule:Lcom/htc/dlnamiddlelayer/RendererControlPointModule;
    invoke-static {v4}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$1200(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/RendererControlPointModule;

    move-result-object v4

    iget-object v5, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/dlnamiddlelayer/RendererControlPointModule;->getRendererItem(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/RendererItem;

    move-result-object v2

    .line 559
    .local v2, renderer:Lcom/htc/dlnamiddlelayer/RendererItem;
    if-eqz v2, :cond_4

    .line 561
    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/htc/dlnamiddlelayer/RendererItem;->setThumbIconPath(Ljava/lang/String;)V

    .line 563
    :cond_4
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/DLNAService$ThumbnailThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget v5, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->cookie:I

    iget-object v6, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    iget-object v7, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/dlnamiddlelayer/DLNAService;->rendererThumbnailUpdateMsg(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 566
    .end local v2           #renderer:Lcom/htc/dlnamiddlelayer/RendererItem;
    :pswitch_2
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/DLNAService$ThumbnailThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget v5, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->cookie:I

    iget-object v6, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    iget-object v7, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    iget-object v8, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/dlnamiddlelayer/DLNAService;->contentThumbnailUpdateMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :pswitch_3
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "DMC_THUMBNAIL_UPDATE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/DLNAService$ThumbnailThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget v5, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->cookie:I

    invoke-virtual {v4, v5}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(I)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v1

    .line 573
    .local v1, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-eqz v1, :cond_0

    .line 575
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "DMC_THUMBNAIL_UPDATE send notify"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    iget-object v5, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    iget-object v6, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v6}, Lcom/htc/dlnamiddlelayer/MediaController;->notifyUpdateThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
