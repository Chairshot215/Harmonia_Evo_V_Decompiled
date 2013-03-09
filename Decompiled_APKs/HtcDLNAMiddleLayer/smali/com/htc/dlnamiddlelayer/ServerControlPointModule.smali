.class public Lcom/htc/dlnamiddlelayer/ServerControlPointModule;
.super Ljava/lang/Object;
.source "ServerControlPointModule.java"

# interfaces
.implements Lcom/htc/dlnamiddlelayer/IHandleUPnPCommand;


# instance fields
.field private mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

.field private mCallbackNotify:Lcom/htc/dlnamiddlelayer/IServerCommandNotify;

.field private mContext:Landroid/content/Context;

.field private mDMCBrowsingCB:Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;

.field private mFileFormatController:Lcom/htc/dlnamiddlelayer/FileFormatController;

.field private mGetItemDetails:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/dlnamiddlelayer/BrowseCmdItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyController:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/dlnamiddlelayer/IServerNotifyController;",
            ">;"
        }
    .end annotation
.end field

.field private mServerModule:Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;

.field private mServersList:Lcom/htc/dlnamiddlelayer/ServersList;

.field private mThumbnailCmd:Lcom/htc/dlnamiddlelayer/IThumbnailCommand;

.field private mbStopHandleBrowseMsg:Z

.field private sClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;Lcom/htc/dlnamiddlelayer/IServerCommandNotify;Lcom/htc/dlnamiddlelayer/IThumbnailCommand;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "aStackMgr"
    .parameter "aCallbackNotify"
    .parameter "aThumbCmd"
    .parameter "context"
    .parameter "aHandle"

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "ServerModule"

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->sClassName:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mServerModule:Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;

    .line 34
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mServersList:Lcom/htc/dlnamiddlelayer/ServersList;

    .line 35
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mCallbackNotify:Lcom/htc/dlnamiddlelayer/IServerCommandNotify;

    .line 36
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    .line 37
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mThumbnailCmd:Lcom/htc/dlnamiddlelayer/IThumbnailCommand;

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    .line 39
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mDMCBrowsingCB:Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    .line 41
    new-instance v0, Lcom/htc/dlnamiddlelayer/FileFormatController;

    invoke-direct {v0}, Lcom/htc/dlnamiddlelayer/FileFormatController;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mFileFormatController:Lcom/htc/dlnamiddlelayer/FileFormatController;

    .line 42
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mContext:Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mbStopHandleBrowseMsg:Z

    .line 49
    invoke-virtual {p1, p0}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->registerCommandHandler(Lcom/htc/dlnamiddlelayer/IHandleUPnPCommand;)V

    .line 51
    new-instance v0, Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;

    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->getStack()Lcom/awox/jUPnPCP/UPnPStack;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;-><init>(Lcom/awox/jUPnPCP/UPnPStack;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mServerModule:Lcom/awox/jUPnPCP/UPnPContentServerControlPointModule;

    .line 52
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mCallbackNotify:Lcom/htc/dlnamiddlelayer/IServerCommandNotify;

    .line 53
    iput-object p3, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mThumbnailCmd:Lcom/htc/dlnamiddlelayer/IThumbnailCommand;

    .line 54
    new-instance v0, Lcom/htc/dlnamiddlelayer/BrowseManager;

    invoke-direct {v0, p4, p5}, Lcom/htc/dlnamiddlelayer/BrowseManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    .line 57
    new-instance v0, Lcom/htc/dlnamiddlelayer/ServersList;

    invoke-direct {v0}, Lcom/htc/dlnamiddlelayer/ServersList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mServersList:Lcom/htc/dlnamiddlelayer/ServersList;

    .line 58
    new-instance v0, Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;

    invoke-direct {v0}, Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mDMCBrowsingCB:Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;

    .line 60
    iput-object p4, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mContext:Landroid/content/Context;

    .line 62
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->sClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method private clearServersList()V
    .locals 1

    .prologue
    .line 299
    monitor-enter p0

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mServersList:Lcom/htc/dlnamiddlelayer/ServersList;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/ServersList;->clear()V

    .line 302
    monitor-exit p0

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCloneServersList()Lcom/htc/dlnamiddlelayer/ServersList;
    .locals 1

    .prologue
    .line 279
    monitor-enter p0

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mServersList:Lcom/htc/dlnamiddlelayer/ServersList;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/ServersList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/ServersList;

    monitor-exit p0

    return-object v0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addLockPlayItems(ILcom/htc/dlnamiddlelayer/LockPlayItems;)Z
    .locals 1
    .parameter "cookie"
    .parameter "playItems"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    if-nez v0, :cond_0

    .line 420
    const/4 v0, 0x0

    .line 422
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dlnamiddlelayer/BrowseManager;->addLockPlayItems(ILcom/htc/dlnamiddlelayer/LockPlayItems;)Z

    move-result v0

    goto :goto_0
.end method

.method public browse(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JIZ)V
    .locals 19
    .parameter "cookie"
    .parameter "mServer"
    .parameter "sContentID"
    .parameter "nStartIndex"
    .parameter "nCount"
    .parameter "isDown"

    .prologue
    .line 336
    if-nez p7, :cond_0

    move/from16 v0, p6

    int-to-long v1, v0

    sub-long v1, p4, v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 338
    const/16 v7, -0x1f8

    .line 339
    .local v7, nErr:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mCallbackNotify:Lcom/htc/dlnamiddlelayer/IServerCommandNotify;

    invoke-virtual/range {p2 .. p2}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMUDN()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mContext:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->UPnPErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move/from16 v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    invoke-interface/range {v1 .. v8}, Lcom/htc/dlnamiddlelayer/IServerCommandNotify;->contentBrowsingErrorMsg(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 344
    .end local v7           #nErr:I
    :goto_0
    return-void

    .line 343
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    const/16 v18, 0x0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-wide/from16 v12, p4

    move-wide/from16 v14, p4

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-virtual/range {v8 .. v18}, Lcom/htc/dlnamiddlelayer/BrowseManager;->addBrowseCmd(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJIZI)V

    goto :goto_0
.end method

.method public browseCancel(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;J)V
    .locals 1
    .parameter "cookie"
    .parameter "mServer"
    .parameter "sContentID"
    .parameter "startIndex"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->browseCancel(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public continueBrowseDown(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJII)V
    .locals 11
    .parameter "cookie"
    .parameter "mServer"
    .parameter "sContentID"
    .parameter "nFirstIndex"
    .parameter "nStartIndex"
    .parameter "nCount"
    .parameter "nBrowsedCount"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    const/4 v9, 0x1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/htc/dlnamiddlelayer/BrowseManager;->addBrowseCmd(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJIZI)V

    .line 349
    return-void
.end method

.method public getItemDetail(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)V
    .locals 9
    .parameter "cookie"
    .parameter "mServer"
    .parameter "sContentID"

    .prologue
    const-wide/16 v3, 0x0

    .line 353
    new-instance v0, Lcom/awox/jUPnPCP/CmdBrowse2;

    sget-object v7, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCmdBrowse_NoFilter:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p3

    move-wide v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJLjava/lang/String;)V

    .line 354
    .local v0, theBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;
    new-instance v8, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMUniqueID()J

    move-result-wide v1

    invoke-direct {v8, p1, v1, v2}, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;-><init>(IJ)V

    .line 355
    .local v8, thisCommand:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    iput-object p2, v8, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mBrowsedServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 356
    invoke-virtual {p2}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMUDN()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    .line 357
    iput-object p3, v8, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    .line 358
    iput-wide v3, v8, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nFirstIndex:J

    .line 359
    iput-wide v3, v8, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nStartIndex:J

    .line 360
    const/4 v1, 0x0

    iput v1, v8, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nCount:I

    .line 362
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "getItemDetail add in Queue"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    monitor-enter v2

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    invoke-virtual {v1, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 366
    monitor-exit v2

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServerItem(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/ServerItem;
    .locals 1
    .parameter "serverID"

    .prologue
    .line 317
    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mServersList:Lcom/htc/dlnamiddlelayer/ServersList;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/ServersList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mServersList:Lcom/htc/dlnamiddlelayer/ServersList;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/ServersList;->getServerItem(Ljava/lang/String;)Lcom/htc/dlnamiddlelayer/ServerItem;

    move-result-object v0

    monitor-exit p0

    .line 323
    :goto_0
    return-object v0

    .line 321
    :cond_0
    monitor-exit p0

    .line 323
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getServersListSize()I
    .locals 1

    .prologue
    .line 328
    monitor-enter p0

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mServersList:Lcom/htc/dlnamiddlelayer/ServersList;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/ServersList;->size()I

    move-result v0

    monitor-exit p0

    return v0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUPnPServer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPContentServer;
    .locals 1
    .parameter "serverID"

    .prologue
    .line 307
    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mServersList:Lcom/htc/dlnamiddlelayer/ServersList;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/ServersList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mServersList:Lcom/htc/dlnamiddlelayer/ServersList;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/ServersList;->getUPnPServer(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPContentServer;

    move-result-object v0

    monitor-exit p0

    .line 312
    :goto_0
    return-object v0

    .line 311
    :cond_0
    monitor-exit p0

    .line 312
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBrowsingCmdExist(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "cookie"
    .parameter "serverID"
    .parameter "container"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->isBrowseCmdExist(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDMCBrowsingRegister(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "cookie"
    .parameter "serverID"
    .parameter "container"

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mDMCBrowsingCB:Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v2

    .line 137
    :cond_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 140
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mDMCBrowsingCB:Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mDMCBrowsingCB:Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;

    invoke-virtual {v3, v1}, Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;

    .line 143
    .local v0, cb:Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;->getCookie()I

    move-result v3

    if-ne v3, p1, :cond_2

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;->getServerID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;->getConatiner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    const/4 v2, 0x1

    goto :goto_0

    .line 140
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public iterate(Lcom/htc/dlnamiddlelayer/ListIterator;)V
    .locals 4
    .parameter "listIterator"

    .prologue
    .line 287
    if-nez p1, :cond_1

    .line 295
    :cond_0
    return-void

    .line 290
    :cond_1
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->getCloneServersList()Lcom/htc/dlnamiddlelayer/ServersList;

    move-result-object v0

    .line 291
    .local v0, cloneList:Lcom/htc/dlnamiddlelayer/ServersList;
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/ServersList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnamiddlelayer/ServerItem;

    .line 293
    .local v2, item:Lcom/htc/dlnamiddlelayer/ServerItem;
    invoke-interface {p1, v2}, Lcom/htc/dlnamiddlelayer/ListIterator;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onHandleCommand(Lcom/awox/jUPnPCP/UPnPCommand;)Z
    .locals 17
    .parameter "aCommand"

    .prologue
    .line 155
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    if-eqz v1, :cond_0

    move-object/from16 v12, p1

    .line 157
    check-cast v12, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    .line 158
    .local v12, theCommand:Lcom/awox/jUPnPCP/CmdContentServerAdded;
    invoke-virtual {v12}, Lcom/awox/jUPnPCP/CmdContentServerAdded;->getMContentServer()Lcom/awox/jUPnPCP/UPnPContentServer;

    move-result-object v13

    .line 159
    .local v13, theServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    invoke-virtual {v13}, Lcom/awox/jUPnPCP/UPnPContentServer;->SubscribeToEvents()Lcom/awox/jUPnPCP/CmdDeviceSubscribe;

    .line 160
    monitor-enter p0

    .line 162
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mServersList:Lcom/htc/dlnamiddlelayer/ServersList;

    invoke-virtual {v1, v13}, Lcom/htc/dlnamiddlelayer/ServersList;->add(Lcom/awox/jUPnPCP/UPnPContentServer;)Z

    .line 163
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mCallbackNotify:Lcom/htc/dlnamiddlelayer/IServerCommandNotify;

    invoke-virtual {v13}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMUDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnamiddlelayer/IServerCommandNotify;->serverAddedMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mThumbnailCmd:Lcom/htc/dlnamiddlelayer/IThumbnailCommand;

    const/16 v2, 0xff

    invoke-virtual {v13}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMUDN()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnamiddlelayer/IThumbnailCommand;->getServerThumbItem(ILjava/lang/String;)V

    .line 167
    const/4 v1, 0x1

    .line 274
    .end local v12           #theCommand:Lcom/awox/jUPnPCP/CmdContentServerAdded;
    .end local v13           #theServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    :goto_0
    return v1

    .line 163
    .restart local v12       #theCommand:Lcom/awox/jUPnPCP/CmdContentServerAdded;
    .restart local v13       #theServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 169
    .end local v12           #theCommand:Lcom/awox/jUPnPCP/CmdContentServerAdded;
    .end local v13           #theServer:Lcom/awox/jUPnPCP/UPnPContentServer;
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    if-eqz v1, :cond_2

    move-object/from16 v12, p1

    .line 171
    check-cast v12, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    .line 172
    .local v12, theCommand:Lcom/awox/jUPnPCP/CmdContentServerRemoved;
    invoke-virtual {v12}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;->getMDevice()Lcom/awox/jUPnPCP/UPnPDeviceBase;

    move-result-object v13

    .line 173
    .local v13, theServer:Lcom/awox/jUPnPCP/UPnPDeviceBase;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mCallbackNotify:Lcom/htc/dlnamiddlelayer/IServerCommandNotify;

    invoke-virtual {v13}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getMUDN()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/htc/dlnamiddlelayer/IServerCommandNotify;->serverRemovedMsg(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    invoke-virtual {v13}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getMUDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/BrowseManager;->serverRemovedNotify(Ljava/lang/String;)V

    .line 175
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v10, v1, :cond_1

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/IServerNotifyController;

    invoke-virtual {v13}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getMUDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;->getMRemovalReason()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnamiddlelayer/IServerNotifyController;->serverRemovedMsg(Ljava/lang/String;I)V

    .line 175
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 179
    :cond_1
    monitor-enter p0

    .line 181
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mServersList:Lcom/htc/dlnamiddlelayer/ServersList;

    invoke-virtual {v1, v13}, Lcom/htc/dlnamiddlelayer/ServersList;->remove(Lcom/awox/jUPnPCP/UPnPDeviceBase;)V

    .line 182
    monitor-exit p0

    .line 183
    const/4 v1, 0x1

    goto :goto_0

    .line 182
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 185
    .end local v10           #i:I
    .end local v12           #theCommand:Lcom/awox/jUPnPCP/CmdContentServerRemoved;
    .end local v13           #theServer:Lcom/awox/jUPnPCP/UPnPDeviceBase;
    :cond_2
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    if-eqz v1, :cond_3

    move-object/from16 v12, p1

    .line 187
    check-cast v12, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    .line 188
    .local v12, theCommand:Lcom/awox/jUPnPCP/CmdContentServerUpdated;
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->sClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Updated container: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;->getMContainerUpdateIDs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 191
    .end local v12           #theCommand:Lcom/awox/jUPnPCP/CmdContentServerUpdated;
    :cond_3
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/awox/jUPnPCP/CmdBrowse2;

    if-eqz v1, :cond_d

    .line 193
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mbStopHandleBrowseMsg:Z

    if-eqz v1, :cond_4

    .line 194
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v12, p1

    .line 196
    check-cast v12, Lcom/awox/jUPnPCP/CmdBrowse2;

    .line 198
    .local v12, theCommand:Lcom/awox/jUPnPCP/CmdBrowse2;
    invoke-virtual {v12}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMError()I

    move-result v7

    .line 200
    .local v7, nError:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/BrowseManager;->getCmdListSize()I

    move-result v1

    if-eqz v1, :cond_8

    .line 202
    const/4 v14, 0x0

    .line 203
    .local v14, thisCmdIndex:I
    const/4 v15, 0x0

    .line 205
    .local v15, thisCmdItem:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/BrowseManager;->getCmdListSize()I

    move-result v1

    if-ge v14, v1, :cond_6

    .line 206
    invoke-virtual {v12}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMUniqueID()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    invoke-virtual {v3, v14}, Lcom/htc/dlnamiddlelayer/BrowseManager;->getCmdList(I)Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->lBrowseUniqueID:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    invoke-virtual {v1, v14}, Lcom/htc/dlnamiddlelayer/BrowseManager;->getCmdList(I)Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    move-result-object v15

    .line 205
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 209
    :cond_6
    if-eqz v15, :cond_8

    .line 211
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_None:I

    if-eq v7, v1, :cond_7

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mCallbackNotify:Lcom/htc/dlnamiddlelayer/IServerCommandNotify;

    iget v2, v15, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    iget-object v3, v15, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    iget-object v4, v15, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    iget-wide v5, v15, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nFirstIndex:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->UPnPErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Lcom/htc/dlnamiddlelayer/IServerCommandNotify;->contentBrowsingErrorMsg(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    iget v2, v15, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    iget-object v3, v15, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mBrowsedServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    iget-object v4, v15, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/dlnamiddlelayer/BrowseManager;->removeFromCmdList(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)Z

    .line 217
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->UPnPErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 222
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    invoke-virtual {v12}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMUniqueID()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v12}, Lcom/htc/dlnamiddlelayer/BrowseManager;->handleBrowseResult(JLcom/awox/jUPnPCP/CmdBrowse2;)V

    .line 223
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 228
    .end local v14           #thisCmdIndex:I
    .end local v15           #thisCmdItem:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 230
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {v12}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMResultCount()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_b

    .line 232
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v10, v1, :cond_b

    .line 234
    invoke-virtual {v12}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMUniqueID()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget-wide v4, v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->lBrowseUniqueID:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_a

    .line 236
    sget v1, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_None:I

    if-ne v7, v1, :cond_9

    .line 238
    new-instance v11, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2, v3, v1, v4}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;-><init>(JLjava/lang/String;Landroid/content/Context;)V

    .line 239
    .local v11, mItem:Lcom/htc/dlnamiddlelayer/RemoteCacheItem;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->parseItemDetail(Lcom/awox/jUPnPCP/CmdBrowse2;Lcom/htc/dlnamiddlelayer/RemoteCacheItem;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v9

    .line 241
    .local v9, details:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mCallbackNotify:Lcom/htc/dlnamiddlelayer/IServerCommandNotify;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget v3, v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget-object v4, v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v1, v9}, Lcom/htc/dlnamiddlelayer/IServerCommandNotify;->getContentDetailsMsg(ILjava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 256
    .end local v9           #details:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .end local v11           #mItem:Lcom/htc/dlnamiddlelayer/RemoteCacheItem;
    :goto_4
    const/4 v1, 0x1

    monitor-exit v16

    goto/16 :goto_0

    .line 260
    .end local v10           #i:I
    :catchall_2
    move-exception v1

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 248
    .restart local v10       #i:I
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mCallbackNotify:Lcom/htc/dlnamiddlelayer/IServerCommandNotify;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget v2, v2, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    invoke-virtual {v3, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    invoke-virtual {v4, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget-object v4, v4, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    invoke-virtual {v5, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget-wide v5, v5, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nFirstIndex:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->UPnPErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Lcom/htc/dlnamiddlelayer/IServerCommandNotify;->contentBrowsingErrorMsg(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mGetItemDetails:Ljava/util/LinkedList;

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 254
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/htc/dlnamiddlelayer/ConvertIDToString;->UPnPErrorReason(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 232
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 260
    .end local v10           #i:I
    :cond_b
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 262
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v10, v1, :cond_d

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v1, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/IServerNotifyController;

    invoke-interface {v1, v12}, Lcom/htc/dlnamiddlelayer/IServerNotifyController;->serverBrowseResult(Lcom/awox/jUPnPCP/CmdBrowse2;)I

    move-result v1

    if-eqz v1, :cond_c

    .line 269
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 262
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 274
    .end local v7           #nError:I
    .end local v10           #i:I
    .end local v12           #theCommand:Lcom/awox/jUPnPCP/CmdBrowse2;
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public parseItemDetail(Lcom/awox/jUPnPCP/CmdBrowse2;Lcom/htc/dlnamiddlelayer/RemoteCacheItem;)Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 9
    .parameter "theCommand"
    .parameter "mItem"

    .prologue
    const-wide/16 v7, 0x0

    .line 370
    invoke-virtual {p1, v7, v8}, Lcom/awox/jUPnPCP/CmdBrowse2;->NewEntryInfo(J)Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v2

    .line 371
    .local v2, theEntryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    invoke-virtual {p1, v7, v8}, Lcom/awox/jUPnPCP/CmdBrowse2;->NewResourceInfo(J)Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-result-object v3

    .line 372
    .local v3, theResInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;
    new-instance v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAContentItemDetails;-><init>()V

    .line 374
    .local v0, details:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v3, v4}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->setEntry_ResInfo(Lcom/awox/jUPnPCP/CDSEntryInfo;Lcom/awox/jUPnPCP/CDSResourceInfo;I)V

    .line 375
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mFileFormatController:Lcom/htc/dlnamiddlelayer/FileFormatController;

    sget v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSResourceInfo_URI:I

    int-to-long v5, v5

    invoke-virtual {v3, v7, v8, v5, v6}, Lcom/awox/jUPnPCP/CDSResourceInfo;->GetInfoAsCString(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/dlnamiddlelayer/FileFormatController;->checkFileFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, format:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentTitle:Ljava/lang/String;

    .line 378
    invoke-virtual {p2}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getArtist()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentArtist:Ljava/lang/String;

    .line 379
    invoke-virtual {p2}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getAlbum()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentAlbum:Ljava/lang/String;

    .line 380
    invoke-virtual {p2}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getDate()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDate:Ljava/lang/String;

    .line 381
    invoke-virtual {p2}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getGenre()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentGenre:Ljava/lang/String;

    .line 382
    invoke-virtual {p2}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getComposer()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentComposer:Ljava/lang/String;

    .line 383
    invoke-virtual {p2}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getResolution()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentResolution:Ljava/lang/String;

    .line 384
    invoke-virtual {p2}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentType:Ljava/lang/String;

    .line 385
    invoke-virtual {p2}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getSize()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentSize:J

    .line 386
    invoke-virtual {p2}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getBitRate()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentBitRate:J

    .line 387
    invoke-virtual {p2}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getDuration()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentDuration:J

    .line 388
    iput-wide v7, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentFps:J

    .line 389
    const-string v4, ""

    iput-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->contentPath:Ljava/lang/String;

    .line 390
    invoke-virtual {p2}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getFileName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    .line 391
    const-string v4, ""

    iput-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->nameDMS:Ljava/lang/String;

    .line 392
    if-eqz v1, :cond_0

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/dlnainterface/DLNAContentItemDetails;->fileName:Ljava/lang/String;

    .line 395
    :cond_0
    return-object v0
.end method

.method public registerCallback(Lcom/htc/dlnamiddlelayer/IServerNotifyController;)V
    .locals 4
    .parameter "aCallback"

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 69
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->sClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Callback to register is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 72
    .local v0, index:I
    if-gez v0, :cond_1

    .line 74
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->sClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": registerCallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    return-void
.end method

.method public registerDMCBrowsingCB(Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;)Z
    .locals 5
    .parameter "cb"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, ret:Z
    if-nez p1, :cond_0

    .line 101
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Callback to registerDMCBrowseCB is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return v0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    iget v2, p1, Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;->mCookie:I

    iget-object v3, p1, Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;->mServerID:Ljava/lang/String;

    iget-object v4, p1, Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;->mContainer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/dlnamiddlelayer/BrowseManager;->isBrowseCmdExist(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mDMCBrowsingCB:Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;

    invoke-virtual {v1, p1}, Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_1
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "There\'s no corresponding command in browsing queue."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopHandleBrowseMessage(Z)V
    .locals 3
    .parameter "bStop"

    .prologue
    .line 410
    iput-boolean p1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mbStopHandleBrowseMsg:Z

    .line 412
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mBrowseManager:Lcom/htc/dlnamiddlelayer/BrowseManager;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/BrowseManager;->stopBrowseCmdHandleThread(Z)V

    .line 414
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopHandleBrowseMessage : bStop :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method public unRegisterCallback(Lcom/htc/dlnamiddlelayer/IServerNotifyController;)V
    .locals 4
    .parameter "aCallback"

    .prologue
    .line 81
    if-nez p1, :cond_1

    .line 83
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->sClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Callback to unregister is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 88
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mNotifyController:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 91
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->sClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unRegisterCallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unRegisterDMCBrowsingCB(Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 118
    if-nez p1, :cond_1

    .line 120
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Callback to unregisterDMCBrowseCB is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mDMCBrowsingCB:Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;

    invoke-virtual {v1, p1}, Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 125
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ServerControlPointModule;->mDMCBrowsingCB:Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;

    invoke-virtual {v1, v0}, Lcom/htc/dlnamiddlelayer/DMCBrowsingCBList;->remove(I)Ljava/lang/Object;

    .line 128
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "unregisterDMCBrowseCB success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
