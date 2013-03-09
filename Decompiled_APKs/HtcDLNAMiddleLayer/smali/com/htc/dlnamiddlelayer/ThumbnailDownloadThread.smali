.class public Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;
.super Ljava/lang/Thread;
.source "ThumbnailDownloadThread.java"


# instance fields
.field private bIsEndThread:Z

.field private mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

.field private mFileCache:Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;

.field private mHandle:Landroid/os/Handler;

.field private mImageInterface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/dlnamiddlelayer/DownloadItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mServerQueueSize:I

.field private mThumbQueueSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "aHandler"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

    .line 17
    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mHandle:Landroid/os/Handler;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->bIsEndThread:Z

    .line 20
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mThumbQueueSize:I

    .line 21
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mServerQueueSize:I

    .line 25
    new-instance v0, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;

    invoke-direct {v0, p1}, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mFileCache:Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;

    .line 26
    new-instance v0, Lcom/htc/dlnamiddlelayer/ContentDBController;

    invoke-direct {v0, p1}, Lcom/htc/dlnamiddlelayer/ContentDBController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

    .line 27
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mHandle:Landroid/os/Handler;

    .line 28
    return-void
.end method


# virtual methods
.method public addContentThumbnail(ILjava/lang/String;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;I)V
    .locals 10
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .parameter "type"
    .parameter "group"

    .prologue
    .line 181
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    monitor-enter v8

    .line 187
    const/4 v6, 0x0

    .local v6, i:I
    move v7, v6

    .end local v6           #i:I
    .local v7, i:I
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v6, v7, -0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    :try_start_1
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 187
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    goto :goto_1

    .line 196
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mThumbQueueSize:I

    if-lt v0, v1, :cond_3

    .line 198
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 201
    :cond_3
    iget-object v9, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    move v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;-><init>(ILcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 204
    monitor-enter p0

    .line 206
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 207
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 202
    :catchall_1
    move-exception v0

    move v6, v7

    .end local v7           #i:I
    .restart local v6       #i:I
    :goto_3
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3

    .end local v6           #i:I
    .restart local v7       #i:I
    :cond_4
    move v6, v7

    .end local v7           #i:I
    .restart local v6       #i:I
    goto :goto_2
.end method

.method public addContentThumbnail(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;I)V
    .locals 11
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .parameter "url"
    .parameter "type"
    .parameter "group"

    .prologue
    .line 212
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v9, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    monitor-enter v9

    .line 218
    const/4 v7, 0x0

    .local v7, i:I
    move v8, v7

    .end local v7           #i:I
    .local v8, i:I
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 223
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v7, v8, -0x1

    .end local v8           #i:I
    .restart local v7       #i:I
    :try_start_1
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 218
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v8, v7

    .end local v7           #i:I
    .restart local v8       #i:I
    goto :goto_1

    .line 227
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mThumbQueueSize:I

    if-lt v0, v1, :cond_3

    .line 229
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 232
    :cond_3
    iget-object v10, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    move v1, p1

    move-object/from16 v2, p5

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;-><init>(ILcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    monitor-enter p0

    .line 237
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 238
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 233
    :catchall_1
    move-exception v0

    move v7, v8

    .end local v8           #i:I
    .restart local v7       #i:I
    :goto_3
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3

    .end local v7           #i:I
    .restart local v8       #i:I
    :cond_4
    move v7, v8

    .end local v8           #i:I
    .restart local v7       #i:I
    goto :goto_2
.end method

.method public addServerThumbnail(ILjava/lang/String;Ljava/lang/String;Lcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;)V
    .locals 11
    .parameter "cookie"
    .parameter "serverID"
    .parameter "url"
    .parameter "type"

    .prologue
    .line 151
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v9, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    monitor-enter v9

    .line 157
    const/4 v7, 0x0

    .local v7, i:I
    move v8, v7

    .end local v7           #i:I
    .local v8, i:I
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v7, v8, -0x1

    .end local v8           #i:I
    .restart local v7       #i:I
    :try_start_1
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 157
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v8, v7

    .end local v7           #i:I
    .restart local v8       #i:I
    goto :goto_1

    .line 165
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mServerQueueSize:I

    if-lt v0, v1, :cond_3

    .line 167
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 170
    :cond_3
    iget-object v10, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    const-string v3, ""

    const/16 v6, 0xff

    move v1, p1

    move-object v2, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;-><init>(ILcom/htc/dlnamiddlelayer/GlobalDataStore$ThumbnailReturnType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    monitor-enter p0

    .line 175
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 176
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 171
    :catchall_1
    move-exception v0

    move v7, v8

    .end local v8           #i:I
    .restart local v7       #i:I
    :goto_3
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3

    .end local v7           #i:I
    .restart local v8       #i:I
    :cond_4
    move v7, v8

    .end local v8           #i:I
    .restart local v7       #i:I
    goto :goto_2
.end method

.method public cancelContentThumbnail(II)V
    .locals 6
    .parameter "cookie"
    .parameter "groupID"

    .prologue
    .line 243
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    monitor-enter v3

    .line 245
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    iget v2, v2, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mGroupID:I

    if-ne v2, p2, :cond_1

    .line 249
    const-string v4, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thumbnail queue removed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    iget-object v2, v2, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 253
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v2

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_2

    .end local v0           #i:I
    .restart local v1       #i:I
    :cond_1
    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    monitor-exit v1

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 34
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 36
    .local v9, mDownloadingImage:Lcom/htc/dlnamiddlelayer/DownloadItemInfo;
    iget-boolean v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->bIsEndThread:Z

    if-eqz v1, :cond_1

    .line 120
    :goto_1
    return-void

    .line 38
    :cond_1
    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    monitor-enter v2

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 42
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    move-object v9, v0

    .line 43
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 45
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-eqz v9, :cond_8

    .line 49
    iget-object v1, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v6, 0x0

    .line 53
    .local v6, isServer:Z
    iget-object v1, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 55
    const/4 v6, 0x1

    .line 72
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mFileCache:Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;

    iget-object v2, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    iget-object v3, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    iget-object v4, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->isFileExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 75
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mFileCache:Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;

    iget-object v2, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    iget-object v3, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->getCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    .line 78
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 79
    .local v10, msg:Landroid/os/Message;
    iput-object v9, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mHandle:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 108
    .end local v10           #msg:Landroid/os/Message;
    :catch_0
    move-exception v7

    .line 109
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v6           #isServer:Z
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 57
    .restart local v6       #isServer:Z
    :cond_4
    iget-object v1, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 59
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

    iget-object v2, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    iget-object v3, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/dlnamiddlelayer/ContentDBController;->getContentThumbURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    .line 61
    iget-object v1, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    :cond_5
    const/4 v1, 0x0

    iput-object v1, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    .line 64
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 65
    .restart local v10       #msg:Landroid/os/Message;
    iput-object v9, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mHandle:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 84
    .end local v10           #msg:Landroid/os/Message;
    :cond_6
    :try_start_3
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thumbnail URL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mFileCache:Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;

    iget-object v2, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    iget-object v3, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    iget-object v4, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    iget-object v5, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual/range {v1 .. v6}, Lcom/htc/dlnamiddlelayer/ThumbFileCacheManager;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    .line 91
    iget-object v1, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 94
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thumbnail Path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 96
    .restart local v10       #msg:Landroid/os/Message;
    iput-object v9, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mHandle:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 101
    .end local v10           #msg:Landroid/os/Message;
    :cond_7
    const-string v1, "DLNAMiddlelayer"

    const-string v2, "Thumbnail download fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 103
    .restart local v10       #msg:Landroid/os/Message;
    iput-object v9, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->mHandle:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 116
    .end local v6           #isServer:Z
    .end local v10           #msg:Landroid/os/Message;
    :cond_8
    monitor-enter p0

    .line 120
    :try_start_4
    iget-boolean v1, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->bIsEndThread:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v1, :cond_9

    :try_start_5
    monitor-exit p0

    goto/16 :goto_1

    .line 126
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 121
    :cond_9
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    .line 126
    :goto_2
    :try_start_7
    monitor-exit p0

    goto/16 :goto_0

    .line 122
    :catch_1
    move-exception v8

    .line 124
    .local v8, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2
.end method

.method public terminateThread()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/ThumbnailDownloadThread;->bIsEndThread:Z

    .line 135
    monitor-enter p0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 138
    monitor-exit p0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
