.class final Lcom/htc/dlnamiddlelayer/DLNAService$ImageThreadHandler;
.super Landroid/os/Handler;
.source "DLNAService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/DLNAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImageThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/DLNAService;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$ImageThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;Lcom/htc/dlnamiddlelayer/DLNAService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/DLNAService$ImageThreadHandler;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 487
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$ImageThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mbServiceDestroy:Z
    invoke-static {v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$600(Lcom/htc/dlnamiddlelayer/DLNAService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    .line 491
    .local v0, aItem:Lcom/htc/dlnamiddlelayer/DownloadItemInfo;
    sget-object v1, Lcom/htc/dlnamiddlelayer/DLNAService$6;->$SwitchMap$com$htc$dlnamiddlelayer$GlobalDataStore$ImageReturnType:[I

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImageReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 494
    :pswitch_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$ImageThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->cookie:I

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    iget-object v5, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/dlnamiddlelayer/DLNAService;->imageDownloadedMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :pswitch_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$ImageThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->cookie:I

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    iget-object v5, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/dlnamiddlelayer/DLNAService;->albumArtDownloadedMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 491
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
