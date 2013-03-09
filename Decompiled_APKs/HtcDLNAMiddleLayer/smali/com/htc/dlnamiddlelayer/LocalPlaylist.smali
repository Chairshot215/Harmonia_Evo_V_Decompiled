.class public Lcom/htc/dlnamiddlelayer/LocalPlaylist;
.super Lcom/htc/dlnamiddlelayer/PlaylistBase;
.source "LocalPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamiddlelayer/LocalPlaylist$1;,
        Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;,
        Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;
    }
.end annotation


# instance fields
.field protected bSDCardRemoved:Z

.field protected bUseOriginalAlbumArtSize:Z

.field protected decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

.field protected mList:[I

.field protected mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

.field protected mTmpList:[I

.field protected nFilterCapability:I

.field protected requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

.field protected shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

.field protected thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;


# direct methods
.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPRenderer;Lcom/awox/jUPnPCP/PushControllerModule;I[IILcom/htc/dlnamiddlelayer/MediaController;Lcom/htc/dlnamiddlelayer/DLNAServiceObject;)V
    .locals 4
    .parameter "aRenderer"
    .parameter "aPushController"
    .parameter "index"
    .parameter "idList"
    .parameter "filterCapability"
    .parameter "aMediaCtrl"
    .parameter "serviceObj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

    .line 24
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    .line 25
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mTmpList:[I

    .line 29
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    .line 30
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    .line 32
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    .line 33
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    .line 35
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->nFilterCapability:I

    .line 37
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->bSDCardRemoved:Z

    .line 39
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->bUseOriginalAlbumArtSize:Z

    .line 52
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

    .line 53
    iput-object p7, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    .line 54
    iput-object p6, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;

    .line 55
    iput-object p4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    .line 56
    iput p5, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->nFilterCapability:I

    .line 57
    invoke-virtual {p0, p1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->setRenderer(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 59
    invoke-static {v0, v1}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->isExternalStorageReady(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->bSDCardRemoved:Z

    .line 61
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    array-length v0, v0

    if-ge p3, v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    array-length v0, v0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nTotalCount:I

    .line 64
    invoke-virtual {p0, p3}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->updateListIndex(I)V

    .line 65
    sget v0, Lcom/htc/dlnainterface/DLNAResponseCode;->PLAYLIST_GENERATE_SUCCESS:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->sendNotify(II)V

    .line 66
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalPlaylist: totalCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    invoke-direct {v0}, Lcom/htc/dlnamiddlelayer/GenerateShuffle;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    .line 76
    new-instance v0, Lcom/htc/dlnamiddlelayer/RequestExecutor;

    invoke-direct {v0}, Lcom/htc/dlnamiddlelayer/RequestExecutor;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    .line 78
    new-instance v0, Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;-><init>(I)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    .line 80
    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    .line 81
    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    invoke-direct {v0, p0}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;-><init>(Lcom/htc/dlnamiddlelayer/PlaylistBase;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    .line 82
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 59
    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalPlaylist : index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/16 v0, -0x134

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->sendNotify(II)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/dlnamiddlelayer/LocalPlaylist;II)Lcom/htc/dlnamiddlelayer/LocalCacheItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->genURICache(II)Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    move-result-object v0

    return-object v0
.end method

.method private cancelGenCacheRequest()V
    .locals 2

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasRequestThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->clearRunnableQueue()V

    .line 659
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->getCurrentRunnable()Ljava/lang/Runnable;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;

    .line 660
    .local v0, curRunnable:Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;
    if-eqz v0, :cond_0

    .line 661
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->cancel()V

    .line 663
    .end local v0           #curRunnable:Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;
    :cond_0
    return-void
.end method

.method private genURICache(II)Lcom/htc/dlnamiddlelayer/LocalCacheItem;
    .locals 10
    .parameter "mediaId"
    .parameter "listIndex"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    .line 138
    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    int-to-long v5, p2

    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v7}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;-><init>(JLandroid/content/Context;)V

    .line 140
    .local v0, cacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;
    if-nez v0, :cond_1

    move-object v0, v4

    .line 206
    .end local v0           #cacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;
    :cond_0
    :goto_0
    return-object v0

    .line 143
    .restart local v0       #cacheItem:Lcom/htc/dlnamiddlelayer/LocalCacheItem;
    :cond_1
    const-string v5, "DLNAMiddlelayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "genURICache: genIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0, v0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getLocalFileInfo(Lcom/htc/dlnamiddlelayer/LocalCacheItem;)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getThumbnailFilePath(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;

    .line 149
    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, filePath:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    move-object v0, v4

    .line 151
    goto :goto_0

    .line 153
    :cond_3
    const/4 v3, 0x0

    .line 155
    .local v3, theURI:Lcom/awox/jUPnPCP/PushControllerGetResult;
    iget-object v5, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->rendererObject:Ljava/lang/Object;

    monitor-enter v5

    .line 157
    :try_start_0
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v6, :cond_4

    .line 158
    monitor-exit v5

    move-object v0, v4

    goto :goto_0

    .line 160
    :cond_4
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual {v6, v7, v1}, Lcom/awox/jUPnPCP/PushControllerModule;->GetURI(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;)Lcom/awox/jUPnPCP/PushControllerGetResult;

    move-result-object v3

    .line 161
    monitor-exit v5

    .line 163
    if-nez v3, :cond_5

    move-object v0, v4

    .line 164
    goto :goto_0

    .line 161
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 167
    :cond_5
    invoke-virtual {v3}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMConfidence()I

    move-result v2

    .line 168
    .local v2, ret:I
    sget v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kRendererPlayConfidence_WillNot:I

    if-ne v2, v5, :cond_7

    .line 170
    const-string v5, "DLNAMiddlelayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocalPlaylist: Renderer will not play the media : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_6
    :goto_1
    invoke-virtual {v3}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 180
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bRequestItem:Z

    .line 183
    invoke-virtual {v0, v3}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setGetResult(Lcom/awox/jUPnPCP/PushControllerGetResult;)V

    .line 184
    invoke-virtual {v3}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMEntryInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v5

    invoke-virtual {v3}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMResourceInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setURI_Entry_ResInfo(Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V

    .line 186
    invoke-virtual {v3}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMEntryInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v4

    sget v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Title:I

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v8, v9, v5, v6}, Lcom/awox/jUPnPCP/jUPnPCP;->awPackedData_SetJavaData(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;JILjava/lang/String;)V

    .line 187
    invoke-virtual {v3}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMEntryInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v4

    sget v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Creator:I

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getArtist()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v8, v9, v5, v6}, Lcom/awox/jUPnPCP/jUPnPCP;->awPackedData_SetJavaData(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;JILjava/lang/String;)V

    .line 188
    invoke-virtual {v3}, Lcom/awox/jUPnPCP/PushControllerGetResult;->getMEntryInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v4

    sget v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kCDSEntryInfo_Album:I

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getAlbum()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v8, v9, v5, v6}, Lcom/awox/jUPnPCP/jUPnPCP;->awPackedData_SetJavaData(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;JILjava/lang/String;)V

    .line 190
    const-string v4, "DLNAMiddlelayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalPlaylist: filePath: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->nFilterCapability:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 196
    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->genPushAlbumArtURI(Lcom/htc/dlnamiddlelayer/LocalCacheItem;)V

    goto/16 :goto_0

    .line 172
    :cond_7
    sget v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kRendererPlayConfidence_ShouldNot:I

    if-ne v2, v5, :cond_6

    .line 174
    const-string v5, "DLNAMiddlelayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocalPlaylist: Renderer should not play the media : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 202
    :cond_8
    const-string v5, "DLNAMiddlelayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocalPlaylist: genURI empty; filePath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 206
    goto/16 :goto_0
.end method

.method private getLocalFileInfo(Lcom/htc/dlnamiddlelayer/LocalCacheItem;)V
    .locals 5
    .parameter "cacheItem"

    .prologue
    .line 837
    if-nez p1, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    const/4 v0, 0x0

    .line 842
    .local v0, id:I
    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getIndex()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    array-length v3, v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getIndex()J

    move-result-wide v2

    long-to-int v2, v2

    aget v0, v1, v2

    .line 847
    iget v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->nFilterCapability:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 849
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-static {p1, v0, v1}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->getAudioInfo(Lcom/htc/dlnamiddlelayer/LocalCacheItem;ILcom/htc/dlnamiddlelayer/DLNAServiceObject;)V

    goto :goto_0

    .line 851
    :cond_2
    iget v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->nFilterCapability:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 853
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-static {p1, v0, v1}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->getImageInfo(Lcom/htc/dlnamiddlelayer/LocalCacheItem;ILcom/htc/dlnamiddlelayer/DLNAServiceObject;)V

    goto :goto_0
.end method

.method private hasDecodeThread()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasRequestThread()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasShuffleThread()Z
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    if-nez v0, :cond_0

    .line 110
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "No Shuffle Thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public genPushAlbumArtURI(Lcom/htc/dlnamiddlelayer/LocalCacheItem;)V
    .locals 17
    .parameter "cacheItem"

    .prologue
    .line 211
    if-nez p1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getDownloadAlbumArtPath()Ljava/lang/String;

    move-result-object v11

    .line 217
    .local v11, thumbFilePath:Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_3

    .line 220
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbFilePath()Ljava/lang/String;

    move-result-object v11

    .line 221
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    .line 227
    :cond_3
    const-string v12, "DLNAMiddlelayer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "LocalPlaylist: thumbPath: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->bUseOriginalAlbumArtSize:Z

    if-eqz v12, :cond_5

    .line 232
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->rendererObject:Ljava/lang/Object;

    monitor-enter v13

    .line 234
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v12, :cond_4

    .line 235
    monitor-exit v13

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 237
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getEntryInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getResInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v11, v15, v0}, Lcom/awox/jUPnPCP/PushControllerModule;->AddAlbumArt(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, albumArtURI:Ljava/lang/String;
    const-string v12, "DLNAMiddlelayer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "LocalPlaylist: genAblumArt URI:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    .end local v1           #albumArtURI:Ljava/lang/String;
    :cond_5
    const/16 v12, 0xa0

    const/16 v13, 0xa0

    invoke-static {v11, v12, v13}, Lcom/htc/dlnamiddlelayer/BitmapWrapper;->DecodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 246
    .local v7, originalBmp:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 248
    const/16 v12, 0xa0

    const/16 v13, 0xa0

    invoke-static {v7, v12, v13}, Lcom/htc/dlnamiddlelayer/BitmapWrapper;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 249
    .local v8, resizeBmp:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    .line 251
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->STORAGE_FOLDER:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/data/com.htc.dlnamiddlelayer/cache/albumthumbs/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v10, thumbDir:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getIndex()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".jpg"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 258
    .local v9, resizeThumbFilePath:Ljava/lang/String;
    :try_start_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 260
    .local v5, folder:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v12

    if-nez v12, :cond_6

    .line 262
    const-string v12, "DLNAMiddlelayer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "genPushAblumArtURI: Fail to create folder: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 292
    .end local v4           #file:Ljava/io/File;
    .end local v5           #folder:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 294
    .local v3, e:Ljava/lang/Exception;
    const-string v12, "DLNAMiddlelayer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "LocalPlaylist: genPushAlbumArtURI:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 265
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #folder:Ljava/io/File;
    :cond_6
    :try_start_3
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 266
    .local v6, fs:Ljava/io/FileOutputStream;
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x64

    invoke-virtual {v8, v12, v13, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    .line 267
    .local v2, bmpRet:Z
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 269
    if-eqz v4, :cond_0

    .line 271
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_8

    const/4 v12, 0x1

    if-ne v2, v12, :cond_8

    .line 273
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->setPushAlbumArtPath(Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->rendererObject:Ljava/lang/Object;

    monitor-enter v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 278
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v12, :cond_7

    .line 279
    monitor-exit v13

    goto/16 :goto_0

    .line 283
    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 281
    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-virtual/range {p1 .. p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getEntryInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getResInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v14, v9, v15, v0}, Lcom/awox/jUPnPCP/PushControllerModule;->AddAlbumArt(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .restart local v1       #albumArtURI:Ljava/lang/String;
    const-string v12, "DLNAMiddlelayer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "LocalPlaylist: genAblumArt URI:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 287
    .end local v1           #albumArtURI:Ljava/lang/String;
    :cond_8
    :try_start_7
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 288
    const-string v12, "DLNAMiddlelayer"

    const-string v13, "LocalPlaylist: genPushAlbumArtURI: write file failed"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0
.end method

.method public genShuffle()V
    .locals 4

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasShuffleThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 631
    const/4 v0, 0x1

    .line 632
    .local v0, bInit:Z
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    if-nez v1, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getTotalCount()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    .line 639
    :cond_0
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "genShuffle Thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->cancel()V

    .line 642
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListCurIndex()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3, p0}, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->setShuffleArray([IZILcom/htc/dlnamiddlelayer/PlaylistBase;)V

    .line 643
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->startThread()V

    .line 646
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListNextIndex()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->remove(J)V

    .line 648
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->updateListIndex(I)V

    .line 649
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "genShuffle Update"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    .end local v0           #bInit:Z
    :cond_1
    return-void
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCurrentPlayIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;
    .locals 4

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListCurIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCacheAtIndex(I)Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v0

    .line 340
    .local v0, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bRequestItem:Z

    if-nez v1, :cond_1

    .line 342
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasRequestThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->cancelGenCacheRequest()V

    .line 345
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    new-instance v2, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;

    sget-object v3, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->GEN_CURRENT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    invoke-direct {v2, p0, v3}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;-><init>(Lcom/htc/dlnamiddlelayer/LocalPlaylist;Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;)V

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->addRunnable(Ljava/lang/Runnable;)V

    .line 346
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->startThread()V

    .line 349
    :cond_0
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalPlaylist : get current item is null : index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListCurIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_1
    return-object v0
.end method

.method public getCurrentPlayID()I
    .locals 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCurrentPlayIndex()I

    move-result v0

    .line 306
    .local v0, i:I
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    aget v1, v1, v0

    .line 311
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCurrentPlayIndex()I
    .locals 2

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasShuffleArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListCurIndex()I

    move-result v1

    aget v0, v0, v1

    .line 324
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListCurIndex()I

    move-result v0

    goto :goto_0
.end method

.method public getDetails(Lcom/htc/dlnamiddlelayer/LocalCacheItem;)V
    .locals 5
    .parameter "cacheItem"

    .prologue
    .line 859
    if-nez p1, :cond_1

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    const/4 v0, 0x0

    .line 864
    .local v0, id:I
    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getIndex()J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    array-length v3, v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getIndex()J

    move-result-wide v2

    long-to-int v2, v2

    aget v0, v1, v2

    .line 869
    iget v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->nFilterCapability:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 871
    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbnailURI()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-static {p1, v1, v0, v2}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->getAudioDetails(Lcom/htc/dlnamiddlelayer/LocalCacheItem;Ljava/lang/String;ILcom/htc/dlnamiddlelayer/DLNAServiceObject;)V

    goto :goto_0

    .line 873
    :cond_2
    iget v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->nFilterCapability:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 875
    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbnailURI()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-static {p1, v1, v0, v2}, Lcom/htc/dlnamiddlelayer/ItemPropertyInfo;->getImageDetails(Lcom/htc/dlnamiddlelayer/LocalCacheItem;Ljava/lang/String;ILcom/htc/dlnamiddlelayer/DLNAServiceObject;)V

    goto :goto_0
.end method

.method public getFilterCapability()I
    .locals 1

    .prologue
    .line 820
    iget v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->nFilterCapability:I

    return v0
.end method

.method public getNextItem()Lcom/htc/dlnamiddlelayer/CacheItem;
    .locals 4

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getTotalCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 369
    const/4 v0, 0x0

    .line 385
    :cond_0
    :goto_0
    return-object v0

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListNextIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCacheAtIndex(I)Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v0

    .line 373
    .local v0, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-nez v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasRequestThread()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->cancelGenCacheRequest()V

    .line 378
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    new-instance v2, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;

    sget-object v3, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->PREGEN_NEXT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    invoke-direct {v2, p0, v3}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;-><init>(Lcom/htc/dlnamiddlelayer/LocalPlaylist;Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;)V

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->addRunnable(Ljava/lang/Runnable;)V

    .line 379
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->startThread()V

    .line 382
    :cond_2
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalPlaylist: next item is null : index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListNextIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNextPlayIndex()I
    .locals 2

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasShuffleArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListNextIndex()I

    move-result v1

    aget v0, v0, v1

    .line 363
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListNextIndex()I

    move-result v0

    goto :goto_0
.end method

.method public getPrevItem()Lcom/htc/dlnamiddlelayer/CacheItem;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getTotalCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-object v0

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListCurIndex()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 427
    .local v1, prevIndex:I
    if-ltz v1, :cond_0

    .line 430
    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCacheAtIndex(I)Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v0

    .line 432
    .local v0, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    goto :goto_0
.end method

.method public getThumbnailFilePath(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;
    .locals 14
    .parameter "cacheItem"

    .prologue
    const/4 v6, 0x2

    .line 930
    if-nez p1, :cond_0

    .line 931
    const-string v9, ""

    .line 968
    :goto_0
    return-object v9

    :cond_0
    move-object v8, p1

    .line 935
    check-cast v8, Lcom/htc/dlnamiddlelayer/LocalCacheItem;

    .line 937
    .local v8, item:Lcom/htc/dlnamiddlelayer/LocalCacheItem;
    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 938
    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbFilePath()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 940
    :cond_1
    iget v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->nFilterCapability:I

    if-eq v0, v6, :cond_2

    .line 941
    const-string v9, ""

    goto :goto_0

    .line 943
    :cond_2
    const/4 v9, 0x0

    .line 946
    .local v9, thumbPath:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    if-eqz v0, :cond_3

    .line 947
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

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

    .line 956
    :cond_3
    if-nez v9, :cond_5

    .line 958
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasDecodeThread()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 959
    iget-object v10, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ImageThumbDecode;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbnailURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getModifiedTime()J

    move-result-wide v3

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getSize()J

    move-result-wide v11

    long-to-int v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ImageThumbDecode;-><init>(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;Ljava/lang/String;JII)V

    invoke-virtual {v10, v0}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->addTask(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;)V

    .line 968
    :cond_4
    :goto_1
    const-string v9, ""

    goto :goto_0

    .line 963
    :cond_5
    invoke-virtual {p1, v9}, Lcom/htc/dlnamiddlelayer/CacheItem;->setThumbFilePath(Ljava/lang/String;)V

    goto :goto_0

    .line 950
    :catch_0
    move-exception v7

    .line 952
    .local v7, e:Ljava/io/IOException;
    :try_start_1
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalPlaylist : IOException: "

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

    .line 956
    if-nez v9, :cond_6

    .line 958
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasDecodeThread()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 959
    iget-object v10, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ImageThumbDecode;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbnailURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getModifiedTime()J

    move-result-wide v3

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getSize()J

    move-result-wide v11

    long-to-int v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ImageThumbDecode;-><init>(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;Ljava/lang/String;JII)V

    invoke-virtual {v10, v0}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->addTask(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;)V

    goto :goto_1

    .line 963
    :cond_6
    invoke-virtual {p1, v9}, Lcom/htc/dlnamiddlelayer/CacheItem;->setThumbFilePath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 956
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    move-object v10, v0

    if-nez v9, :cond_8

    .line 958
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasDecodeThread()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 959
    iget-object v11, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ImageThumbDecode;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getThumbnailURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getModifiedTime()J

    move-result-wide v3

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/LocalCacheItem;->getSize()J

    move-result-wide v12

    long-to-int v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ImageThumbDecode;-><init>(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;Ljava/lang/String;JII)V

    invoke-virtual {v11, v0}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->addTask(Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread$ThumbDecode;)V

    .line 964
    :cond_7
    throw v10

    .line 963
    :cond_8
    invoke-virtual {p1, v9}, Lcom/htc/dlnamiddlelayer/CacheItem;->setThumbFilePath(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public localThumbDecodeNotify(Ljava/lang/String;JIILandroid/graphics/Bitmap;)V
    .locals 10
    .parameter "filePath"
    .parameter "modifiedTime"
    .parameter "fileSize"
    .parameter "type"
    .parameter "bmp"

    .prologue
    .line 881
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    if-eqz v0, :cond_2

    .line 886
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    const/4 v5, 0x2

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->pull(Ljava/lang/String;JII)Ljava/lang/String;

    move-result-object v9

    .line 887
    .local v9, thumbPath:Ljava/lang/String;
    if-nez v9, :cond_1

    .line 889
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->push(Ljava/lang/String;JIILandroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 926
    .end local v9           #thumbPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 893
    .restart local v9       #thumbPath:Ljava/lang/String;
    :cond_1
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local decode notify:thumbPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", filePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v8

    .line 896
    .local v8, item:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/CacheItem;->getThumbnailURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 898
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 899
    invoke-virtual {v8, v9}, Lcom/htc/dlnamiddlelayer/CacheItem;->setThumbFilePath(Ljava/lang/String;)V

    .line 903
    :goto_1
    sget v0, Lcom/htc/dlnainterface/DLNAResponseCode;->LOCAL_THUMBDECODE_NOTIFY:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->notifyResponse(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    .end local v8           #item:Lcom/htc/dlnamiddlelayer/CacheItem;
    .end local v9           #thumbPath:Ljava/lang/String;
    :cond_2
    :goto_2
    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 901
    .restart local v8       #item:Lcom/htc/dlnamiddlelayer/CacheItem;
    .restart local v9       #thumbPath:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

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

    .line 917
    .end local v8           #item:Lcom/htc/dlnamiddlelayer/CacheItem;
    .end local v9           #thumbPath:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 919
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

    .line 907
    .end local v7           #e:Ljava/io/IOException;
    .restart local v8       #item:Lcom/htc/dlnamiddlelayer/CacheItem;
    .restart local v9       #thumbPath:Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getNextItem()Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v8

    .line 908
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/htc/dlnamiddlelayer/CacheItem;->getThumbnailURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 910
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 911
    invoke-virtual {v8, v9}, Lcom/htc/dlnamiddlelayer/CacheItem;->setThumbFilePath(Ljava/lang/String;)V

    goto :goto_2

    .line 913
    :cond_5
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->thumbCacheMgr:Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;

    const/4 v5, 0x2

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/LocalFileThumbCacheManager;->pull(Ljava/lang/String;JII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/htc/dlnamiddlelayer/CacheItem;->setThumbFilePath(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public notifyShuffleFirstItemReady()V
    .locals 2

    .prologue
    .line 829
    sget v0, Lcom/htc/dlnainterface/DLNAResponseCode;->READY_TO_PLAY:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->sendNotify(II)V

    .line 830
    return-void
.end method

.method public notifyShuffleGenerated()V
    .locals 0

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->preGenNextItem()V

    .line 825
    return-void
.end method

.method public declared-synchronized preGenNextItem()V
    .locals 4

    .prologue
    .line 469
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->bSDCardRemoved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 491
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 472
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getTotalCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 475
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preGenNextItem: index :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListNextIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListNextIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCacheAtIndex(I)Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v0

    .line 479
    .local v0, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-nez v0, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasRequestThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->hasRunnableQueue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    new-instance v2, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;

    sget-object v3, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->PREGEN_NEXT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    invoke-direct {v2, p0, v3}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;-><init>(Lcom/htc/dlnamiddlelayer/LocalPlaylist;Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;)V

    invoke-virtual {v1, v2}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->addRunnable(Ljava/lang/Runnable;)V

    .line 486
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->startThread()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 469
    .end local v0           #cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public reArrangePlaylist([I)Z
    .locals 2
    .parameter "idList"

    .prologue
    .line 978
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mTmpList:[I

    .line 980
    sget v0, Lcom/htc/dlnainterface/DLNAResponseCode;->PLAYLIST_UPDATE_NOTIFY:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->sendNotify(II)V

    .line 982
    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->stopThread()V

    .line 549
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->removeAll()V

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    .line 551
    return-void
.end method

.method public sdCardRemovedMsg(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->bSDCardRemoved:Z

    .line 974
    return-void
.end method

.method public setItemIndex(IZ)Z
    .locals 9
    .parameter "index"
    .parameter "bShuffleMode"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 496
    const/4 v1, 0x0

    .line 498
    .local v1, bRet:Z
    invoke-static {v8, v7}, Lcom/htc/dlnamiddlelayer/DeviceStorageManager;->isExternalStorageReady(ZZ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 500
    const/16 v4, -0x13c

    invoke-virtual {p0, v4, v7}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->sendNotify(II)V

    move v2, v1

    .line 543
    .end local v1           #bRet:Z
    .local v2, bRet:I
    :goto_0
    return v2

    .line 504
    .end local v2           #bRet:I
    .restart local v1       #bRet:Z
    :cond_0
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    if-nez v4, :cond_1

    move v2, v1

    .line 505
    .restart local v2       #bRet:I
    goto :goto_0

    .line 507
    .end local v2           #bRet:I
    :cond_1
    move v3, p1

    .line 509
    .local v3, requestIndex:I
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    if-gez v3, :cond_3

    :cond_2
    move v2, v1

    .line 510
    .restart local v2       #bRet:I
    goto :goto_0

    .line 512
    .end local v2           #bRet:I
    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->updateListIndex(I)V

    .line 514
    const-string v4, "DLNAMiddlelayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalPlaylist: setItemIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->cancelGenCacheRequest()V

    .line 520
    iput-boolean p2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    .line 521
    iget-boolean v4, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    if-eqz v4, :cond_4

    .line 522
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->genShuffle()V

    .line 524
    :cond_4
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCurrentPlayIndex()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->get(J)Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 526
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 543
    .restart local v2       #bRet:I
    goto :goto_0

    .line 530
    .end local v2           #bRet:I
    :cond_5
    iput-boolean v8, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bRequestItem:Z

    .line 532
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasRequestThread()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 534
    new-instance v0, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;

    sget-object v4, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->GEN_CURRENT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    invoke-direct {v0, p0, v4}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;-><init>(Lcom/htc/dlnamiddlelayer/LocalPlaylist;Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;)V

    .line 535
    .local v0, aRunnable:Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;
    invoke-virtual {v0, v7}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;->setSkipUnPlayable(Z)V

    .line 536
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    invoke-virtual {v4, v0}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->addRunnable(Ljava/lang/Runnable;)V

    .line 537
    iget-object v4, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    invoke-virtual {v4}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->startThread()V

    .line 540
    .end local v0           #aRunnable:Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setRenderer(Lcom/awox/jUPnPCP/UPnPRenderer;)V
    .locals 1
    .parameter "aRenderer"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->setRenderer(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 88
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getMModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->useOriginalAlbumArtSize(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->bUseOriginalAlbumArtSize:Z

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->bUseOriginalAlbumArtSize:Z

    goto :goto_0
.end method

.method public setRepeatState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 583
    iput p1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->repeatState:I

    .line 585
    iget v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->repeatState:I

    sget-object v1, Lcom/htc/dlnamiddlelayer/RepeatState;->REPEATALL:Lcom/htc/dlnamiddlelayer/RepeatState;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RepeatState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->preGenNextItem()V

    .line 587
    :cond_0
    return-void
.end method

.method public setShuffle(Z)V
    .locals 3
    .parameter "bShuffleMode"

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    if-ne p1, v0, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 599
    :try_start_0
    iput-boolean p1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    .line 600
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->cancelGenCacheRequest()V

    .line 607
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    if-eqz v0, :cond_2

    .line 608
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->genShuffle()V

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 612
    :cond_2
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasShuffleArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->cancel()V

    .line 617
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListNextIndex()I

    move-result v2

    aget v1, v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->remove(J)V

    .line 619
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListCurIndex()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->updateListIndex(I)V

    .line 620
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->preGenNextItem()V

    .line 621
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "No shuffle update"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 555
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "stopThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasShuffleThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/GenerateShuffle;->stopThread()V

    .line 560
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->shuffleThread:Lcom/htc/dlnamiddlelayer/GenerateShuffle;

    .line 563
    :cond_0
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasRequestThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->stopThread()V

    .line 568
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->cancelGenCacheRequest()V

    .line 570
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    .line 573
    :cond_1
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasDecodeThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;->stopThread()V

    .line 577
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->decodeThread:Lcom/htc/dlnamiddlelayer/LocalThumbDecodeThread;

    .line 579
    :cond_2
    return-void
.end method

.method public switchNextItem()Z
    .locals 6

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 392
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getHasDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->bSDCardRemoved:Z

    if-eqz v3, :cond_1

    :cond_0
    move v1, v0

    .line 418
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 395
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getTotalCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    move v1, v0

    .line 396
    .restart local v1       #bRet:I
    goto :goto_0

    .line 398
    .end local v1           #bRet:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListNextIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->updateListIndex(I)V

    .line 400
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchNextItem: index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListCurIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListCurIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCacheAtIndex(I)Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v2

    .line 404
    .local v2, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-eqz v2, :cond_4

    .line 406
    sget v3, Lcom/htc/dlnainterface/DLNAResponseCode;->NOTIFY_SWITCH_ITEM_UPDATE:I

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->sendNotify(II)V

    .line 407
    const/4 v0, 0x1

    :cond_3
    :goto_1
    move v1, v0

    .line 418
    .restart local v1       #bRet:I
    goto :goto_0

    .line 409
    .end local v1           #bRet:I
    :cond_4
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasRequestThread()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 412
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->cancelGenCacheRequest()V

    .line 413
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    new-instance v4, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;

    sget-object v5, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->SWITCH_NEXT:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    invoke-direct {v4, p0, v5}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;-><init>(Lcom/htc/dlnamiddlelayer/LocalPlaylist;Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;)V

    invoke-virtual {v3, v4}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->addRunnable(Ljava/lang/Runnable;)V

    .line 414
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    invoke-virtual {v3}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->startThread()V

    .line 415
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public switchPrevItem()V
    .locals 5

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getHasDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->bSDCardRemoved:Z

    if-eqz v2, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getTotalCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListCurIndex()I

    move-result v1

    .line 445
    .local v1, curIndex:I
    if-gtz v1, :cond_2

    .line 446
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->updateListIndex(I)V

    .line 450
    :goto_1
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchPrevItem : index"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListCurIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getListCurIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCacheAtIndex(I)Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v0

    .line 454
    .local v0, cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    if-eqz v0, :cond_3

    .line 456
    sget v2, Lcom/htc/dlnainterface/DLNAResponseCode;->NOTIFY_SWITCH_ITEM_UPDATE:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->sendNotify(II)V

    goto :goto_0

    .line 448
    .end local v0           #cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    :cond_2
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->updateListIndex(I)V

    goto :goto_1

    .line 458
    .restart local v0       #cacheItem:Lcom/htc/dlnamiddlelayer/CacheItem;
    :cond_3
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->hasRequestThread()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->cancelGenCacheRequest()V

    .line 462
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    new-instance v3, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;

    sget-object v4, Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;->SWITCH_PREV:Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;

    invoke-direct {v3, p0, v4}, Lcom/htc/dlnamiddlelayer/LocalPlaylist$GenCacheRunnable;-><init>(Lcom/htc/dlnamiddlelayer/LocalPlaylist;Lcom/htc/dlnamiddlelayer/LocalPlaylist$RunnableType;)V

    invoke-virtual {v2, v3}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->addRunnable(Ljava/lang/Runnable;)V

    .line 463
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->requestExecutorThread:Lcom/htc/dlnamiddlelayer/RequestExecutor;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/RequestExecutor;->startThread()V

    goto :goto_0
.end method

.method public updatePlaylist()V
    .locals 10

    .prologue
    .line 987
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mTmpList:[I

    if-nez v6, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mTmpList:[I

    array-length v1, v6

    .line 991
    .local v1, count:I
    if-eqz v1, :cond_0

    .line 994
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCurrentPlayID()I

    move-result v4

    .line 996
    .local v4, id:I
    const/4 v5, -0x1

    .line 997
    .local v5, newIndex:I
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->getCurrentPlayIndex()I

    move-result v2

    .line 999
    .local v2, curIndex:I
    if-le v1, v2, :cond_3

    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mTmpList:[I

    aget v6, v6, v2

    if-ne v6, v4, :cond_3

    .line 1001
    move v5, v2

    .line 1015
    :cond_2
    :goto_1
    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 1017
    const-string v6, "DLNAMiddlelayer"

    const-string v7, "LocalPlaylist: updatePlaylist: newIndex error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1005
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 1007
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mTmpList:[I

    aget v6, v6, v3

    if-ne v6, v4, :cond_4

    .line 1009
    move v5, v3

    .line 1010
    goto :goto_1

    .line 1005
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1021
    .end local v3           #i:I
    :cond_5
    iget-object v7, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 1024
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    .line 1025
    .local v0, bShuffleMode:Z
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    .line 1027
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    invoke-virtual {v6, v2, v5}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->updateCurrentRemoveOthers(II)V

    .line 1028
    invoke-virtual {p0, v5}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->updateListIndex(I)V

    .line 1030
    iget-object v6, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mTmpList:[I

    iput-object v6, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mList:[I

    .line 1031
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->mTmpList:[I

    .line 1032
    invoke-virtual {p0, v1}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->setTotalCount(I)V

    .line 1033
    const-string v6, "DLNAMiddlelayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LocalPlaylist is updated. Count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->genShuffle()V

    .line 1037
    :goto_3
    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    .line 1038
    monitor-exit v7

    goto :goto_0

    .end local v0           #bShuffleMode:Z
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1036
    .restart local v0       #bShuffleMode:Z
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/LocalPlaylist;->preGenNextItem()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public useOriginalAlbumArtSize(Ljava/lang/String;)Z
    .locals 2
    .parameter "modelName"

    .prologue
    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->STR_HTC_MEDIA_LINK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
