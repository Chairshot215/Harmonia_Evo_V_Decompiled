.class public Lcom/htc/dlnamiddlelayer/BrowseManager;
.super Ljava/lang/Object;
.source "BrowseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;
    }
.end annotation


# instance fields
.field private mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

.field private mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

.field protected mPlayingItemsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/dlnamiddlelayer/LockPlayItems;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadCmdHandle:Landroid/os/Handler;

.field private mbStopBrowseCmdHandleThread:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "aHandle"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    .line 24
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mThreadCmdHandle:Landroid/os/Handler;

    .line 25
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mbStopBrowseCmdHandleThread:Z

    .line 30
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mPlayingItemsMap:Ljava/util/HashMap;

    .line 34
    new-instance v0, Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-direct {v0}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    .line 35
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mThreadCmdHandle:Landroid/os/Handler;

    .line 37
    new-instance v0, Lcom/htc/dlnamiddlelayer/ContentDBController;

    invoke-direct {v0, p1}, Lcom/htc/dlnamiddlelayer/ContentDBController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dlnamiddlelayer/BrowseManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mbStopBrowseCmdHandleThread:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/BrowseCmdList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/dlnamiddlelayer/BrowseManager;)Lcom/htc/dlnamiddlelayer/ContentDBController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dlnamiddlelayer/BrowseManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mThreadCmdHandle:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addBrowseCmd(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJIZI)V
    .locals 14
    .parameter "cookie"
    .parameter "mServer"
    .parameter "sContentID"
    .parameter "nFirstIndex"
    .parameter "nStartIndex"
    .parameter "nCount"
    .parameter "isDown"
    .parameter "nBrowsedCount"

    .prologue
    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, theBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;
    move-wide/from16 v10, p4

    .line 70
    .local v10, firstIndex:J
    if-eqz p9, :cond_1

    .line 72
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    .end local v2           #theBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;
    move/from16 v0, p8

    int-to-long v7, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCmdBrowse_MinimalFilter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "res,upnp:albumArtURI,res@resolution"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v2 .. v9}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJLjava/lang/String;)V

    .line 84
    .restart local v2       #theBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;
    :goto_0
    new-instance v13, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMUniqueID()J

    move-result-wide v3

    invoke-direct {v13, p1, v3, v4}, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;-><init>(IJ)V

    .line 85
    .local v13, thisCommand:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    move-object/from16 v0, p2

    iput-object v0, v13, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mBrowsedServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 86
    invoke-virtual/range {p2 .. p2}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMUDN()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    .line 87
    move-object/from16 v0, p3

    iput-object v0, v13, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    .line 88
    move-wide/from16 v0, p6

    iput-wide v0, v13, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nStartIndex:J

    .line 89
    iput-wide v10, v13, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nFirstIndex:J

    .line 90
    move/from16 v0, p8

    iput v0, v13, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nCount:I

    .line 91
    move/from16 v0, p9

    iput-boolean v0, v13, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->isBrowsingDown:Z

    .line 92
    move/from16 v0, p10

    iput v0, v13, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCount:I

    .line 94
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    monitor-enter v4

    .line 96
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->size()I

    move-result v3

    if-ge v12, v3, :cond_2

    .line 98
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v3, v12}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget v3, v3, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    if-ne p1, v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v3, v12}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 74
    .end local v12           #i:I
    .end local v13           #thisCommand:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    :cond_1
    move/from16 v0, p8

    int-to-long v3, v0

    sub-long v3, p6, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    .line 76
    move/from16 v0, p8

    int-to-long v3, v0

    sub-long v3, p6, v3

    const-wide/16 v5, 0x1

    add-long p6, v3, v5

    .line 77
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    .end local v2           #theBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;
    move/from16 v0, p8

    int-to-long v7, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCmdBrowse_MinimalFilter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "res,upnp:albumArtURI,res@resolution"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v2 .. v9}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJLjava/lang/String;)V

    .restart local v2       #theBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;
    goto/16 :goto_0

    .line 104
    .restart local v12       #i:I
    .restart local v13       #thisCommand:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v3, v13}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->add(Ljava/lang/Object;)Z

    .line 105
    const-string v3, "DLNAMiddlelayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BrowseCmd cookie: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mServer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", container: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", StartIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p6

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", BrowseID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMUniqueID()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", CurCmdSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v6}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/ContentDBController;->stopToClearDB()V

    .line 115
    monitor-exit v4

    .line 116
    .end local v12           #i:I
    .end local v13           #thisCommand:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    :cond_3
    return-void

    .line 115
    .restart local v12       #i:I
    .restart local v13       #thisCommand:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public addLockPlayItems(ILcom/htc/dlnamiddlelayer/LockPlayItems;)Z
    .locals 2
    .parameter "cookie"
    .parameter "playItems"

    .prologue
    .line 827
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mPlayingItemsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    const/4 v0, 0x1

    return v0
.end method

.method public addThreadBrowseCmd(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJIIZ)V
    .locals 13
    .parameter "cookie"
    .parameter "mServer"
    .parameter "sContentID"
    .parameter "nFirstIndex"
    .parameter "nStartIndex"
    .parameter "nCount"
    .parameter "nBrowsedCount"
    .parameter "isDown"

    .prologue
    .line 121
    iget-boolean v3, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mbStopBrowseCmdHandleThread:Z

    if-eqz v3, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    if-eqz p2, :cond_0

    .line 126
    iget-object v12, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    monitor-enter v12

    .line 128
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->size()I

    move-result v3

    if-ge v10, v3, :cond_5

    .line 130
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v3, v10}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget v3, v3, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCookie:I

    if-ne p1, v3, :cond_2

    .line 132
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v3, v10}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mBrowsedServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v3, v10}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v3, v10}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->remove(I)Ljava/lang/Object;

    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, theBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;
    if-eqz p10, :cond_3

    .line 141
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    .end local v2           #theBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;
    move/from16 v0, p8

    int-to-long v7, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCmdBrowse_MinimalFilter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "res,upnp:albumArtURI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v2 .. v9}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJLjava/lang/String;)V

    .line 153
    .restart local v2       #theBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;
    :goto_2
    new-instance v11, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMUniqueID()J

    move-result-wide v3

    invoke-direct {v11, p1, v3, v4}, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;-><init>(IJ)V

    .line 154
    .local v11, thisCommand:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    iput-object p2, v11, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mBrowsedServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 155
    invoke-virtual {p2}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMUDN()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->mServerID:Ljava/lang/String;

    .line 156
    move-object/from16 v0, p3

    iput-object v0, v11, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->sBrowsedID:Ljava/lang/String;

    .line 157
    move-wide/from16 v0, p6

    iput-wide v0, v11, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nStartIndex:J

    .line 158
    move-wide/from16 v0, p4

    iput-wide v0, v11, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nFirstIndex:J

    .line 159
    move/from16 v0, p8

    iput v0, v11, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nCount:I

    .line 160
    move/from16 v0, p10

    iput-boolean v0, v11, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->isBrowsingDown:Z

    .line 161
    move/from16 v0, p9

    iput v0, v11, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;->nBrowsedCount:I

    .line 163
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v3, v11}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->add(Ljava/lang/Object;)Z

    .line 164
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ThreadBrowseCmd cookie: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mServer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", container: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", FirstIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", StartIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CurCmdSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v2           #theBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;
    .end local v11           #thisCommand:Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 145
    .restart local v2       #theBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;
    :cond_3
    const-wide/16 v3, 0x0

    cmp-long v3, p6, v3

    if-gez v3, :cond_4

    .line 147
    move/from16 v0, p8

    int-to-long v3, v0

    add-long v3, v3, p6

    long-to-int v0, v3

    move/from16 p8, v0

    .line 148
    const-wide/16 p6, 0x0

    .line 150
    :cond_4
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    .end local v2           #theBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;
    move/from16 v0, p8

    int-to-long v7, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCmdBrowse_MinimalFilter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "res,upnp:albumArtURI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v2 .. v9}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJLjava/lang/String;)V

    .restart local v2       #theBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;
    goto/16 :goto_2

    .line 177
    .end local v2           #theBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;
    :cond_5
    monitor-exit v12

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public browseCancel(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)V
    .locals 1
    .parameter "cookie"
    .parameter "mServer"
    .parameter "sContentID"

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/BrowseManager;->getCmdListSize()I

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/dlnamiddlelayer/BrowseManager;->removeFromCmdList(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)Z

    .line 186
    :cond_0
    return-void
.end method

.method public checkIfSupportedMimeType(ILjava/lang/String;)Z
    .locals 5
    .parameter "fileType"
    .parameter "mime"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 768
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    .line 770
    const-string v3, "audio/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 772
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_AUDIO_MIMETYPES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_9

    .line 774
    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_AUDIO_MIMETYPES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 822
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v1

    .line 772
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 780
    .end local v0           #i:I
    :cond_2
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Strange MIME type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 784
    :cond_3
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_5

    .line 786
    const-string v3, "image/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 788
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_IMAGE_MIMETYPES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_9

    .line 790
    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_IMAGE_MIMETYPES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 796
    .end local v0           #i:I
    :cond_4
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Strange MIME type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 800
    :cond_5
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_9

    .line 802
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->UNSUPPORTED_VIDEO_MIMETYPES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 804
    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->UNSUPPORTED_VIDEO_MIMETYPES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    .line 805
    goto :goto_1

    .line 802
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 807
    :cond_7
    const-string v3, "video/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 809
    const/4 v0, 0x0

    :goto_4
    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_VIDEO_MIMETYPES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_9

    .line 811
    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->SUPPORTED_VIDEO_MIMETYPES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 817
    :cond_8
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Strange MIME type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0           #i:I
    :cond_9
    move v1, v2

    .line 822
    goto/16 :goto_1
.end method

.method public getCmdList(I)Lcom/htc/dlnamiddlelayer/BrowseCmdItem;
    .locals 2
    .parameter "index"

    .prologue
    .line 51
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/BrowseCmdItem;

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCmdListSize()I
    .locals 2

    .prologue
    .line 43
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleBrowseResult(JLcom/awox/jUPnPCP/CmdBrowse2;)V
    .locals 1
    .parameter "uniqueID"
    .parameter "theCommand"

    .prologue
    .line 206
    new-instance v0, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;-><init>(Lcom/htc/dlnamiddlelayer/BrowseManager;JLcom/awox/jUPnPCP/CmdBrowse2;)V

    .line 207
    .local v0, mBrowseHandlerThread:Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/BrowseManager$BrowseCmdHandleThread;->start()V

    .line 208
    return-void
.end method

.method public isBrowseCmdExist(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "cookie"
    .parameter "serverID"
    .parameter "container"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->isBrowsingCmdExist(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeFromCmdList(J)V
    .locals 2
    .parameter "uniqueUID"

    .prologue
    .line 190
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    monitor-enter v1

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v0, p1, p2}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->remove(J)V

    .line 193
    monitor-exit v1

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeFromCmdList(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)Z
    .locals 2
    .parameter "cookie"
    .parameter "server"
    .parameter "contentID"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->remove(ILcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serverRemovedNotify(Ljava/lang/String;)V
    .locals 2
    .parameter "serverID"

    .prologue
    .line 834
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    monitor-enter v1

    .line 836
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mCurrentCmdList:Lcom/htc/dlnamiddlelayer/BrowseCmdList;

    invoke-virtual {v0, p1}, Lcom/htc/dlnamiddlelayer/BrowseCmdList;->removeDueToNoServer(Ljava/lang/String;)V

    .line 837
    monitor-exit v1

    .line 838
    return-void

    .line 837
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopBrowseCmdHandleThread(Z)V
    .locals 0
    .parameter "bStop"

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/htc/dlnamiddlelayer/BrowseManager;->mbStopBrowseCmdHandleThread:Z

    .line 213
    return-void
.end method
