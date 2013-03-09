.class public abstract Lcom/htc/dlnamiddlelayer/PlaylistBase;
.super Ljava/lang/Object;
.source "PlaylistBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamiddlelayer/PlaylistBase$1;,
        Lcom/htc/dlnamiddlelayer/PlaylistBase$browseTimeoutTask;,
        Lcom/htc/dlnamiddlelayer/PlaylistBase$MessagetoNotify;
    }
.end annotation


# instance fields
.field protected bEnableNotify:Ljava/lang/Boolean;

.field protected bHasDevice:Z

.field protected bNotifyToController:Z

.field protected bRequestItem:Z

.field protected bShuffle:Z

.field protected browseTimeoutTimer:Ljava/util/Timer;

.field protected lock:Ljava/lang/Object;

.field protected mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

.field protected mCorruptItem:Lcom/htc/dlnamiddlelayer/CacheItem;

.field protected mMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;

.field protected mNotifyQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/htc/dlnamiddlelayer/PlaylistBase$MessagetoNotify;",
            ">;"
        }
    .end annotation
.end field

.field protected mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

.field protected mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

.field protected nBrowseTimeout:J

.field protected nTotalCount:I

.field protected nlistIndex:I

.field protected nlistNextIndex:I

.field protected rendererObject:Ljava/lang/Object;

.field protected repeatState:I

.field protected shuffleArray:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    .line 17
    sget-object v0, Lcom/htc/dlnamiddlelayer/RepeatState;->NOREPEAT:Lcom/htc/dlnamiddlelayer/RepeatState;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/RepeatState;->getValue()I

    move-result v0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->repeatState:I

    .line 18
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    .line 20
    iput v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nTotalCount:I

    .line 21
    iput v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nlistIndex:I

    .line 22
    iput v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nlistNextIndex:I

    .line 24
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    .line 25
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    .line 26
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;

    .line 27
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCorruptItem:Lcom/htc/dlnamiddlelayer/CacheItem;

    .line 28
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    .line 30
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bNotifyToController:Z

    .line 31
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bRequestItem:Z

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bEnableNotify:Ljava/lang/Boolean;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bHasDevice:Z

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->rendererObject:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->lock:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mNotifyQueue:Ljava/util/Vector;

    .line 39
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->browseTimeoutTimer:Ljava/util/Timer;

    .line 40
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nBrowseTimeout:J

    .line 328
    return-void
.end method


# virtual methods
.method public declared-synchronized advanceListIndex()V
    .locals 3

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getTotalCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 84
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_0
    :try_start_1
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advanceListIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getListNextIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getListNextIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->updateListIndex(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public browseTimeoutDisable()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->browseTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->browseTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 308
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->browseTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->browseTimeoutTimer:Ljava/util/Timer;

    .line 310
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "Browse timeout disable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    return-void
.end method

.method public browseTimeoutEnable()V
    .locals 4

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->browseTimeoutDisable()V

    .line 295
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->browseTimeoutTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->browseTimeoutTimer:Ljava/util/Timer;

    .line 298
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->browseTimeoutTimer:Ljava/util/Timer;

    new-instance v1, Lcom/htc/dlnamiddlelayer/PlaylistBase$browseTimeoutTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/dlnamiddlelayer/PlaylistBase$browseTimeoutTask;-><init>(Lcom/htc/dlnamiddlelayer/PlaylistBase;Lcom/htc/dlnamiddlelayer/PlaylistBase$1;)V

    iget-wide v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nBrowseTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 299
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "Browse timeout enable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    return-void
.end method

.method public changeRendererOutput(Lcom/awox/jUPnPCP/UPnPRenderer;)V
    .locals 0
    .parameter "aNewRenderer"

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->setRenderer(Lcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 236
    return-void
.end method

.method public enableSendNotify(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 262
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bEnableNotify:Ljava/lang/Boolean;

    monitor-enter v2

    .line 264
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bEnableNotify:Ljava/lang/Boolean;

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mNotifyQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mNotifyQueue:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/PlaylistBase$MessagetoNotify;

    .line 271
    .local v0, msg:Lcom/htc/dlnamiddlelayer/PlaylistBase$MessagetoNotify;
    iget v1, v0, Lcom/htc/dlnamiddlelayer/PlaylistBase$MessagetoNotify;->resID:I

    iget v3, v0, Lcom/htc/dlnamiddlelayer/PlaylistBase$MessagetoNotify;->msgCode:I

    invoke-virtual {p0, v1, v3}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->notifyResponse(II)V

    goto :goto_0

    .line 273
    .end local v0           #msg:Lcom/htc/dlnamiddlelayer/PlaylistBase$MessagetoNotify;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    return-void
.end method

.method public getCacheAtIndex(I)Lcom/htc/dlnamiddlelayer/CacheItem;
    .locals 3
    .parameter "index"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    .line 162
    :cond_0
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bShuffle:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->hasShuffleArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    aget v1, v1, p1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->get(J)Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCacheManager:Lcom/htc/dlnamiddlelayer/MediaCacheManager;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/MediaCacheManager;->get(J)Lcom/htc/dlnamiddlelayer/CacheItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getCorruptItem()Lcom/htc/dlnamiddlelayer/CacheItem;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mCorruptItem:Lcom/htc/dlnamiddlelayer/CacheItem;

    return-object v0
.end method

.method public abstract getCurrentIndex()I
.end method

.method public abstract getCurrentItem()Lcom/htc/dlnamiddlelayer/CacheItem;
.end method

.method public abstract getFilterCapability()I
.end method

.method public getHasDevice()Z
    .locals 2

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bHasDevice:Z

    if-nez v0, :cond_0

    .line 136
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "No device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bHasDevice:Z

    return v0
.end method

.method protected declared-synchronized getListCurIndex()I
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nlistIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getListNextIndex()I
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nlistNextIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNextItem()Lcom/htc/dlnamiddlelayer/CacheItem;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrevItem()Lcom/htc/dlnamiddlelayer/CacheItem;
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getThumbnailFilePath(Lcom/htc/dlnamiddlelayer/CacheItem;)Ljava/lang/String;
.end method

.method public declared-synchronized getTotalCount()I
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nTotalCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasShuffleArray()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->shuffleArray:[I

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEnd()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 143
    iget v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->repeatState:I

    sget-object v2, Lcom/htc/dlnamiddlelayer/RepeatState;->REPEATALL:Lcom/htc/dlnamiddlelayer/RepeatState;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/RepeatState;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getListCurIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getListNextIndex()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 150
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "Playlist End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyResponse(II)V
    .locals 3
    .parameter "value"
    .parameter "what"

    .prologue
    .line 245
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    if-nez v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mServiceObj:Lcom/htc/dlnamiddlelayer/DLNAServiceObject;

    invoke-virtual {v2}, Lcom/htc/dlnamiddlelayer/DLNAServiceObject;->getResponseHandler()Landroid/os/Handler;

    move-result-object v0

    .line 250
    .local v0, aHandler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 252
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 253
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 254
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mMediaCtrl:Lcom/htc/dlnamiddlelayer/MediaController;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 255
    iput p2, v1, Landroid/os/Message;->what:I

    .line 256
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public notifyShuffleFirstItemReady()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public notifyShuffleGenerated()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public preGenNextItem()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->stopThread()V

    .line 181
    return-void
.end method

.method public sendNotify(II)V
    .locals 3
    .parameter "value"
    .parameter "what"

    .prologue
    .line 278
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bEnableNotify:Ljava/lang/Boolean;

    monitor-enter v1

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bEnableNotify:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0, p1, p2}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->notifyResponse(II)V

    .line 288
    :goto_0
    monitor-exit v1

    .line 289
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mNotifyQueue:Ljava/util/Vector;

    new-instance v2, Lcom/htc/dlnamiddlelayer/PlaylistBase$MessagetoNotify;

    invoke-direct {v2, p0, p1, p2}, Lcom/htc/dlnamiddlelayer/PlaylistBase$MessagetoNotify;-><init>(Lcom/htc/dlnamiddlelayer/PlaylistBase;II)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHasDevice(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->bHasDevice:Z

    .line 131
    return-void
.end method

.method public setItemID(Ljava/lang/String;)Z
    .locals 1
    .parameter "contentID"

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public setItemIndex(IZ)Z
    .locals 1
    .parameter "index"
    .parameter "bShuffleMode"

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized setListCurIndex(I)V
    .locals 3
    .parameter "i"

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nlistIndex:I

    .line 95
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nlistIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setListNextIndex(I)V
    .locals 3
    .parameter "i"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nlistNextIndex:I

    .line 102
    iget v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nlistNextIndex:I

    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->getTotalCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nlistNextIndex:I

    .line 105
    :cond_0
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListNextIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nlistNextIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRenderer(Lcom/awox/jUPnPCP/UPnPRenderer;)V
    .locals 2
    .parameter "aRenderer"

    .prologue
    .line 55
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->rendererObject:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    .line 59
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->mRenderer:Lcom/awox/jUPnPCP/UPnPRenderer;

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->setHasDevice(Z)V

    .line 63
    :goto_0
    monitor-exit v1

    .line 64
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->setHasDevice(Z)V

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 170
    return-void
.end method

.method public setShuffle(Z)V
    .locals 0
    .parameter "bShuffleMode"

    .prologue
    .line 175
    return-void
.end method

.method public declared-synchronized setTotalCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase;->nTotalCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopThread()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public switchNextItem()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public switchPrevItem()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method protected declared-synchronized updateListIndex(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->setListCurIndex(I)V

    .line 89
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/PlaylistBase;->setListNextIndex(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updatePlaylist()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method
