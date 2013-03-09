.class public Lcom/htc/dlnamiddlelayer/ImageDownloadThread;
.super Ljava/lang/Thread;
.source "ImageDownloadThread.java"


# instance fields
.field private bIsEndThread:Z

.field private mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

.field private mFileCache:Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;

.field private mFileFormatController:Lcom/htc/dlnamiddlelayer/FileFormatController;

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

.field private mQueueSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "aHandler"

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

    .line 23
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mHandle:Landroid/os/Handler;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    .line 25
    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mFileFormatController:Lcom/htc/dlnamiddlelayer/FileFormatController;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->bIsEndThread:Z

    .line 27
    const/16 v0, 0xe

    iput v0, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mQueueSize:I

    .line 31
    new-instance v0, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;

    invoke-direct {v0, p1}, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mFileCache:Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;

    .line 32
    new-instance v0, Lcom/htc/dlnamiddlelayer/ContentDBController;

    invoke-direct {v0, p1}, Lcom/htc/dlnamiddlelayer/ContentDBController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

    .line 33
    iput-object p2, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mHandle:Landroid/os/Handler;

    .line 34
    new-instance v0, Lcom/htc/dlnamiddlelayer/FileFormatController;

    invoke-direct {v0}, Lcom/htc/dlnamiddlelayer/FileFormatController;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mFileFormatController:Lcom/htc/dlnamiddlelayer/FileFormatController;

    .line 35
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 218
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    monitor-exit v1

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getImage(ILjava/lang/String;Ljava/lang/String;ZLcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;)V
    .locals 10
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .parameter "isForce"
    .parameter "type"

    .prologue
    .line 226
    iget-object v8, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    monitor-enter v8

    .line 229
    const/4 v6, 0x0

    .local v6, i:I
    move v7, v6

    .end local v6           #i:I
    .local v7, i:I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    iget-object v0, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v7, -0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    :try_start_1
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 229
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    goto :goto_0

    .line 238
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mQueueSize:I

    if-lt v0, v1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 243
    :cond_1
    iget-object v9, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    move v1, p1

    move-object v2, p5

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;-><init>(ILcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    monitor-enter p0

    .line 248
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 249
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 250
    return-void

    .line 244
    :catchall_0
    move-exception v0

    move v6, v7

    .end local v7           #i:I
    .restart local v6       #i:I
    :goto_2
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 249
    .end local v6           #i:I
    .restart local v7       #i:I
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 244
    .end local v7           #i:I
    .restart local v6       #i:I
    :catchall_2
    move-exception v0

    goto :goto_2

    .end local v6           #i:I
    .restart local v7       #i:I
    :cond_2
    move v6, v7

    .end local v7           #i:I
    .restart local v6       #i:I
    goto :goto_1
.end method

.method public run()V
    .locals 29

    .prologue
    .line 41
    :cond_0
    :goto_0
    const/16 v25, 0x0

    .line 43
    .local v25, mDownloadingImage:Lcom/htc/dlnamiddlelayer/DownloadItemInfo;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->bIsEndThread:Z

    if-eqz v2, :cond_1

    .line 195
    :goto_1
    return-void

    .line 45
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    monitor-enter v3

    .line 47
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;

    move-object/from16 v25, v0

    .line 50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mImageInterface:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 52
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz v25, :cond_e

    .line 56
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const/4 v8, 0x0

    .line 59
    .local v8, isAlbumArt:Z
    const/16 v20, 0x0

    .line 60
    .local v20, fileName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 61
    .local v7, fileFormat:Ljava/lang/String;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 63
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImageReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;->CONTENT_IMAGE_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    invoke-virtual {v2, v3}, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/htc/dlnamiddlelayer/ContentDBController;->getContentURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    .line 72
    :goto_2
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 74
    const/4 v2, 0x0

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    .line 75
    new-instance v26, Landroid/os/Message;

    invoke-direct/range {v26 .. v26}, Landroid/os/Message;-><init>()V

    .line 76
    .local v26, msg:Landroid/os/Message;
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mHandle:Landroid/os/Handler;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 52
    .end local v7           #fileFormat:Ljava/lang/String;
    .end local v8           #isAlbumArt:Z
    .end local v20           #fileName:Ljava/lang/String;
    .end local v26           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 69
    .restart local v7       #fileFormat:Ljava/lang/String;
    .restart local v8       #isAlbumArt:Z
    .restart local v20       #fileName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mContentDB:Lcom/htc/dlnamiddlelayer/ContentDBController;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/htc/dlnamiddlelayer/ContentDBController;->getAlbumArtURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    goto :goto_2

    .line 82
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mFileFormatController:Lcom/htc/dlnamiddlelayer/FileFormatController;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/dlnamiddlelayer/FileFormatController;->checkImageFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 84
    if-nez v7, :cond_5

    .line 87
    const-string v7, ".jpg"

    .line 90
    :cond_5
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImageReturned:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    sget-object v3, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;->ALBUM_ART_UPDATE:Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;

    invoke-virtual {v2, v3}, Lcom/htc/dlnamiddlelayer/GlobalDataStore$ImageReturnType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 91
    const/4 v8, 0x1

    .line 94
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mFileCache:Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-boolean v6, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mIsForce:Z

    invoke-virtual/range {v2 .. v8}, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->isFileExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mFileCache:Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v7}, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->getCacheFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    .line 100
    new-instance v26, Landroid/os/Message;

    invoke-direct/range {v26 .. v26}, Landroid/os/Message;-><init>()V

    .line 101
    .restart local v26       #msg:Landroid/os/Message;
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mHandle:Landroid/os/Handler;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 184
    .end local v26           #msg:Landroid/os/Message;
    :catch_0
    move-exception v17

    .line 185
    .local v17, e:Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 106
    .end local v17           #e:Ljava/io/IOException;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mFileCache:Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v7}, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->makeCacheFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 108
    new-instance v19, Ljava/io/File;

    sget-object v2, Lcom/htc/dlnamiddlelayer/GlobalDataStore;->STORAGE_FOLDER:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v19, file:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v21

    .line 110
    .local v21, folder:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    .line 112
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to create folder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v2, 0x0

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    .line 115
    new-instance v26, Landroid/os/Message;

    invoke-direct/range {v26 .. v26}, Landroid/os/Message;-><init>()V

    .line 116
    .restart local v26       #msg:Landroid/os/Message;
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mHandle:Landroid/os/Handler;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 120
    .end local v26           #msg:Landroid/os/Message;
    :cond_8
    new-instance v22, Ljava/io/FileOutputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 122
    .local v22, fs:Ljava/io/FileOutputStream;
    const/16 v24, 0x0

    .line 123
    .local v24, in:Ljava/io/InputStream;
    const/16 v2, 0x400

    new-array v15, v2, [B

    .line 126
    .local v15, buffer:[B
    new-instance v23, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct/range {v23 .. v23}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 127
    .local v23, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v27, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 129
    .local v27, request:Lorg/apache/http/client/methods/HttpGet;
    :try_start_4
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    .line 130
    .local v28, theEntity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v24

    .line 135
    .end local v28           #theEntity:Lorg/apache/http/HttpEntity;
    :goto_3
    if-nez v24, :cond_9

    .line 137
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 138
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to getInputStreamFromUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v2, 0x0

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    .line 141
    new-instance v26, Landroid/os/Message;

    invoke-direct/range {v26 .. v26}, Landroid/os/Message;-><init>()V

    .line 142
    .restart local v26       #msg:Landroid/os/Message;
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mHandle:Landroid/os/Handler;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 131
    .end local v26           #msg:Landroid/os/Message;
    :catch_1
    move-exception v17

    .line 132
    .local v17, e:Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 147
    .end local v17           #e:Ljava/lang/Exception;
    :cond_9
    const/16 v16, 0x0

    .line 149
    .local v16, bytesRead:I
    :cond_a
    const/4 v2, 0x0

    array-length v3, v15

    move-object/from16 v0, v24

    invoke-virtual {v0, v15, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v16

    .line 150
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_b

    .line 158
    :goto_4
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 160
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    .line 162
    const-string v2, "DLNAMiddlelayer"

    const-string v3, "image length = 0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    .line 165
    const/4 v2, 0x0

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    .line 166
    new-instance v26, Landroid/os/Message;

    invoke-direct/range {v26 .. v26}, Landroid/os/Message;-><init>()V

    .line 167
    .restart local v26       #msg:Landroid/os/Message;
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mHandle:Landroid/os/Handler;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 153
    .end local v26           #msg:Landroid/os/Message;
    :cond_b
    if-lez v16, :cond_c

    .line 154
    const/4 v2, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v15, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 156
    :cond_c
    if-gez v16, :cond_a

    goto :goto_4

    .line 172
    :cond_d
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mFileCache:Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;

    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mServerID:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v11, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemID:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mItemUrl:Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    move v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/htc/dlnamiddlelayer/ImageFileCacheManager;->filePush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    const-string v2, "DLNAMiddlelayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloaded Image :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/htc/dlnamiddlelayer/DownloadItemInfo;->mImagePath:Ljava/lang/String;

    .line 178
    new-instance v26, Landroid/os/Message;

    invoke-direct/range {v26 .. v26}, Landroid/os/Message;-><init>()V

    .line 179
    .restart local v26       #msg:Landroid/os/Message;
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->mHandle:Landroid/os/Handler;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 191
    .end local v7           #fileFormat:Ljava/lang/String;
    .end local v8           #isAlbumArt:Z
    .end local v15           #buffer:[B
    .end local v16           #bytesRead:I
    .end local v19           #file:Ljava/io/File;
    .end local v20           #fileName:Ljava/lang/String;
    .end local v21           #folder:Ljava/io/File;
    .end local v22           #fs:Ljava/io/FileOutputStream;
    .end local v23           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v24           #in:Ljava/io/InputStream;
    .end local v26           #msg:Landroid/os/Message;
    .end local v27           #request:Lorg/apache/http/client/methods/HttpGet;
    :cond_e
    monitor-enter p0

    .line 195
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->bIsEndThread:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz v2, :cond_f

    :try_start_7
    monitor-exit p0

    goto/16 :goto_1

    .line 201
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .line 196
    :cond_f
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2

    .line 201
    :goto_5
    :try_start_9
    monitor-exit p0

    goto/16 :goto_0

    .line 197
    :catch_2
    move-exception v18

    .line 199
    .local v18, e1:Ljava/lang/InterruptedException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5
.end method

.method public terminateThread()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/ImageDownloadThread;->bIsEndThread:Z

    .line 210
    monitor-enter p0

    .line 212
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 213
    monitor-exit p0

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
