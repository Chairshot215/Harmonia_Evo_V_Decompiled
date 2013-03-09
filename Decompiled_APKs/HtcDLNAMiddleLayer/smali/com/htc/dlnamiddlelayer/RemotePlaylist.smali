.class public Lcom/htc/dlnamiddlelayer/RemotePlaylist;
.super Lcom/htc/dlnamiddlelayer/PlaylistBase;
.source "RemotePlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamiddlelayer/RemotePlaylist$1;,
        Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;,
        Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;,
        Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;,
        Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;,
        Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;,
        Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;
    }
.end annotation


# static fields
.field protected static BROWSE_DIRECTION_DOWN:I

.field protected static BROWSE_DIRECTION_UP:I


# instance fields
.field protected bInitGenPlaylistThread:Z

.field protected browseCallback:Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;

.field protected genPlaylistThread:Lcom/htc/dlnamiddlelayer/SerialExecutor;

.field protected mBrowseManager:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;

.field protected mList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mQueueIndex:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

.field protected mTmpList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field protected nDirection:I

.field protected nEndIndex:J

.field protected nFilterCapability:I

.field protected nStartIndex:J

.field protected sContainerID:Ljava/lang/String;

.field protected serverObject:Ljava/lang/Object;

.field protected shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->BROWSE_DIRECTION_DOWN:I

    .line 26
    const/4 v0, -0x1

    sput v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->BROWSE_DIRECTION_UP:I

    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPRenderer;Lcom/awox/jUPnPCP/UPnPContentServer;Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;)V
    .locals 6
    .parameter "aRenderer"
    .parameter "aServer"
    .parameter "playlistInfo"
    .parameter "aMediaCtrl"
    .parameter "serviceObj"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 30
    new-instance v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;

    invoke-direct {v0, p0, v1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;-><init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;Lcom/htc/dlnamiddlelayer/RemotePlaylist$1;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mBrowseManager:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    .line 32
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mTmpList:Ljava/util/Vector;

    .line 34
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    .line 35
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->genPlaylistThread:Lcom/htc/dlnamiddlelayer/SerialExecutor;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mQueueIndex:Ljava/util/Vector;

    .line 39
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->browseCallback:Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;

    .line 41
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sContainerID:Ljava/lang/String;

    .line 42
    iput-boolean v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->bInitGenPlaylistThread:Z

    .line 44
    iput v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nFilterCapability:I

    .line 45
    iput-wide v4, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nStartIndex:J

    .line 46
    iput-wide v4, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nEndIndex:J

    .line 47
    sget v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->BROWSE_DIRECTION_DOWN:I

    iput v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nDirection:I

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->serverObject:Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    .line 84
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 85
    iget-object v0, p3, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->containerID:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sContainerID:Ljava/lang/String;

    .line 86
    iget v0, p3, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->filterCapability:I

    iput v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nFilterCapability:I

    .line 87
    iget-wide v0, p3, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->startIndex:J

    iput-wide v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nStartIndex:J

    .line 88
    iget-wide v0, p3, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->endIndex:J

    iput-wide v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nEndIndex:J

    .line 89
    iget v0, p3, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->direction:I

    iput v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nDirection:I

    .line 91
    iput-object p5, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    .line 92
    iput-object p4, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;

    .line 94
    iput v3, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nTotalCount:I

    .line 96
    invoke-virtual {p0, v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->updateListIndex(I)V

    .line 98
    new-instance v0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    invoke-direct {v0}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    .line 100
    new-instance v0, Lcom/htc/dlnamiddlelayer/SerialExecutor;

    invoke-direct {v0}, Lcom/htc/dlnamiddlelayer/SerialExecutor;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->genPlaylistThread:Lcom/htc/dlnamiddlelayer/SerialExecutor;

    .line 101
    new-instance v0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    invoke-direct {v0}, Lcom/htc/dlnamiddlelayer/GenerateShuffle;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    .line 103
    iput-boolean v3, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bRequestItem:Z

    .line 104
    iget-object v0, p3, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->contentID:Ljava/lang/String;

    sget-object v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->READY_TO_PLAY:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->requestBrowse(Ljava/lang/String;ILcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;)V

    .line 106
    sget v0, Lcom/htc/dlnainterface/DLNAResponseCode;->WAITING_SERVER_RESPONSE:I

    invoke-virtual {p0, v0, v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sendNotify(II)V

    .line 107
    return-void
.end method

.method private initPlaylistThread(Ljava/lang/String;)V
    .locals 12
    .parameter "aContentID"

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->hasPlaylistThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v10, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->serverObject:Ljava/lang/Object;

    monitor-enter v10

    .line 344
    :try_start_0
    iget-object v11, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->genPlaylistThread:Lcom/htc/dlnamiddlelayer/SerialExecutor;

    new-instance v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMUDN()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sContainerID:Ljava/lang/String;

    iget-wide v5, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nStartIndex:J

    iget-wide v7, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nEndIndex:J

    iget v9, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nDirection:I

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;-><init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    invoke-virtual {v11, v0}, Lcom/htc/dlnamiddlelayer/SerialExecutor;->addRunnable(Ljava/lang/Runnable;)V

    .line 345
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->genPlaylistThread:Lcom/htc/dlnamiddlelayer/SerialExecutor;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/SerialExecutor;->startThread()V

    .line 348
    :cond_0
    return-void

    .line 345
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public browseResult(Lcom/awox/jUPnPCP/CmdBrowse2;)I
    .locals 11
    .parameter "theCommand"

    .prologue
    .line 205
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mBrowseManager:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMUniqueID()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->getnRemove(J)Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;

    move-result-object v2

    .line 207
    .local v2, item:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;
    if-nez v2, :cond_0

    .line 208
    const/4 v7, 0x0

    .line 273
    :goto_0
    return v7

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->browseTimeoutDisable()V

    .line 212
    const-string v7, "DLNAMiddlelayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "browseResult received: contentID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMItemID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMError()I

    move-result v4

    .line 215
    .local v4, nError:I
    sget v7, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_None:I

    if-eq v4, v7, :cond_1

    .line 217
    const/4 v7, 0x1

    invoke-virtual {p0, v4, v7}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sendNotify(II)V

    .line 219
    const-string v7, "DLNAMiddlelayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemotePlaylist : browseResult: Error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v7, -0x1

    goto :goto_0

    .line 224
    :cond_1
    const-wide/16 v7, 0x0

    invoke-virtual {p1, v7, v8}, Lcom/awox/jUPnPCP/CmdBrowse2;->NewEntryInfo(J)Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v1

    .line 225
    .local v1, entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    const-wide/16 v7, 0x0

    invoke-virtual {p1, v7, v8}, Lcom/awox/jUPnPCP/CmdBrowse2;->NewResourceInfo(J)Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-result-object v5

    .line 227
    .local v5, resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;
    if-nez v5, :cond_2

    .line 229
    const-string v7, "DLNAMiddlelayer"

    const-string v8, "RemotePlaylist : resInfo is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v7, -0x1

    goto :goto_0

    .line 233
    :cond_2
    const/4 v6, 0x0

    .line 235
    .local v6, theBestResourceIndexRet:Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->rendererObject:Ljava/lang/Object;

    monitor-enter v8

    .line 237
    :try_start_0
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v7, :cond_3

    .line 238
    const/4 v7, -0x1

    monitor-exit v8

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 240
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v5}, Lcom/awox/jUPnPCP/CDSResourceInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/awox/jUPnPCP/UPnPRenderer;->GetBestResourceIndex(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)Lcom/awox/jUPnPCP/BestResourceIndexGetResult;

    move-result-object v6

    .line 241
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    if-nez v6, :cond_4

    .line 244
    const/4 v7, -0x1

    goto :goto_0

    .line 246
    :cond_4
    invoke-virtual {v6}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v3

    .line 248
    .local v3, nBestIndex:I
    invoke-virtual {v6}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMfMatchProtocolInfo()Z

    move-result v7

    if-nez v7, :cond_5

    .line 250
    const-string v7, "DLNAMiddlelayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemotePlaylist: DMR capability unable to play :index="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->listIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_5
    if-ltz v3, :cond_7

    .line 255
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bRequestItem:Z

    .line 257
    new-instance v0, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;

    iget v7, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->listIndex:I

    int-to-long v7, v7

    iget-object v9, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->contentID:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v10}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;-><init>(JLjava/lang/String;Landroid/content/Context;)V

    .line 258
    .local v0, cacheItem:Lcom/htc/dlnamiddlelayer/RemoteCacheItem;
    invoke-virtual {v0, v1, v5, v3}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->setEntry_ResInfo(Lcom/awox/jUPnPCP/CDSEntryInfo;Lcom/awox/jUPnPCP/CDSResourceInfo;I)V

    .line 259
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getCurrentPlayIndex()I

    move-result v8

    invoke-virtual {v7, v0, v8}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->add(Lcom/htc/dlnamiddlelayer/CacheItem;I)Z

    .line 260
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getThumbnailFilePath(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;

    .line 261
    iget-boolean v7, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->bInitGenPlaylistThread:Z

    if-nez v7, :cond_6

    .line 263
    iget-object v7, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->contentID:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->initPlaylistThread(Ljava/lang/String;)V

    .line 264
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->bInitGenPlaylistThread:Z

    .line 266
    :cond_6
    const/4 v7, 0x1

    invoke-virtual {p0, v2, v7}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->browseResultAction(Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;Z)V

    .line 273
    .end local v0           #cacheItem:Lcom/htc/dlnamiddlelayer/RemoteCacheItem;
    :goto_1
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 270
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {p0, v2, v7}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->browseResultAction(Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;Z)V

    goto :goto_1
.end method

.method public browseResultAction(Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;Z)V
    .locals 4
    .parameter "item"
    .parameter "bPlayable"

    .prologue
    const/4 v3, 0x0

    .line 279
    if-eqz p2, :cond_2

    .line 281
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->listIndex:I

    if-le v1, v2, :cond_0

    .line 282
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    iget v2, p1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->listIndex:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    const/4 v2, 0x1

    iput v2, v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->nPlayable:I

    .line 284
    :cond_0
    sget-object v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$1;->$SwitchMap$com$htc$dlnamiddlelayer$RemotePlaylist$BrowseResultAction:[I

    iget-object v2, p1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->action:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 336
    :cond_1
    :goto_0
    return-void

    .line 288
    :pswitch_0
    sget v1, Lcom/htc/dlnainterface/DLNAResponseCode;->NOTIFY_SWITCH_ITEM_UPDATE:I

    invoke-virtual {p0, v1, v3}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sendNotify(II)V

    .line 289
    iget v1, p1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->listIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->doQueueBrowse(I)Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    goto :goto_0

    .line 292
    :pswitch_1
    sget v1, Lcom/htc/dlnainterface/DLNAResponseCode;->READY_TO_PLAY:I

    invoke-virtual {p0, v1, v3}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sendNotify(II)V

    goto :goto_0

    .line 295
    :pswitch_2
    iget v1, p1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->listIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->doQueueBrowse(I)Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    move-result-object v1

    sget-object v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;->STATE_QUEFINISH:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    if-ne v1, v2, :cond_1

    .line 296
    sget v1, Lcom/htc/dlnainterface/DLNAResponseCode;->NOTIFY_SWITCH_ITEM_UPDATE:I

    invoke-virtual {p0, v1, v3}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sendNotify(II)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->listIndex:I

    if-le v1, v2, :cond_3

    .line 305
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    iget v2, p1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->listIndex:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iput v3, v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->nPlayable:I

    .line 307
    :cond_3
    const/4 v0, 0x0

    .line 309
    .local v0, browseIndex:I
    sget-object v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$1;->$SwitchMap$com$htc$dlnamiddlelayer$RemotePlaylist$BrowseResultAction:[I

    iget-object v2, p1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->action:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 319
    :pswitch_3
    iget v1, p1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->listIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->doQueueBrowse(I)Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    move-result-object v1

    sget-object v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;->STATE_QUEBROWSING:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    if-eq v1, v2, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->updateListIndex(I)V

    .line 322
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getCurrentPlayIndex()I

    move-result v0

    .line 323
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->sMediaId:Ljava/lang/String;

    sget-object v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->SWITCH_NEXTITEM:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->requestBrowse(Ljava/lang/String;ILcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;)V

    goto :goto_0

    .line 312
    :pswitch_4
    iget v1, p1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->listIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->doQueueBrowse(I)Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    move-result-object v1

    sget-object v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;->STATE_QUEBROWSING:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    if-eq v1, v2, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->updateListIndex(I)V

    .line 315
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getCurrentPlayIndex()I

    move-result v0

    .line 316
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->sMediaId:Ljava/lang/String;

    sget-object v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->SWITCH_PREVITEM:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->requestBrowse(Ljava/lang/String;ILcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;)V

    goto/16 :goto_0

    .line 326
    :pswitch_5
    const/16 v1, -0x134

    invoke-virtual {p0, v1, v3}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sendNotify(II)V

    goto/16 :goto_0

    .line 330
    :pswitch_6
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListNextIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->setListNextIndex(I)V

    .line 331
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getNextPlayIndex()I

    move-result v0

    .line 332
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->sMediaId:Ljava/lang/String;

    sget-object v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->PREPARE_NEXTURI:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->requestBrowse(Ljava/lang/String;ILcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;)V

    goto/16 :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 309
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public browsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 9
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->hasPlaylistThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    iput-wide p5, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nEndIndex:J

    .line 732
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->genPlaylistThread:Lcom/htc/dlnamiddlelayer/SerialExecutor;

    new-instance v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;

    iget-wide v4, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nStartIndex:J

    iget-wide v6, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nEndIndex:J

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;-><init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v8, v0}, Lcom/htc/dlnamiddlelayer/SerialExecutor;->addRunnable(Ljava/lang/Runnable;)V

    .line 733
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->genPlaylistThread:Lcom/htc/dlnamiddlelayer/SerialExecutor;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/SerialExecutor;->startThread()V

    .line 735
    :cond_0
    return-void
.end method

.method public browsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 9
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->hasPlaylistThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iput-wide p5, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nEndIndex:J

    .line 742
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->genPlaylistThread:Lcom/htc/dlnamiddlelayer/SerialExecutor;

    new-instance v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;

    iget-wide v4, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nStartIndex:J

    iget-wide v6, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nEndIndex:J

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;-><init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v8, v0}, Lcom/htc/dlnamiddlelayer/SerialExecutor;->addRunnable(Ljava/lang/Runnable;)V

    .line 743
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->genPlaylistThread:Lcom/htc/dlnamiddlelayer/SerialExecutor;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/SerialExecutor;->startThread()V

    .line 745
    :cond_0
    return-void
.end method

.method public doQueueBrowse(I)Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;
    .locals 6
    .parameter "currentIndex"

    .prologue
    .line 545
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mQueueIndex:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 546
    sget-object v3, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;->STATE_QUEEMPTY:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    .line 575
    :goto_0
    return-object v3

    .line 548
    :cond_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mQueueIndex:Ljava/util/Vector;

    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mQueueIndex:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 549
    .local v2, index:I
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mQueueIndex:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 551
    move v1, v2

    .line 553
    .local v1, browseIndex:I
    iget-boolean v3, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->hasShuffleArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 555
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    aget v1, v3, v2

    .line 558
    :cond_1
    if-ne p1, v1, :cond_2

    .line 560
    sget-object v3, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;->STATE_QUEFINISH:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    goto :goto_0

    .line 565
    :cond_2
    if-le p1, v2, :cond_3

    .line 566
    sget-object v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->SWITCH_PREVITEM:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    .line 571
    .local v0, browseAction:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;
    :goto_1
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iget-object v3, v3, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->sMediaId:Ljava/lang/String;

    invoke-virtual {p0, v3, v1, v0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->requestBrowse(Ljava/lang/String;ILcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;)V

    .line 573
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doQueueBrowse : index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    sget-object v3, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;->STATE_QUEBROWSING:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseQueState;

    goto :goto_0

    .line 568
    .end local v0           #browseAction:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;
    :cond_3
    sget-object v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->SWITCH_NEXTITEM:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    .restart local v0       #browseAction:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;
    goto :goto_1
.end method

.method public genShuffle()V
    .locals 4

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->hasShuffleThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 624
    const/4 v0, 0x1

    .line 625
    .local v0, bInit:Z
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getTotalCount()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    .line 632
    :cond_1
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "genShuffle Thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->cancel()V

    .line 635
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, p0}, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->setShuffleArray([IZILcom/htc/dlnamiddlelayer/PlaylistBase;)V

    .line 636
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->startThread()V

    .line 639
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListNextIndex()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->remove(J)V

    .line 641
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->updateListIndex(I)V

    .line 643
    .end local v0           #bInit:Z
    :cond_2
    return-void
.end method

.method public getBrowsingCB(I)Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;
    .locals 3
    .parameter "cookie"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->browseCallback:Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getServerID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sContainerID:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->browseCallback:Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->browseCallback:Lcom/htc/dlnamiddlelayer/DMCBrowsingCB;

    return-object v0
.end method

.method public getContainerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sContainerID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 163
    const-string v0, ""

    .line 165
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sContainerID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getCurrentPlayIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;
    .locals 5

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getCacheAtIndex(I)Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v0

    .line 399
    .local v0, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-nez v0, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getCurrentPlayIndex()I

    move-result v1

    .line 404
    .local v1, index:I
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mBrowseManager:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mBrowseManager:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;

    invoke-virtual {v2, v1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->isRequestItem(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 409
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iget-object v2, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->sMediaId:Ljava/lang/String;

    sget-object v3, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->READY_TO_PLAY:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    invoke-virtual {p0, v2, v1, v3}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->requestBrowse(Ljava/lang/String;ILcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;)V

    .line 412
    :cond_0
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemotePlaylist : get current item is null , index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v1           #index:I
    :cond_1
    return-object v0
.end method

.method public getCurrentPlayID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getCurrentPlayIndex()I

    move-result v0

    .line 354
    .local v0, i:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->sMediaId:Ljava/lang/String;

    .line 359
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getCurrentPlayIndex()I
    .locals 2

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->hasShuffleArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v1

    aget v0, v0, v1

    .line 373
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v0

    goto :goto_0
.end method

.method public getFilterCapability()I
    .locals 1

    .prologue
    .line 714
    iget v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->nFilterCapability:I

    return v0
.end method

.method public getNextItem()Lcom/htc/dlnamiddlelayer/CacheItem;
    .locals 5

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getTotalCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 421
    const/4 v0, 0x0

    .line 440
    :cond_0
    :goto_0
    return-object v0

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListNextIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getCacheAtIndex(I)Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v0

    .line 425
    .local v0, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-nez v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getNextPlayIndex()I

    move-result v1

    .line 429
    .local v1, index:I
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mBrowseManager:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mBrowseManager:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;

    invoke-virtual {v2, v1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->isRequestItem(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 432
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 434
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iget-object v2, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->sMediaId:Ljava/lang/String;

    sget-object v3, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->PREPARE_NEXTURI:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    invoke-virtual {p0, v2, v1, v3}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->requestBrowse(Ljava/lang/String;ILcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;)V

    .line 437
    :cond_2
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemotePlaylist: next item is null , index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListNextIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNextPlayIndex()I
    .locals 2

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->hasShuffleArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListNextIndex()I

    move-result v1

    aget v0, v0, v1

    .line 384
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListNextIndex()I

    move-result v0

    goto :goto_0
.end method

.method public getServerID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->serverObject:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Server ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMUDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMUDN()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 157
    :goto_0
    return-object v0

    .line 154
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "get Server ID : null "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v0, ""

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getThumbnailFilePath(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;
    .locals 8
    .parameter "cacheItem"

    .prologue
    .line 750
    if-nez p1, :cond_0

    .line 751
    const-string v1, ""

    .line 785
    :goto_0
    return-object v1

    :cond_0
    move-object v7, p1

    .line 755
    check-cast v7, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;

    .line 757
    .local v7, item:Lcom/htc/dlnamiddlelayer/RemoteCacheItem;
    invoke-virtual {v7}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getThumbFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getThumbFilePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_1

    .line 758
    invoke-virtual {v7}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getThumbFilePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 760
    :cond_1
    const/4 v4, 0x0

    .line 762
    .local v4, thumbUri:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-nez v1, :cond_2

    .line 763
    const-string v1, ""

    goto :goto_0

    .line 765
    :cond_2
    const/4 v6, 0x2

    .line 766
    .local v6, group:I
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/MediaController;->getCookie()I

    move-result v1

    if-nez v1, :cond_5

    .line 768
    const/4 v6, 0x2

    .line 769
    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->g_Gallery_DMC_ThumbSize:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getThumbnailURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 777
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 778
    :cond_4
    const-string v1, ""

    goto :goto_0

    .line 771
    :cond_5
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/MediaController;->getCookie()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 773
    const/16 v6, 0x12

    .line 774
    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->g_Music_DMC_AlbumArtSize:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getThumbnailURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 780
    :cond_6
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getThumbnailDownloadThread()Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

    move-result-object v0

    .line 782
    .local v0, mThumbnailThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;
    if-eqz v0, :cond_7

    .line 783
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/MediaController;->getCookie()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getServerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getContentID()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->DMC_THUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->addContentThumbnail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;I)V

    .line 785
    :cond_7
    const-string v1, ""

    goto :goto_0
.end method

.method public hasPlaylistThread()Z
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->genPlaylistThread:Lcom/htc/dlnamiddlelayer/SerialExecutor;

    if-nez v0, :cond_0

    .line 126
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "No Exceutor Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasShuffleThread()Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    if-nez v0, :cond_0

    .line 137
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "No Shuffle Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyShuffleFirstItemReady()V
    .locals 2

    .prologue
    .line 724
    sget v0, Lcom/htc/dlnainterface/DLNAResponseCode;->READY_TO_PLAY:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sendNotify(II)V

    .line 725
    return-void
.end method

.method public notifyShuffleGenerated()V
    .locals 0

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->preGenNextItem()V

    .line 720
    return-void
.end method

.method public declared-synchronized preGenNextItem()V
    .locals 5

    .prologue
    .line 647
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getTotalCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 660
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 650
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListNextIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getCacheAtIndex(I)Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v1

    .line 652
    .local v1, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preGenNextItem: index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListNextIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    if-nez v1, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getNextPlayIndex()I

    move-result v0

    .line 657
    .local v0, browseIndex:I
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iget-object v2, v2, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->sMediaId:Ljava/lang/String;

    sget-object v3, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->PREPARE_NEXTURI:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    invoke-virtual {p0, v2, v0, v3}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->requestBrowse(Ljava/lang/String;ILcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 647
    .end local v0           #browseIndex:I
    .end local v1           #cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public release()V
    .locals 1

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->stopThread()V

    .line 688
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 689
    return-void
.end method

.method public requestBrowse(Ljava/lang/String;ILcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;)V
    .locals 10
    .parameter "contentID"
    .parameter "listIndex"
    .parameter "action"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->serverObject:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    if-nez v0, :cond_0

    .line 182
    const/16 v0, -0x12d

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sendNotify(II)V

    .line 183
    monitor-exit v1

    .line 201
    :goto_0
    return-void

    .line 185
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBrowse : browseIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; contentID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v8, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;-><init>(Lcom/htc/dlnamiddlelayer/RemotePlaylist;Lcom/htc/dlnamiddlelayer/RemotePlaylist$1;)V

    .line 190
    .local v8, item:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;
    iput p2, v8, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->listIndex:I

    .line 191
    iput-object p1, v8, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->contentID:Ljava/lang/String;

    .line 192
    iput-object p3, v8, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->action:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    .line 194
    iget-object v9, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->serverObject:Ljava/lang/Object;

    monitor-enter v9

    .line 196
    :try_start_1
    new-instance v0, Lcom/awox/jUPnPCP/CmdBrowse2;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    sget-object v7, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCmdBrowse_NoFilter:Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJLjava/lang/String;)V

    iput-object v0, v8, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;->cmdBrowse:Lcom/awox/jUPnPCP/CmdBrowse2;

    .line 197
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mBrowseManager:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;

    invoke-virtual {v0, v8}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->add(Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;)Z

    .line 200
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->browseTimeoutEnable()V

    goto :goto_0

    .line 185
    .end local v8           #item:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 197
    .restart local v8       #item:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestItem;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public setItemID(Ljava/lang/String;)Z
    .locals 5
    .parameter "contentID"

    .prologue
    const/4 v2, 0x1

    .line 665
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 667
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->sMediaId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 669
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->get(J)Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v1

    if-nez v1, :cond_0

    .line 671
    iput-boolean v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bRequestItem:Z

    .line 672
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iget-object v1, v1, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->sMediaId:Ljava/lang/String;

    sget-object v3, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->READY_TO_PLAY:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    invoke-virtual {p0, v1, v0, v3}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->requestBrowse(Ljava/lang/String;ILcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;)V

    .line 674
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->updateListIndex(I)V

    .line 676
    iget-boolean v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    if-eqz v1, :cond_1

    .line 677
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->genShuffle()V

    :cond_1
    move v1, v2

    .line 682
    :goto_1
    return v1

    .line 665
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 682
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setRepeatState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 580
    iput p1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->repeatState:I

    .line 582
    iget v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->repeatState:I

    sget-object v1, Lcom/htc/dlnamiddlelayer/RepeatState;->REPEATALL:Lcom/htc/dlnamiddlelayer/RepeatState;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RepeatState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->preGenNextItem()V

    .line 584
    :cond_0
    return-void
.end method

.method public setServer(Lcom/awox/jUPnPCP/UPnPContentServer;)V
    .locals 2
    .parameter "aServer"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->serverObject:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 115
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->setHasDevice(Z)V

    .line 119
    :goto_0
    monitor-exit v1

    .line 120
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->setHasDevice(Z)V

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffle(Z)V
    .locals 3
    .parameter "bShuffleMode"

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    if-ne p1, v0, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 596
    :try_start_0
    iput-boolean p1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    .line 597
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 601
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    if-eqz v0, :cond_2

    .line 602
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->genShuffle()V

    goto :goto_0

    .line 597
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 606
    :cond_2
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->hasShuffleArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->cancel()V

    .line 611
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListNextIndex()I

    move-result v2

    aget v1, v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->remove(J)V

    .line 613
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->updateListIndex(I)V

    .line 614
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->preGenNextItem()V

    goto :goto_0
.end method

.method public stopThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 693
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "stopThread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->hasPlaylistThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 696
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->genPlaylistThread:Lcom/htc/dlnamiddlelayer/SerialExecutor;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/SerialExecutor;->stopThread()V

    .line 698
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->genPlaylistThread:Lcom/htc/dlnamiddlelayer/SerialExecutor;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/SerialExecutor;->getCurrentRunnable()Ljava/lang/Runnable;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;

    .line 699
    .local v0, curRunnable:Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;
    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;->cancel()V

    .line 702
    :cond_0
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->genPlaylistThread:Lcom/htc/dlnamiddlelayer/SerialExecutor;

    .line 705
    .end local v0           #curRunnable:Lcom/htc/dlnamiddlelayer/RemotePlaylist$GenPlaylistRunnable;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->hasShuffleThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 707
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->stopThread()V

    .line 708
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    .line 710
    :cond_2
    return-void
.end method

.method public switchNextItem()Z
    .locals 8

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 447
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getHasDevice()Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v0

    .line 490
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 450
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getTotalCount()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    move v1, v0

    .line 451
    .restart local v1       #bRet:I
    goto :goto_0

    .line 453
    .end local v1           #bRet:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListNextIndex()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->updateListIndex(I)V

    .line 455
    const-string v5, "DLNAMiddlelayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchNextItem : index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getCacheAtIndex(I)Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v3

    .line 459
    .local v3, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-eqz v3, :cond_2

    .line 461
    sget v5, Lcom/htc/dlnainterface/DLNAResponseCode;->NOTIFY_SWITCH_ITEM_UPDATE:I

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sendNotify(II)V

    .line 462
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 490
    .restart local v1       #bRet:I
    goto :goto_0

    .line 466
    .end local v1           #bRet:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v4

    .line 468
    .local v4, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getTotalCount()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 469
    const/4 v4, 0x0

    .line 471
    :cond_3
    move v2, v4

    .line 473
    .local v2, browseIndex:I
    iget-boolean v5, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->hasShuffleArray()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 474
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    aget v2, v5, v4

    .line 476
    :cond_4
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iget v5, v5, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->nPlayable:I

    if-nez v5, :cond_5

    .line 466
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 479
    :cond_5
    invoke-virtual {p0, v4}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->updateListIndex(I)V

    .line 481
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mBrowseManager:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 482
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iget-object v5, v5, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->sMediaId:Ljava/lang/String;

    sget-object v6, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->SWITCH_NEXTITEM:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    invoke-virtual {p0, v5, v2, v6}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->requestBrowse(Ljava/lang/String;ILcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;)V

    goto :goto_1

    .line 484
    :cond_6
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mQueueIndex:Ljava/util/Vector;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public switchPrevItem()V
    .locals 7

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getHasDevice()Z

    move-result v4

    if-nez v4, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getTotalCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v2

    .line 503
    .local v2, curIndex:I
    if-gtz v2, :cond_2

    .line 504
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->updateListIndex(I)V

    .line 508
    :goto_1
    const-string v4, "DLNAMiddlelayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchPrevItem : index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getCacheAtIndex(I)Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v1

    .line 512
    .local v1, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-eqz v1, :cond_3

    .line 514
    sget v4, Lcom/htc/dlnainterface/DLNAResponseCode;->NOTIFY_SWITCH_ITEM_UPDATE:I

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->sendNotify(II)V

    goto :goto_0

    .line 506
    .end local v1           #cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    :cond_2
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->updateListIndex(I)V

    goto :goto_1

    .line 518
    .restart local v1       #cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getListCurIndex()I

    move-result v3

    .line 520
    .local v3, i:I
    :goto_2
    if-gez v3, :cond_4

    .line 521
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getTotalCount()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 523
    :cond_4
    move v0, v3

    .line 525
    .local v0, browseIndex:I
    iget-boolean v4, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->hasShuffleArray()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 526
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    aget v0, v4, v3

    .line 528
    :cond_5
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iget v4, v4, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->nPlayable:I

    if-nez v4, :cond_6

    .line 518
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 531
    :cond_6
    invoke-virtual {p0, v3}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->updateListIndex(I)V

    .line 533
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mBrowseManager:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseRequestManager;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 534
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iget-object v4, v4, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->sMediaId:Ljava/lang/String;

    sget-object v5, Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;->SWITCH_PREVITEM:Lcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;

    invoke-virtual {p0, v4, v0, v5}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->requestBrowse(Ljava/lang/String;ILcom/htc/dlnamiddlelayer/RemotePlaylist$BrowseResultAction;)V

    goto/16 :goto_0

    .line 536
    :cond_7
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mQueueIndex:Ljava/util/Vector;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public updatePlaylist()V
    .locals 10

    .prologue
    .line 791
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mTmpList:Ljava/util/Vector;

    if-nez v6, :cond_1

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mTmpList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v2

    .line 795
    .local v2, count:I
    if-eqz v2, :cond_0

    .line 798
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getCurrentPlayID()Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, contentID:Ljava/lang/String;
    const/4 v5, -0x1

    .line 800
    .local v5, newIndex:I
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->getCurrentPlayIndex()I

    move-result v3

    .line 802
    .local v3, curIndex:I
    if-le v2, v3, :cond_3

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mTmpList:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iget-object v6, v6, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->sMediaId:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 804
    move v5, v3

    .line 818
    :cond_2
    :goto_1
    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 820
    const-string v6, "DLNAMiddlelayer"

    const-string v7, "RemotePlaylist: updatePlaylist : newIndex error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 808
    :cond_3
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v2, :cond_2

    .line 810
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mTmpList:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;

    iget-object v6, v6, Lcom/htc/dlnamiddlelayer/RemotePlaylist$MediaItem;->sMediaId:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 812
    move v5, v4

    .line 813
    goto :goto_1

    .line 808
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 824
    .end local v4           #i:I
    :cond_5
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 827
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    .line 828
    .local v0, bShuffleMode:Z
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    .line 831
    if-eq v5, v3, :cond_6

    .line 833
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    invoke-virtual {v6, v3, v5}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->updateCurrentRemoveOthers(II)V

    .line 834
    invoke-virtual {p0, v5}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->updateListIndex(I)V

    .line 837
    :cond_6
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mTmpList:Ljava/util/Vector;

    iput-object v6, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mList:Ljava/util/Vector;

    .line 838
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->mTmpList:Ljava/util/Vector;

    .line 839
    invoke-virtual {p0, v2}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->setTotalCount(I)V

    .line 840
    const-string v6, "DLNAMiddlelayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemotePlaylist is updated. Count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->genShuffle()V

    .line 844
    :goto_3
    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    .line 845
    monitor-exit v7

    goto/16 :goto_0

    .end local v0           #bShuffleMode:Z
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 843
    .restart local v0       #bShuffleMode:Z
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemotePlaylist;->preGenNextItem()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
