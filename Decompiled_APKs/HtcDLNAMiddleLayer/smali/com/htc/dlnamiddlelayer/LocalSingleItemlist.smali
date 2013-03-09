.class public Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;
.super Lcom/htc/dlnamiddlelayer/PlaylistBase;
.source "LocalSingleItemlist.java"


# instance fields
.field protected decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

.field protected mCacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;

.field protected mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

.field protected sFilePath:Ljava/lang/String;

.field protected thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;


# direct methods
.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPRenderer;Lcom/awox/jUPnPCP/PushControllerModule;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;)V
    .locals 3
    .parameter "aRenderer"
    .parameter "aPushController"
    .parameter "filePath"
    .parameter "aMediaCtrl"
    .parameter "serviceObj"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

    .line 19
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    .line 20
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->sFilePath:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    .line 23
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    .line 28
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

    .line 29
    iput-object p5, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    .line 30
    iput-object p4, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nTotalCount:I

    .line 33
    invoke-virtual {p0, p1}, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->setRenderer(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 34
    iput-object p3, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->sFilePath:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    .line 36
    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    invoke-direct {v0, p0}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;-><init>(Lcom/htc/dlnamiddlelayer/PlaylistBase;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    .line 37
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->genURICache()Z

    .line 38
    return-void
.end method

.method private getLocalFileInfo(Lcom/htc/dlnamiddlelayer/LocalCacheItem;Ljava/lang/String;)V
    .locals 1
    .parameter "cacheItem"
    .parameter "filePath"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-static {p1, p2, v0}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->getVideoInfo(Lcom/htc/dlnamiddlelayer/LocalCacheItem;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;)V

    .line 157
    return-void
.end method

.method private hasDecodeThread()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public genURICache()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, bIsCached:Z
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->sFilePath:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->sFilePath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v3, v0

    .line 135
    :goto_0
    return v3

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->hasPushController()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 83
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "LocalUnitarylist : cacheGenURI"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v4, "DLNAMiddlelayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalUnitarylist : filePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->sFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v2, 0x0

    .line 89
    .local v2, theURI:Lcom/awox/jUPnPCP/PushControllerGetResult;
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->rendererObject:Ljava/lang/Object;

    monitor-enter v4

    .line 91
    :try_start_0
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v5, :cond_2

    .line 92
    monitor-exit v4

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 94
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->sFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/awox/jUPnPCP/PushControllerModule;->GetURI(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;)Lcom/awox/jUPnPCP/PushControllerGetResult;

    move-result-object v2

    .line 95
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-nez v2, :cond_3

    move v3, v0

    .line 98
    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMConfidence()I

    move-result v1

    .line 101
    .local v1, ret:I
    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kRendererPlayConfidence_WillNot:I

    if-ne v1, v4, :cond_5

    .line 103
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "Renderer will not play the media"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_4
    :goto_1
    const-string v4, "DLNAMiddlelayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalUnitarylist : URI Gen : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v4, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v5}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v8, v9, v5}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;-><init>(JLandroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    .line 113
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    if-nez v4, :cond_6

    move v3, v0

    .line 114
    goto/16 :goto_0

    .line 105
    :cond_5
    sget v4, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kRendererPlayConfidence_ShouldNot:I

    if-ne v1, v4, :cond_4

    .line 107
    const-string v4, "DLNAMiddlelayer"

    const-string v5, "Renderer should not play the media"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 117
    :cond_6
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    invoke-virtual {v4, v2}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setGetResult(Lcom/awox/jUPnPCP/PushControllerGetResult;)V

    .line 118
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMEntryInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v6

    invoke-virtual {v2}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMResourceInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setURI_Entry_ResInfo(Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V

    .line 120
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->sFilePath:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->getLocalFileInfo(Lcom/htc/dlnamiddlelayer/LocalCacheItem;Ljava/lang/String;)V

    .line 121
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    invoke-virtual {p0, v4}, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->getThumbnailFilePath(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;

    .line 123
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    if-eqz v4, :cond_7

    .line 126
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMEntryInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v4

    sget v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    invoke-virtual {v6}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v8, v9, v5, v6}, Lcom/awox/jUPnPCP/jUPnPCP;->awPackedData_SetJavaData(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;JILjava/lang/String;)V

    .line 127
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMEntryInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v4

    sget v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Creator:I

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    invoke-virtual {v6}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getArtist()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v8, v9, v5, v6}, Lcom/awox/jUPnPCP/jUPnPCP;->awPackedData_SetJavaData(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;JILjava/lang/String;)V

    .line 128
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMEntryInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v4

    sget v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Album:I

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    invoke-virtual {v6}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getAlbum()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v8, v9, v5, v6}, Lcom/awox/jUPnPCP/jUPnPCP;->awPackedData_SetJavaData(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;JILjava/lang/String;)V

    .line 130
    :cond_7
    const/4 v0, 0x1

    .line 131
    sget v4, Lcom/htc/dlnainterface/DLNAResponseCode;->READY_TO_PLAY:I

    invoke-virtual {p0, v4, v3}, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->sendNotify(II)V

    .end local v1           #ret:I
    .end local v2           #theURI:Lcom/awox/jUPnPCP/PushControllerGetResult;
    :cond_8
    move v3, v0

    .line 135
    goto/16 :goto_0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->mCacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    return-object v0
.end method

.method public getDetails(Lcom/htc/dlnamiddlelayer/LocalCacheItem;)V
    .locals 2
    .parameter "cacheItem"

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbnailURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-static {p1, v0, v1}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->getVideoDetails(Lcom/htc/dlnamiddlelayer/LocalCacheItem;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;)V

    .line 162
    return-void
.end method

.method public getFilterCapability()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x4

    return v0
.end method

.method public getThumbnailFilePath(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;
    .locals 14
    .parameter "cacheItem"

    .prologue
    const/4 v6, 0x2

    .line 203
    if-nez p1, :cond_0

    .line 204
    const-string v9, ""

    .line 237
    :goto_0
    return-object v9

    :cond_0
    move-object v8, p1

    .line 208
    check-cast v8, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    .line 210
    .local v8, item:Lcom/htc/dlnamiddlelayer/LocalCacheItem;
    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbFilePath()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 213
    :cond_1
    const/4 v9, 0x0

    .line 216
    .local v9, thumbPath:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbnailURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getModifiedTime()J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getSize()J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->pull(Ljava/lang/String;JII)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 225
    :cond_2
    if-nez v9, :cond_4

    .line 227
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->hasDecodeThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v10, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$VideoThumbDecode;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbnailURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getModifiedTime()J

    move-result-wide v3

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getSize()J

    move-result-wide v11

    long-to-int v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$VideoThumbDecode;-><init>(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;Ljava/lang/String;JII)V

    invoke-virtual {v10, v0}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->addTask(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;)V

    .line 237
    :cond_3
    :goto_1
    const-string v9, ""

    goto :goto_0

    .line 232
    :cond_4
    invoke-virtual {p1, v9}, Lcom/htc/dlnamiddlelayer/CacheItem;->setThumbFilePath(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :catch_0
    move-exception v7

    .line 221
    .local v7, e:Ljava/io/IOException;
    :try_start_1
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalSingleItem : IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    if-nez v9, :cond_5

    .line 227
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->hasDecodeThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    iget-object v10, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$VideoThumbDecode;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbnailURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getModifiedTime()J

    move-result-wide v3

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getSize()J

    move-result-wide v11

    long-to-int v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$VideoThumbDecode;-><init>(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;Ljava/lang/String;JII)V

    invoke-virtual {v10, v0}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->addTask(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;)V

    goto :goto_1

    .line 232
    :cond_5
    invoke-virtual {p1, v9}, Lcom/htc/dlnamiddlelayer/CacheItem;->setThumbFilePath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    move-object v10, v0

    if-nez v9, :cond_7

    .line 227
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->hasDecodeThread()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 228
    iget-object v11, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$VideoThumbDecode;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbnailURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getModifiedTime()J

    move-result-wide v3

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getSize()J

    move-result-wide v12

    long-to-int v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$VideoThumbDecode;-><init>(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;Ljava/lang/String;JII)V

    invoke-virtual {v11, v0}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->addTask(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;)V

    .line 233
    :cond_6
    throw v10

    .line 232
    :cond_7
    invoke-virtual {p1, v9}, Lcom/htc/dlnamiddlelayer/CacheItem;->setThumbFilePath(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public hasPushController()Z
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

    if-nez v0, :cond_0

    .line 44
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "LocalUnitarylist : PushController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public localThumbDecodeNotify(Ljava/lang/String;JIILandroid/graphics/Bitmap;)V
    .locals 10
    .parameter "filePath"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "type"
    .parameter "bmp"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    if-eqz v0, :cond_2

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    const/4 v5, 0x2

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->pull(Ljava/lang/String;JII)Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, thumbPath:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 174
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->push(Ljava/lang/String;JIILandroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    .end local v9           #thumbPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 178
    .restart local v9       #thumbPath:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v8

    .line 179
    .local v8, item:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/CacheItem;->getThumbnailURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 182
    invoke-virtual {v8, v9}, Lcom/htc/dlnamiddlelayer/CacheItem;->setThumbFilePath(Ljava/lang/String;)V

    .line 186
    :goto_1
    sget v0, Lcom/htc/dlnainterface/DLNAResponseCode;->LOCAL_THUMBDECODE_NOTIFY:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->notifyResponse(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v8           #item:Lcom/htc/dlnamiddlelayer/CacheItem;
    .end local v9           #thumbPath:Ljava/lang/String;
    :cond_2
    :goto_2
    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 184
    .restart local v8       #item:Lcom/htc/dlnamiddlelayer/CacheItem;
    .restart local v9       #thumbPath:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    const/4 v5, 0x2

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->pull(Ljava/lang/String;JII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/htc/dlnamiddlelayer/CacheItem;->setThumbFilePath(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 189
    .end local v8           #item:Lcom/htc/dlnamiddlelayer/CacheItem;
    .end local v9           #thumbPath:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 191
    .local v7, e:Ljava/io/IOException;
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "localThumbDecodeNoitfy : IOException :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public release()V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->stopThread()V

    .line 62
    return-void
.end method

.method public stopThread()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "stop Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->hasDecodeThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->stopThread()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalSingleItemlist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    .line 72
    :cond_0
    return-void
.end method
