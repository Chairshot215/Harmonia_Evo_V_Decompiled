.class public Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;
.super Lcom/htc/album/TabPluginDevice/ObserverAdapter;
.source "AdapterLocalFolder.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AdapterLocalFolder"

.field public static final STATE_LOAD_CACHE:I = 0x0

.field public static final STATE_LOAD_DATABASE:I = 0x1

.field private static final STATE_LOAD_UNKNOWN:I = -0x1


# instance fields
.field private mCollectionMgr:Lcom/htc/album/helper/FolderManager;

.field private mExtras:Landroid/os/Bundle;

.field private mIsEnableUpdateCache:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadState:I

.field private mNewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field private mOldList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "handler"
    .parameter "mediaTypes"
    .parameter "extras"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 27
    new-instance v0, Lcom/htc/album/helper/FolderManager;

    invoke-direct {v0}, Lcom/htc/album/helper/FolderManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mOldList:Ljava/util/ArrayList;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mIsEnableUpdateCache:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    .line 39
    iput-object p4, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    .line 40
    return-void
.end method

.method private doCustomize(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, originalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v11, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFOLDERFILTERLIST:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 318
    .local v1, hidden:Z
    if-nez v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v10, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v11, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFOLDERFILTERLIST:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 329
    .local v3, hiddenList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    if-nez v3, :cond_1

    .line 331
    const-string v8, "AdapterLocalFolder"

    const-string v9, "[HTCAlbum][AdapterLocalFolder][doCustomize]: null list error..."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    :cond_1
    const/4 v0, 0x0

    .line 336
    .local v0, acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    const/4 v2, 0x0

    .line 337
    .local v2, hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v7, remove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 340
    .local v4, nCount:I
    const/4 v5, 0x0

    .local v5, nHiddenIndex:I
    :goto_1
    if-le v4, v5, :cond_5

    .line 342
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v2, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .restart local v2       #hiddenItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    if-nez v2, :cond_3

    .line 340
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 345
    :cond_3
    const/4 v6, 0x0

    .local v6, nIndex:I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v6, :cond_2

    .line 347
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    check-cast v0, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 348
    .restart local v0       #acItem:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getBucketId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 349
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 352
    .end local v6           #nIndex:I
    :cond_5
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 353
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public enableCacheUpdate(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mIsEnableUpdateCache:Z

    .line 100
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 54
    :cond_0
    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "AdapterLocalFolder"

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 67
    .local v1, mediaData:Lcom/htc/sunny2/IMediaData;
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunny2/IMediaData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getLastLoadState()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    return v0
.end method

.method public isCacheExist()Z
    .locals 5

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFOLDERLIST:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->isFileCacheExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 91
    return v0
.end method

.method public final isCollectionChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, currentCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    .local p2, newCollection:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    const/4 v1, 0x1

    .line 261
    .local v1, bResult:Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v1

    .line 307
    .end local v1           #bResult:Z
    .local v2, bResult:I
    :goto_0
    return v2

    .line 264
    .end local v2           #bResult:I
    .restart local v1       #bResult:Z
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 265
    .local v7, nQueriedCount:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 266
    .local v5, nCachedCount:I
    if-eq v7, v5, :cond_2

    .line 268
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isCollectionChanged]: size differs"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 269
    .restart local v2       #bResult:I
    goto :goto_0

    .line 272
    .end local v2           #bResult:I
    :cond_2
    move v10, v7

    .line 273
    .local v10, totalCount:I
    const/4 v6, 0x0

    .local v6, nIndex:I
    :goto_1
    if-le v10, v6, :cond_8

    .line 275
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 276
    .local v8, queriedAC:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 277
    .local v3, cachedAC:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v9

    .line 278
    .local v9, queriedImage:Lcom/htc/album/modules/collection/SimpleImage;
    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v4

    .line 279
    .local v4, cachedImage:Lcom/htc/album/modules/collection/SimpleImage;
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 281
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isCollectionChanged]: name differs"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 282
    .restart local v2       #bResult:I
    goto :goto_0

    .line 284
    .end local v2           #bResult:I
    :cond_3
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v11

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getPhotoCount()I

    move-result v12

    if-eq v11, v12, :cond_4

    .line 286
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isCollectionChanged]: count differs"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 287
    .restart local v2       #bResult:I
    goto :goto_0

    .line 289
    .end local v2           #bResult:I
    :cond_4
    iget-wide v11, v9, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget-wide v13, v4, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v11, v11, v13

    if-eqz v11, :cond_5

    .line 291
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isCollectionChanged]: item time differs"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 292
    .restart local v2       #bResult:I
    goto :goto_0

    .line 294
    .end local v2           #bResult:I
    :cond_5
    iget v11, v9, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    iget v12, v4, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    if-eq v11, v12, :cond_6

    .line 296
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isSameCollection]: item degree of rotation differs"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 297
    .restart local v2       #bResult:I
    goto :goto_0

    .line 299
    .end local v2           #bResult:I
    :cond_6
    invoke-virtual {v8}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSupportedMediaTypes()I

    move-result v11

    invoke-virtual {v3}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getSupportedMediaTypes()I

    move-result v12

    if-eq v11, v12, :cond_7

    .line 301
    const-string v11, "AdapterLocalFolder"

    const-string v12, "[HTCAlbum][AdapterLocalFolder][isCollectionChanged]: Media Type changed!!"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 302
    .restart local v2       #bResult:I
    goto/16 :goto_0

    .line 273
    .end local v2           #bResult:I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 306
    .end local v3           #cachedAC:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v4           #cachedImage:Lcom/htc/album/modules/collection/SimpleImage;
    .end local v8           #queriedAC:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v9           #queriedImage:Lcom/htc/album/modules/collection/SimpleImage;
    :cond_8
    const/4 v1, 0x0

    move v2, v1

    .line 307
    .restart local v2       #bResult:I
    goto/16 :goto_0
.end method

.method protected onLoadDataBegin(Landroid/os/AsyncTask;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, loader:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onLoadDataBegin(Landroid/os/AsyncTask;)V

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    .line 107
    return-void
.end method

.method protected onLoadDataCancelled(Landroid/os/AsyncTask;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, loader:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onLoadDataCancelled(Landroid/os/AsyncTask;)V

    .line 238
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    invoke-virtual {v0}, Lcom/htc/album/helper/FolderManager;->stopLoadData()V

    .line 239
    return-void
.end method

.method protected onLoadDataEnd(Landroid/os/AsyncTask;Ljava/lang/Integer;)V
    .locals 1
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, loader:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mOldList:Ljava/util/ArrayList;

    .line 249
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    .line 251
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mOldList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mOldList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 253
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mOldList:Ljava/util/ArrayList;

    .line 255
    invoke-super {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;->onLoadDataEnd(Landroid/os/AsyncTask;Ljava/lang/Integer;)V

    .line 256
    return-void
.end method

.method protected varargs onLoadDataInBackground(Landroid/os/AsyncTask;[Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 17
    .parameter
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;[",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, loader:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    const-string v12, "AdapterLocalFolder"

    const-string v13, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: begin"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v7, 0x0

    .line 120
    .local v7, hasFileCache:Z
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mFlagListUpdate:I

    and-int/lit8 v13, v13, 0x2

    if-ne v12, v13, :cond_5

    const/4 v11, 0x1

    .line 121
    .local v11, requestReload:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    const-string v13, "media_connected"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 123
    .local v2, bIsMediaConnected:Z
    const/4 v12, 0x1

    if-ne v12, v2, :cond_6

    .line 125
    const-string v12, "AdapterLocalFolder"

    const-string v13, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground] Load by MediaConnnected"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v11, 0x1

    .line 127
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    const-string v13, "media_connected"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 128
    const/16 v12, 0x4e46

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onPostMessage(ILjava/lang/Object;I)V

    .line 151
    :cond_0
    :goto_1
    if-nez v11, :cond_1

    if-nez v7, :cond_8

    .line 153
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mExtras:Landroid/os/Bundle;

    const-string v13, "MimeTypeFilter"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, filter:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mCollectionMgr:Lcom/htc/album/helper/FolderManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mMediaTypes:I

    invoke-virtual {v12, v13, v14, v6}, Lcom/htc/album/helper/FolderManager;->getCollectionList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, bIsCollectionChanged:Z
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->isCollectionChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-ne v12, v1, :cond_2

    .line 159
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mIsEnableUpdateCache:Z

    if-ne v12, v13, :cond_2

    .line 161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mContext:Landroid/content/Context;

    sget-object v13, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v14, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    sget-object v16, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFOLDERLIST:Ljava/lang/String;

    invoke-static/range {v12 .. v16}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->putToFileCacheList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    :cond_2
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    .line 170
    const-string v12, "AdapterLocalFolder"

    const-string v13, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: database: "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v12, "AdapterLocalFolder"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: isChanged: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " : enabled update: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mIsEnableUpdateCache:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v1           #bIsCollectionChanged:Z
    .end local v6           #filter:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->doCustomize(Ljava/util/ArrayList;)V

    .line 215
    const/4 v9, 0x0

    .line 216
    .local v9, nCount:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    if-eqz v12, :cond_3

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 219
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mFlagListUpdate:I

    and-int/lit8 v12, v12, 0x2

    const/4 v13, 0x2

    if-eq v12, v13, :cond_4

    .line 221
    const-string v12, "AdapterLocalFolder"

    const-string v13, "[HTCAlbum][AdapterLocalFolder][onLoadDataEnd]: remove loading"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/16 v12, 0x4e46

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onRemoveMessage(I)V

    .line 225
    :cond_4
    const-string v12, "AdapterLocalFolder"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v12, "AdapterLocalFolder"

    const-string v13, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: end"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    return-object v12

    .line 120
    .end local v2           #bIsMediaConnected:Z
    .end local v9           #nCount:I
    .end local v11           #requestReload:Z
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 132
    .restart local v2       #bIsMediaConnected:Z
    .restart local v11       #requestReload:Z
    :cond_6
    const-string v12, "AdapterLocalFolder"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground] reload: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-nez v11, :cond_0

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->isCacheExist()Z

    move-result v7

    .line 136
    if-nez v7, :cond_0

    .line 138
    const-string v12, "AdapterLocalFolder"

    const-string v13, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground] new load "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/16 v12, 0x4e46

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->onPostMessage(ILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 153
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 176
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mContext:Landroid/content/Context;

    sget-object v13, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v14, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->CACHE_LOCAL:Ljava/lang/String;

    sget-object v15, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFOLDERLIST:Ljava/lang/String;

    invoke-static {v12, v13, v14, v15}, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->getFromFileCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 180
    .local v3, cacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    if-nez v3, :cond_9

    .line 181
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #cacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .restart local v3       #cacheList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mIsEnableUpdateCache:Z

    if-nez v12, :cond_b

    .line 189
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v10, removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TabPluginDevice/AlbumCollection;

    .line 193
    .local v4, collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    invoke-virtual {v4}, Lcom/htc/album/TabPluginDevice/AlbumCollection;->getContainedMediaTypes()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mMediaTypes:I

    and-int/2addr v12, v13

    if-nez v12, :cond_a

    .line 195
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 201
    .end local v4           #collection:Lcom/htc/album/TabPluginDevice/AlbumCollection;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :catch_0
    move-exception v5

    .line 203
    .local v5, ex:Ljava/lang/Exception;
    const-string v12, "AdapterLocalFolder"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground] Exception: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    .line 209
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mLoadState:I

    .line 210
    const-string v12, "AdapterLocalFolder"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/TabPluginDevice/AdapterLocalFolder;->mNewList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v12, "AdapterLocalFolder"

    const-string v13, "[HTCAlbum][AdapterLocalFolder][onLoadDataInBackground]: end"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 198
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :cond_c
    :try_start_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_b

    .line 199
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method
