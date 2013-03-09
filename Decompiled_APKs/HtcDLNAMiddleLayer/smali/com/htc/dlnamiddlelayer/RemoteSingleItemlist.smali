.class public Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;
.super Lcom/htc/dlnamiddlelayer/PlaylistBase;
.source "RemoteSingleItemlist.java"


# instance fields
.field protected mCacheItem:Lcom/htc/dlnamiddlelayer/RemoteCacheItem;

.field protected mLastCommand:Lcom/awox/jUPnPCP/CmdBrowse2;

.field protected mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

.field protected mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

.field protected sContainerID:Ljava/lang/String;

.field protected sContentID:Ljava/lang/String;

.field protected serverObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPRenderer;Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;)V
    .locals 1
    .parameter "aRenderer"
    .parameter "aServer"
    .parameter "contentID"
    .parameter "containerID"
    .parameter "aMediaCtrl"
    .parameter "serviceObj"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    .line 20
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 22
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/RemoteCacheItem;

    .line 23
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->sContentID:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->sContainerID:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mLastCommand:Lcom/awox/jUPnPCP/CmdBrowse2;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->serverObject:Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    .line 34
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 35
    iput-object p3, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->sContentID:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->sContainerID:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    .line 39
    iput-object p5, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nTotalCount:I

    .line 43
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->requestBrowse()V

    .line 44
    return-void
.end method


# virtual methods
.method public browseResult(Lcom/awox/jUPnPCP/CmdBrowse2;)I
    .locals 14
    .parameter "theCommand"

    .prologue
    const/4 v7, 0x1

    const-wide/16 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 99
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mLastCommand:Lcom/awox/jUPnPCP/CmdBrowse2;

    if-nez v8, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v5

    .line 102
    :cond_1
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMUniqueID()J

    move-result-wide v8

    iget-object v10, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mLastCommand:Lcom/awox/jUPnPCP/CmdBrowse2;

    invoke-virtual {v10}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMUniqueID()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->browseTimeoutDisable()V

    .line 107
    const-string v8, "DLNAMiddlelayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RemoteUnitarylist: browseResult: contentID:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMItemID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/CmdBrowse2;->getMError()I

    move-result v2

    .line 110
    .local v2, nError:I
    sget v8, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_None:I

    if-eq v2, v8, :cond_2

    .line 112
    invoke-virtual {p0, v2, v7}, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->sendNotify(II)V

    .line 114
    const-string v5, "DLNAMiddlelayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteSingleItemlist: browseResult: Error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 116
    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p1, v12, v13}, Lcom/awox/jUPnPCP/CmdBrowse2;->NewEntryInfo(J)Lcom/awox/jUPnPCP/CDSEntryInfo;

    move-result-object v0

    .line 120
    .local v0, entryInfo:Lcom/awox/jUPnPCP/CDSEntryInfo;
    invoke-virtual {p1, v12, v13}, Lcom/awox/jUPnPCP/CmdBrowse2;->NewResourceInfo(J)Lcom/awox/jUPnPCP/CDSResourceInfo;

    move-result-object v3

    .line 122
    .local v3, resInfo:Lcom/awox/jUPnPCP/CDSResourceInfo;
    if-nez v3, :cond_3

    .line 124
    const-string v5, "DLNAMiddlelayer"

    const-string v7, "RemoteSingleItemlist: resInfo is null"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 125
    goto :goto_0

    .line 130
    :cond_3
    const/4 v1, -0x1

    .line 131
    .local v1, nBestIndex:I
    const/4 v4, 0x0

    .line 133
    .local v4, theBestResourceIndexRet:Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->rendererObject:Ljava/lang/Object;

    monitor-enter v8

    .line 135
    :try_start_0
    iget-object v9, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v9, :cond_4

    .line 136
    monitor-exit v8

    move v5, v6

    goto :goto_0

    .line 138
    :cond_4
    iget-object v9, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/CDSResourceInfo;->getMPackedData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/awox/jUPnPCP/UPnPRenderer;->GetBestResourceIndex(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)Lcom/awox/jUPnPCP/BestResourceIndexGetResult;

    move-result-object v4

    .line 139
    monitor-exit v8

    .line 141
    if-nez v4, :cond_5

    move v5, v6

    .line 142
    goto :goto_0

    .line 139
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 144
    :cond_5
    invoke-virtual {v4}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMIndex()I

    move-result v1

    .line 146
    const-string v6, "DLNAMiddlelayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteUnitarylist: nBestIndex:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/RemoteCacheItem;

    .line 150
    invoke-virtual {v4}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;->getMfMatchProtocolInfo()Z

    move-result v6

    if-nez v6, :cond_6

    .line 152
    const-string v6, "DLNAMiddlelayer"

    const-string v8, "RemoteSingleItemlist: DMR capability unable to play"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_6
    if-ltz v1, :cond_7

    .line 157
    new-instance v6, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;

    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->sContentID:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v9}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v12, v13, v8, v9}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;-><init>(JLjava/lang/String;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/RemoteCacheItem;

    .line 158
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/RemoteCacheItem;

    invoke-virtual {v6, v0, v3, v1}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->setEntry_ResInfo(Lcom/awox/jUPnPCP/CDSEntryInfo;Lcom/awox/jUPnPCP/CDSResourceInfo;I)V

    .line 159
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/RemoteCacheItem;

    invoke-virtual {p0, v6}, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->getThumbnailFilePath(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;

    .line 160
    sget v6, Lcom/htc/dlnainterface/DLNAResponseCode;->READY_TO_PLAY:I

    invoke-virtual {p0, v6, v5}, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->sendNotify(II)V

    :goto_1
    move v5, v7

    .line 170
    goto/16 :goto_0

    .line 167
    :cond_7
    const/16 v6, -0x134

    invoke-virtual {p0, v6, v5}, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->sendNotify(II)V

    goto :goto_1
.end method

.method public getContainerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->sContainerID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 67
    const-string v0, ""

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->sContainerID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/RemoteCacheItem;

    return-object v0
.end method

.method public getCurrentPlayID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->sContentID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 75
    const-string v0, ""

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->sContentID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFilterCapability()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x4

    return v0
.end method

.method public getServerID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->serverObject:Ljava/lang/Object;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPContentServer;->getMUDN()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 61
    :goto_0
    return-object v0

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    const-string v0, ""

    goto :goto_0

    .line 60
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
    .line 192
    if-nez p1, :cond_0

    .line 193
    const-string v1, ""

    .line 221
    :goto_0
    return-object v1

    :cond_0
    move-object v7, p1

    .line 197
    check-cast v7, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;

    .line 199
    .local v7, item:Lcom/htc/dlnamiddlelayer/RemoteCacheItem;
    invoke-virtual {v7}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getThumbFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getThumbFilePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_1

    .line 200
    invoke-virtual {v7}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getThumbFilePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 202
    :cond_1
    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->g_Gallery_DMC_ThumbSize:Ljava/lang/String;

    invoke-virtual {v7, v1}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getThumbnailURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, thumbUri:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 205
    :cond_2
    const-string v1, ""

    goto :goto_0

    .line 207
    :cond_3
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-nez v1, :cond_4

    .line 208
    const-string v1, ""

    goto :goto_0

    .line 210
    :cond_4
    const/4 v6, 0x2

    .line 211
    .local v6, group:I
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/MediaController;->getCookie()I

    move-result v1

    if-nez v1, :cond_7

    .line 212
    const/4 v6, 0x2

    .line 216
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getThumbnailDownloadThread()Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;

    move-result-object v0

    .line 218
    .local v0, mThumbnailThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;
    if-eqz v0, :cond_6

    .line 219
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/MediaController;->getCookie()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->getServerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/htc/dlnamiddlelayer/RemoteCacheItem;->getContentID()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;->DMC_THUMBNAIL_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->addContentThumbnail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;I)V

    .line 221
    :cond_6
    const-string v1, ""

    goto :goto_0

    .line 213
    .end local v0           #mThumbnailThread:Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;
    :cond_7
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/MediaController;->getCookie()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 214
    const/16 v6, 0x12

    goto :goto_1
.end method

.method public requestBrowse()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 82
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->serverObject:Ljava/lang/Object;

    monitor-enter v8

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    if-nez v0, :cond_0

    .line 86
    const/16 v0, -0x12d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->sendNotify(II)V

    .line 87
    monitor-exit v8

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/awox/jUPnPCP/CmdBrowse2;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->sContentID:Ljava/lang/String;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    sget-object v7, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCmdBrowse_NoFilter:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JJLjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mLastCommand:Lcom/awox/jUPnPCP/CmdBrowse2;

    .line 91
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    sget v0, Lcom/htc/dlnainterface/DLNAResponseCode;->WAITING_SERVER_RESPONSE:I

    invoke-virtual {p0, v0, v9}, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->sendNotify(II)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->browseTimeoutEnable()V

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setServer(Lcom/awox/jUPnPCP/UPnPContentServer;)V
    .locals 2
    .parameter "aServer"

    .prologue
    .line 48
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->serverObject:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/RemoteSingleItemlist;->mServer:Lcom/awox/jUPnPCP/UPnPContentServer;

    .line 51
    monitor-exit v1

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
