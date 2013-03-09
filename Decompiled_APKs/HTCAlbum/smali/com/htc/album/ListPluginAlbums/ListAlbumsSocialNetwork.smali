.class public Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;
.super Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;
.source "ListAlbumsSocialNetwork.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListAlbumsSocialNetwork"


# instance fields
.field protected mFolderBackground:Landroid/graphics/Bitmap;

.field protected mIsLatest:Z

.field private mPeopleOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/PersonOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1
    .parameter "hostContext"
    .parameter "pluginContext"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mIsLatest:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    .line 47
    return-void
.end method

.method private setListCategory()V
    .locals 3

    .prologue
    .line 521
    iget-object v1, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsFlagDisplay:Z

    if-nez v1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    const-string v1, "ListAlbumsSocialNetwork"

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setListCategory]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v1, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 532
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local v0           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>()V

    .line 533
    .restart local v0       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    sget-object v1, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 534
    iget-object v1, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorName(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setListLoader(Z)V
    .locals 5
    .parameter "bIsEnable"

    .prologue
    .line 493
    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsInternal:Z

    if-nez v2, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    const-string v2, "ListAlbumsSocialNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ListAlbumsSocialNetwork][setListLoader]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const/4 v1, 0x0

    .line 499
    .local v1, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 506
    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    .line 508
    const-string v0, ""

    .line 510
    .local v0, txtLoading:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0032

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 512
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local v1           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-direct {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>()V

    .line 513
    .restart local v1       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    sget-object v2, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 514
    invoke-virtual {v1, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorName(Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    .end local v0           #txtLoading:Ljava/lang/String;
    :cond_2
    const/16 v2, 0x4e8d

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method


# virtual methods
.method public getExteriorContextMenuItems(I)Ljava/util/List;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/ExteriorListAdapter$ExteriorContextMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemSeparationKey(I)Ljava/lang/Object;
    .locals 2
    .parameter "pos"

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, object:Ljava/lang/Object;
    iget-object v1, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v0

    .line 220
    .end local v0           #object:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getItemSeparationText(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "position"

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 229
    :cond_0
    return-object v0
.end method

.method public getItemViewProxy(I)Lcom/htc/opensense/plugin/ItemViewProxy;
    .locals 11
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 233
    invoke-static {}, Lcom/htc/opensense/plugin/ItemViewProxy;->obtain()Lcom/htc/opensense/plugin/ItemViewProxy;

    move-result-object v9

    .line 235
    .local v9, itemView:Lcom/htc/opensense/plugin/ItemViewProxy;
    if-eqz v9, :cond_3

    .line 237
    const/4 v7, 0x0

    .line 238
    .local v7, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v7, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 239
    .restart local v7       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v7, :cond_3

    .line 244
    const v0, 0x2090045

    invoke-virtual {v9, v0}, Lcom/htc/opensense/plugin/ItemViewProxy;->setItemLayout(I)V

    .line 245
    const v0, 0x20200fa

    const-string v1, "setImageBitmap"

    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v0, v1, v2}, Lcom/htc/opensense/plugin/ItemViewProxy;->setObject(ILjava/lang/String;Ljava/lang/Object;)V

    .line 251
    const-string v10, ""

    .line 252
    .local v10, szPhotoCount:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 254
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x20c01df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 266
    :goto_0
    const/4 v6, 0x1

    .line 267
    .local v6, bIsIdle:Z
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const/4 v6, 0x0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getHostContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCoverURL()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageGridBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 276
    .local v8, bitmap:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_1

    .line 278
    const v0, 0x202001a

    const-string v1, "setImageBitmap"

    invoke-virtual {v9, v0, v1, v8}, Lcom/htc/opensense/plugin/ItemViewProxy;->setObject(ILjava/lang/String;Ljava/lang/Object;)V

    .line 282
    :cond_1
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x20c01d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setName(Ljava/lang/String;)V

    .line 287
    :cond_2
    const v0, 0x2020010

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/htc/opensense/plugin/ItemViewProxy;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 288
    const v0, 0x2020014

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getHostContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCreateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/htc/opensense/plugin/ItemViewProxy;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 296
    .end local v6           #bIsIdle:Z
    .end local v7           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #szPhotoCount:Ljava/lang/String;
    :cond_3
    return-object v9

    .line 256
    .restart local v7       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v10       #szPhotoCount:Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCount()I

    move-result v0

    if-ne v4, v0, :cond_5

    .line 258
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b009c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 263
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b009d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public loadData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][loadData]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-super {p0}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->loadData()V

    .line 98
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][loadData]: ..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    .line 101
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    const/16 v0, 0x2761

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 111
    :goto_0
    iput v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mScrollState:I

    .line 112
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 114
    const/16 v0, 0x4ee9

    iput v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mUIState:I

    .line 116
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][loadData]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->syncBackgroundService()V

    goto :goto_0
.end method

.method public onContextItemSelected(ILcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;)Z
    .locals 1
    .parameter "contextMenuItemId"
    .parameter "info"

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public onErrorConnection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 425
    const-string v1, "ListAlbumsSocialNetwork"

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][onErrorConnection]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 427
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "isLoading"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 428
    const/16 v1, 0x4e8d

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 429
    return-void
.end method

.method public onErrorNoList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 433
    const-string v1, "ListAlbumsSocialNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ListAlbumsSocialNetwork][onErrorNoList]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mUIState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 435
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "isLoading"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 436
    const/16 v1, 0x2728

    invoke-virtual {p0, v1, v5, v4}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 437
    const/16 v1, 0x4e8d

    invoke-virtual {p0, v1, v5, v4}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 438
    return-void
.end method

.method public onItemClick(I)V
    .locals 10
    .parameter "pos"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v4, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 151
    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const-string v4, "ListAlbumsSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListAlbumsSocialNetwork][onItemClick]1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-eqz v0, :cond_0

    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v5

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v4, "ListAlbumsSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListAlbumsSocialNetwork][onItemClick]2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 162
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.htc.album.SocialNetwork.ActivityMainOnline"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v4, "online_scene"

    const-class v5, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v4, "from_outside"

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string v4, "service_name"

    iget-object v5, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v5, v5, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v5, "user_id"

    iget-object v4, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v4, v4, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v4, "album_id"

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v4, "album_name"

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    const-string v4, "flag_genuine"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getItemRequest()Ljava/lang/Object;

    move-result-object v3

    .line 176
    .local v3, obj:Ljava/lang/Object;
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_5

    .line 181
    const-string v5, "from_tabhost"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "from_tabhost"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    const-string v5, "from_albumhost"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "from_albumhost"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    const-string v5, "from_tmoFaves"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "from_tmoFaves"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    const-string v5, "listviewPos"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "listviewPos"

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string v5, "fromMainActivity"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "fromMainActivity"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    const-string v5, "user_name"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "user_name"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v5, "user_buddyicon"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "user_buddyicon"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v4, v3

    .line 193
    check-cast v4, Landroid/os/Bundle;

    const-string v5, "from_tmoFaves"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v9, v4, :cond_5

    .line 195
    const/4 v2, 0x0

    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v4, v3

    .line 196
    check-cast v4, Landroid/os/Bundle;

    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 197
    const-string v4, "ListAlbumsSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListAlbumsSocialNetwork][onItemClick]: facebook: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_3
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object v4, v3

    .line 200
    check-cast v4, Landroid/os/Bundle;

    sget-object v5, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 201
    const-string v4, "ListAlbumsSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListAlbumsSocialNetwork][onItemClick]: flickr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_4
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_URL:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 204
    const-string v4, "ListAlbumsSocialNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][ListAlbumsSocialNetwork][onItemClick]2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v5, "user_name"

    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    const-string v6, "user_name"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v4, "photo_id"

    check-cast v3, Landroid/os/Bundle;

    .end local v3           #obj:Ljava/lang/Object;
    const-string v5, "photo_id"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 211
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getHostContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 442
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 486
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->onMessageHandler(Landroid/os/Message;)V

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 445
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onRequestUserInfo()V

    goto :goto_0

    .line 448
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onRequestAlbumlist()V

    goto :goto_0

    .line 451
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onRequestRecentList()V

    goto :goto_0

    .line 454
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onRequestNextOnList()V

    goto :goto_0

    .line 457
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onSyncConnection()V

    goto :goto_0

    .line 460
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onSyncListComplete()V

    goto :goto_0

    .line 463
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onSyncPhotoComplete()V

    goto :goto_0

    .line 467
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getScrollState()Lcom/htc/opensense/plugin/HtcScrollState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->notifyDataSetChanged()V

    goto :goto_0

    .line 474
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onErrorConnection()V

    goto :goto_0

    .line 477
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onErrorNoList()V

    goto :goto_0

    .line 480
    :sswitch_a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->setListLoader(Z)V

    goto :goto_0

    .line 483
    :sswitch_b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->setListLoader(Z)V

    goto :goto_0

    .line 442
    nop

    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_a
        0x2728 -> :sswitch_b
        0x274c -> :sswitch_8
        0x2761 -> :sswitch_9
        0x4e21 -> :sswitch_0
        0x4e24 -> :sswitch_1
        0x4e2e -> :sswitch_2
        0x4e2f -> :sswitch_3
        0x4e84 -> :sswitch_4
        0x4e88 -> :sswitch_5
        0x4e89 -> :sswitch_6
        0x4e8d -> :sswitch_7
    .end sparse-switch
.end method

.method public onRequestAlbumlist()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 368
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][onRequestAlbumlist]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumList(Ljava/util/List;Z)Z

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    const/16 v0, 0x2761

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onRequestNextOnList()V
    .locals 2

    .prologue
    .line 385
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][onRequestNextOnList]:..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumNextOnList(Z)Z

    .line 388
    :cond_0
    return-void
.end method

.method public onRequestRecentList()V
    .locals 2

    .prologue
    .line 379
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][onRequestRecentList]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumRecentList(Z)Z

    .line 382
    :cond_0
    return-void
.end method

.method public onRequestUserInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 346
    const-string v2, "ListAlbumsSocialNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ListAlbumsSocialNetwork][onRequestUserInfo]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mUIState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 350
    .local v1, szUIDs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 351
    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPeopleOpFast([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    .line 355
    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 357
    const/16 v2, 0x4e24

    invoke-virtual {p0, v2, v6, v5}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 363
    :goto_1
    return-void

    .line 361
    :cond_1
    const/16 v2, 0x2761

    invoke-virtual {p0, v2, v6, v5}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public onSyncConnection()V
    .locals 3

    .prologue
    .line 391
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][onSyncConnection]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mUIState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/16 v0, 0x4e21

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 393
    return-void
.end method

.method public onSyncListComplete()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 397
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][onSyncListComplete]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mUIState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAlbumList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->syncListItem(Ljava/lang/Object;)V

    .line 402
    iget-boolean v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mIsLatest:Z

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iput-boolean v4, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    .line 405
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mPeopleOps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 407
    const/16 v0, 0x4e24

    invoke-virtual {p0, v0, v5, v3}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 413
    :goto_0
    iput-boolean v4, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mIsLatest:Z

    .line 416
    :cond_0
    return-void

    .line 411
    :cond_1
    const/16 v0, 0x2761

    invoke-virtual {p0, v0, v5, v3}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncPhotoComplete()V
    .locals 3

    .prologue
    .line 420
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 421
    return-void
.end method

.method public setDataBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 50
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][setDataBundle]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->setDataRequest(Ljava/lang/Object;)V

    .line 55
    :cond_0
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][setDataBundle]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected setDataRequest(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 59
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->setDataRequest(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 71
    :cond_0
    :goto_0
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: Display name\t\t\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: user ids\t\t\t\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: Enable Force update\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: Enable Recent list\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsEnableRecentList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "ListAlbumsSocialNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: Enable Sort\t\t\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsEnableSort:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][setDataRequest]: End "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b002c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getPluginContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b002d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->setScrollState(Lcom/htc/opensense/plugin/HtcScrollState;)V

    .line 82
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mScrollState:I

    invoke-virtual {p1}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/HtcScrollState;->getState()I

    move-result v0

    iput v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mScrollState:I

    .line 87
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mScrollState:I

    if-nez v0, :cond_0

    .line 90
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public syncBackgroundService()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 303
    const/4 v0, 0x0

    .line 306
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v3, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-object v3, v3, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->getDataHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v2

    if-ne v6, v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 310
    const-string v2, "ListAlbumsSocialNetwork"

    const-string v3, "[HTCAlbum][ListAlbumsSocialNetwork][syncBackgroundService]: no account..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mItemReuqested:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 312
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "isLoading"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 343
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v2

    if-ne v6, v2, :cond_2

    .line 318
    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    const-string v2, "ListAlbumsSocialNetwork"

    const-string v3, "[HTCAlbum][ListAlbumsSocialNetwork][syncBackgroundService]: no change just skip!!"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_2
    const-string v2, "ListAlbumsSocialNetwork"

    const-string v3, "[HTCAlbum][ListAlbumsSocialNetwork][syncBackgroundService]InitConnection.."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 331
    iget-object v2, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v6, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    const/16 v2, 0x2724

    invoke-virtual {p0, v2, v7, v5}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public syncListItem(Ljava/lang/Object;)V
    .locals 10
    .parameter "objList"

    .prologue
    const/4 v9, 0x0

    .line 542
    const/4 v0, 0x0

    .local v0, albumList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    move-object v0, p1

    .line 543
    check-cast v0, Ljava/util/List;

    .line 548
    const/4 v3, 0x0

    .line 549
    .local v3, refList:Ljava/util/List;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 551
    .local v4, tempList:Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 553
    :cond_0
    const-string v6, "ListAlbumsSocialNetwork"

    const-string v7, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: Empty..."

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :goto_0
    iget-object v3, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mList:Ljava/util/List;

    .line 582
    iput-object v4, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mList:Ljava/util/List;

    .line 583
    const-string v6, "ListAlbumsSocialNetwork"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: new list: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v6, "ListAlbumsSocialNetwork"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: clear old: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 589
    iget-object v1, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mItemReuqested:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 590
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "isLoading"

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 592
    const/16 v6, 0x4e8d

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v9}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 593
    return-void

    .line 557
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_1
    const/4 v5, 0x0

    .line 558
    .local v5, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_2

    .line 560
    new-instance v5, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local v5           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getProfile()Lcom/htc/opensense/social/data/Album;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    .line 561
    .restart local v5       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    sget-object v6, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 562
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 565
    :cond_2
    iget-object v6, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mServiceInfo:Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;

    iget-boolean v6, v6, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin$ServiceInfo;->mIsEnableSort:Z

    if-nez v6, :cond_3

    .line 567
    const-string v6, "ListAlbumsSocialNetwork"

    const-string v7, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: No sorting required..."

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :goto_2
    invoke-direct {p0}, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->setListCategory()V

    goto/16 :goto_0

    .line 571
    :cond_3
    const-string v6, "ListAlbumsSocialNetwork"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: Sorting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 573
    const-string v6, "ListAlbumsSocialNetwork"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ListAlbumsSocialNetwork][syncListItem]: Sorting complete: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public unloadData()V
    .locals 2

    .prologue
    .line 120
    const/16 v0, 0x4ee9

    iget v1, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mUIState:I

    if-eq v0, v1, :cond_0

    .line 122
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][unloadData]: skip..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 125
    :cond_0
    const/16 v0, 0x4eee

    iput v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mUIState:I

    .line 127
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][unloadData]:Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-super {p0}, Lcom/htc/album/SocialNetworkManager/AdapterBaseSocialNetworkPlugin;->unloadData()V

    .line 130
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/ListPluginAlbums/ListAlbumsSocialNetwork;->mFolderBackground:Landroid/graphics/Bitmap;

    .line 136
    :cond_1
    const-string v0, "ListAlbumsSocialNetwork"

    const-string v1, "[HTCAlbum][ListAlbumsSocialNetwork][unloadData]:End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
