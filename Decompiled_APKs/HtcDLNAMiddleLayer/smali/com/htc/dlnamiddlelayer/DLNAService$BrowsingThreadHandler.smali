.class final Lcom/htc/dlnamiddlelayer/DLNAService$BrowsingThreadHandler;
.super Landroid/os/Handler;
.source "DLNAService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/DLNAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BrowsingThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/DLNAService;


# direct methods
.method private constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$BrowsingThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/dlnamiddlelayer/DLNAService;Lcom/htc/dlnamiddlelayer/DLNAService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/DLNAService$BrowsingThreadHandler;-><init>(Lcom/htc/dlnamiddlelayer/DLNAService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 442
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$BrowsingThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mbServiceDestroy:Z
    invoke-static {v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$600(Lcom/htc/dlnamiddlelayer/DLNAService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 445
    :cond_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    .line 446
    .local v9, aItem:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    sget-object v1, Lcom/htc/dlnamiddlelayer/DLNAService$6;->$SwitchMap$com$htc$dlnamiddlelayer$GlobalDataStore$BrowsingReturnType:[I

    iget-object v2, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/GlobalDataStore$BrowsingReturnType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 449
    :pswitch_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$BrowsingThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget v1, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    iget-object v2, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    iget-object v3, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    iget-wide v4, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nFirstIndex:J

    iget-wide v6, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nLastIndex:J

    invoke-virtual/range {v0 .. v7}, Lcom/htc/dlnamiddlelayer/DLNAService;->contentAddedMsg(ILjava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0

    .line 453
    :pswitch_2
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/DLNAService$BrowsingThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget v1, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    iget-object v2, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    iget-object v3, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    iget-wide v4, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nFirstIndex:J

    iget-wide v6, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nLastIndex:J

    iget-boolean v8, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->isComplete:Z

    invoke-virtual/range {v0 .. v8}, Lcom/htc/dlnamiddlelayer/DLNAService;->contentBrowsingDoneMsg(ILjava/lang/String;Ljava/lang/String;JJZ)V

    .line 455
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$BrowsingThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v1

    iget v2, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    iget-object v3, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    iget-object v4, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->isDMCBrowsingRegister(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$BrowsingThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget v2, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(I)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 458
    .local v0, aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-eqz v0, :cond_0

    .line 460
    iget v1, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    iget-object v2, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    iget-object v3, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    iget-wide v4, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nFirstIndex:J

    iget-wide v6, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nLastIndex:J

    invoke-virtual/range {v0 .. v7}, Lcom/htc/dlnamiddlelayer/MediaController;->browsingDoneNotify(ILjava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0

    .line 469
    .end local v0           #aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    :pswitch_3
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$BrowsingThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    #getter for: Lcom/htc/dlnamiddlelayer/DLNAService;->mServerModule:Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
    invoke-static {v1}, Lcom/htc/dlnamiddlelayer/DLNAService;->access$700(Lcom/htc/dlnamiddlelayer/DLNAService;)Lcom/htc/dlnamiddlelayer/ServerControlPointModule;

    move-result-object v1

    iget v2, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    iget-object v3, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    iget-object v4, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->isDMCBrowsingRegister(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/DLNAService$BrowsingThreadHandler;->this$0:Lcom/htc/dlnamiddlelayer/DLNAService;

    iget v2, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/DLNAService;->getMediaController(I)Lcom/htc/dlnamiddlelayer/MediaController;

    move-result-object v0

    .line 472
    .restart local v0       #aMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;
    if-eqz v0, :cond_0

    .line 474
    iget v1, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    iget-object v2, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    iget-object v3, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    iget-wide v4, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nFirstIndex:J

    iget-wide v6, v9, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nLastIndex:J

    invoke-virtual/range {v0 .. v7}, Lcom/htc/dlnamiddlelayer/MediaController;->browsingErrorNotify(ILjava/lang/String;Ljava/lang/String;JJ)V

    goto/16 :goto_0

    .line 446
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
