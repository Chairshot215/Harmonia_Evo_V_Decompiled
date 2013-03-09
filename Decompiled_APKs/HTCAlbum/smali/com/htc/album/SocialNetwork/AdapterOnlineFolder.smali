.class public Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;
.super Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;
.source "AdapterOnlineFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AdapterOnlineFolder"


# instance fields
.field protected mAsyncInitData:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;

.field protected mDataBundle:Landroid/os/Bundle;

.field protected mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

.field private mIsInternal:Z

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

.field private mTList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;"
        }
    .end annotation
.end field

.field protected mUIState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 2
    .parameter "actParent"
    .parameter "handlerUI"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 41
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsInternal:Z

    .line 42
    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    .line 44
    const/16 v0, 0x4ee8

    iput v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    .line 45
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .line 47
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataBundle:Landroid/os/Bundle;

    .line 48
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mAsyncInitData:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mTList:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setListCategory()V
    .locals 3

    .prologue
    .line 640
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsFlagDisplay:Z

    if-nez v1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    const-string v1, "AdapterOnlineFolder"

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setListCategory]: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 651
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local v0           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>()V

    .line 652
    .restart local v0       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    sget-object v1, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 653
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorName(Ljava/lang/String;)V

    .line 654
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setListLoader(Z)V
    .locals 5
    .parameter "bIsEnable"

    .prologue
    .line 364
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsInternal:Z

    if-nez v2, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    const-string v2, "AdapterOnlineFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][AdapterOnlineFolder][setListLoader]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 374
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 377
    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    .line 379
    const-string v0, ""

    .line 381
    .local v0, txtLoading:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0032

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 383
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local v1           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-direct {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>()V

    .line 384
    .restart local v1       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    sget-object v2, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 385
    invoke-virtual {v1, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorName(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v0           #txtLoading:Ljava/lang/String;
    :cond_2
    const/16 v2, 0x4e8d

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 168
    :cond_0
    return v0
.end method

.method public getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-string v0, "AdapterOnlineFolder"

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/htc/sunny2/IMediaData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    return-object v1

    .line 182
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onErrorConnection()V
    .locals 2

    .prologue
    .line 522
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onErrorConnection]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->flagUpdateIsLoading(Z)V

    .line 524
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onNotifyUpdateComplete()V

    .line 525
    return-void
.end method

.method public onErrorNoList()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 529
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onErrorNoList]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    if-nez v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iput-boolean v5, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    .line 533
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v0, :cond_2

    .line 535
    :cond_1
    const/16 v0, 0x4e24

    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 541
    :goto_0
    iput-boolean v5, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    .line 549
    :goto_1
    return-void

    .line 539
    :cond_2
    const/16 v0, 0x2761

    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 545
    :cond_3
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->flagUpdateIsLoading(Z)V

    .line 546
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 547
    const/16 v0, 0x2763

    invoke-virtual {p0, v0, v4, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public onLoadData(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V
    .locals 7
    .parameter "downloadListener"

    .prologue
    const/16 v6, 0x4ee9

    .line 64
    iget v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    if-ne v6, v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mAsyncInitData:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mAsyncInitData:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;

    invoke-virtual {v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    .line 70
    :cond_2
    const-string v2, "AdapterOnlineFolder"

    const-string v3, "[HTCAlbum][AdapterOnlineFolder][onLoadData]:Begin"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onLoadData()V

    .line 73
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v2}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onDeInit()V

    .line 75
    :cond_3
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v3, v3, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 76
    .local v1, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v1, :cond_4

    .line 77
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/album/SocialNetworkManager/OpenSenseUIHandler;-><init>(Landroid/os/Handler;)V

    invoke-static {v2, v3, v4}, Lcom/htc/album/SocialNetworkManager/DataPluginHelper;->createAlbumListDataPlugin(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense/album/plugin/IUIHandler;)Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .line 108
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onResume()V

    .line 109
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v2, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setImageDownloadedListener(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 110
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setMaxDownloadBuffer(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->syncBackgroundService()V

    .line 119
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mScrollState:I

    .line 120
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->flagUpdateIsLoading(Z)V

    .line 122
    iput v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    .line 123
    const-string v2, "AdapterOnlineFolder"

    const-string v3, "[HTCAlbum][AdapterOnlineFolder][onLoadData]: End"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AdapterOnlineFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][AdapterOnlineFolder][onLoadData]2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mContext:Landroid/content/Context;

    .line 307
    .local v0, context:Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    :goto_0
    :sswitch_0
    return-void

    .line 309
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 357
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 312
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onRequestUserInfo()V

    goto :goto_0

    .line 315
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onRequestAlbumlist()V

    goto :goto_0

    .line 318
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onRequestRecentList()V

    goto :goto_0

    .line 321
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onRequestNextOnList()V

    goto :goto_0

    .line 324
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onSyncConnection()V

    goto :goto_0

    .line 327
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onSyncListComplete()V

    goto :goto_0

    .line 330
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 342
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onErrorConnection()V

    goto :goto_0

    .line 345
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onErrorNoList()V

    goto :goto_0

    .line 348
    :sswitch_a
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setListLoader(Z)V

    goto :goto_0

    .line 351
    :sswitch_b
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setListLoader(Z)V

    goto :goto_0

    .line 354
    :sswitch_c
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->syncBackgroundService()V

    goto :goto_0

    .line 309
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_a
        0x2728 -> :sswitch_b
        0x274c -> :sswitch_8
        0x2761 -> :sswitch_9
        0x4e21 -> :sswitch_1
        0x4e24 -> :sswitch_2
        0x4e2e -> :sswitch_3
        0x4e2f -> :sswitch_4
        0x4e84 -> :sswitch_5
        0x4e88 -> :sswitch_6
        0x4e89 -> :sswitch_7
        0x4e8d -> :sswitch_0
        0x4ea2 -> :sswitch_c
    .end sparse-switch
.end method

.method public onRequestAlbumlist()V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 415
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onRequestAlbumlist]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onRequestAlbumlist]: force: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumList(Ljava/util/List;Z)Z

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    const/16 v0, 0x2761

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onRequestNextOnList()V
    .locals 2

    .prologue
    .line 433
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onRequestNextOnList]:..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumNextOnList(Z)Z

    .line 436
    :cond_0
    return-void
.end method

.method public onRequestRecentList()V
    .locals 2

    .prologue
    .line 427
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][onRequestRecentList]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumRecentList(Z)Z

    .line 430
    :cond_0
    return-void
.end method

.method public onRequestUserInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 393
    const-string v2, "AdapterOnlineFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][AdapterOnlineFolder][onRequestUserInfo]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 397
    .local v1, szUIDs:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 398
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPeopleOpFast([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    .line 402
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 404
    const/16 v2, 0x4e24

    invoke-virtual {p0, v2, v6, v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 410
    :goto_1
    return-void

    .line 408
    :cond_1
    const/16 v2, 0x2761

    invoke-virtual {p0, v2, v6, v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public onSyncConnection()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 439
    const-string v4, "AdapterOnlineFolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][AdapterOnlineFolder][onSyncConnection]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v4, :cond_4

    .line 443
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v6, v6, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 444
    .local v3, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    const/4 v0, 0x0

    .line 446
    .local v0, account:[Landroid/accounts/Account;
    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getAccountType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 448
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 449
    .local v1, accountMgr:Landroid/accounts/AccountManager;
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 452
    .end local v1           #accountMgr:Landroid/accounts/AccountManager;
    :cond_0
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-nez v0, :cond_3

    move-object v4, v5

    :goto_0
    invoke-virtual {v6, v4}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->getActiveUser(Landroid/accounts/Account;)Lcom/htc/opensense/album/plugin/PersonData;

    move-result-object v2

    .line 453
    .local v2, pdata:Lcom/htc/opensense/album/plugin/PersonData;
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 455
    :cond_1
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    .line 456
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v4, v4, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/htc/opensense/album/plugin/PersonData;->uid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_2
    const/16 v4, 0x4e24

    invoke-virtual {p0, v4, v5, v8}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 463
    .end local v0           #account:[Landroid/accounts/Account;
    .end local v2           #pdata:Lcom/htc/opensense/album/plugin/PersonData;
    .end local v3           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :goto_1
    return-void

    .line 452
    .restart local v0       #account:[Landroid/accounts/Account;
    .restart local v3       #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_3
    aget-object v4, v0, v8

    goto :goto_0

    .line 462
    .end local v0           #account:[Landroid/accounts/Account;
    .end local v3           #plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    :cond_4
    const/16 v4, 0x4e21

    invoke-virtual {p0, v4, v5, v8}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method public onSyncListComplete()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 467
    const-string v4, "AdapterOnlineFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][AdapterOnlineFolder][onSyncListComplete]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v4, :cond_5

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, bIsFirstTime:Z
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 473
    const/4 v0, 0x1

    .line 474
    :cond_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAlbumList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->syncListItem(Ljava/lang/Object;)V

    .line 475
    iget-boolean v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    if-nez v4, :cond_4

    .line 477
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iput-boolean v2, v4, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    .line 478
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v4}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onEnableCacheList()Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    .line 479
    .local v1, pluginEnableCache:Z
    :goto_0
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mPeopleOps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_1
    if-eqz v1, :cond_7

    .line 481
    :cond_2
    const/16 v4, 0x4e24

    invoke-virtual {p0, v4, v7, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 487
    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsLatest:Z

    .line 489
    .end local v1           #pluginEnableCache:Z
    :cond_4
    if-eqz v0, :cond_8

    .line 490
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onNotifyUpdateComplete()V

    .line 495
    .end local v0           #bIsFirstTime:Z
    :cond_5
    :goto_2
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onVerifyImageStatus(I)V

    .line 496
    return-void

    .restart local v0       #bIsFirstTime:Z
    :cond_6
    move v1, v3

    .line 478
    goto :goto_0

    .line 483
    .restart local v1       #pluginEnableCache:Z
    :cond_7
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-nez v4, :cond_3

    .line 485
    const/16 v4, 0x2761

    invoke-virtual {p0, v4, v7, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1

    .line 491
    .end local v1           #pluginEnableCache:Z
    :cond_8
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 492
    const/16 v2, 0x4e88

    invoke-virtual {p0, v2, v7, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_2
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 501
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 502
    .local v1, bundleNotify:Landroid/os/Bundle;
    const-string v4, "index_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 503
    .local v3, nIndex:I
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .line 504
    .local v0, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-nez v0, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    const/4 v2, 0x0

    .line 509
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v4, :cond_0

    .line 511
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v2

    .line 512
    iget-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 516
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_0
.end method

.method public onUnloadData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 128
    const/16 v1, 0x4ee9

    iget v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    if-eq v1, v2, :cond_0

    .line 130
    const-string v1, "AdapterOnlineFolder"

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onUnloadData]: skip..."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 133
    :cond_0
    const/16 v1, 0x4eee

    iput v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIState:I

    .line 135
    const-string v1, "AdapterOnlineFolder"

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onUnloadData]:Begin"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onUnloadData()V

    .line 142
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mAsyncInitData:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mAsyncInitData:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;->cancel(Z)Z

    .line 145
    iput-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mAsyncInitData:Lcom/htc/album/SocialNetwork/AdapterOnlineFolder$AsyncInitDataPlugin;

    .line 151
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onDeInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_1
    iput-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .line 159
    const-string v1, "AdapterOnlineFolder"

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][onUnloadData]:End"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AdapterOnlineFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterOnlineFolder][onUnloadData]1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setDataBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 279
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][setDataBundle]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    if-eqz p1, :cond_0

    .line 282
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataBundle:Landroid/os/Bundle;

    .line 283
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setDataRequest(Ljava/lang/Object;)V

    .line 285
    :cond_0
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][setDataBundle]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 0
    .parameter "plugin"

    .prologue
    .line 198
    check-cast p1, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .end local p1
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    .line 199
    return-void
.end method

.method public setDataRequest(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 289
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->setDataRequest(Ljava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mContext:Landroid/content/Context;

    const v2, 0x7f0b002a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 297
    :cond_0
    :goto_0
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: Display name\t\t\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: Enable Force update\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: Enable Recent list\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableRecentList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: Enable Sort\t\t\t: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableSort:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "AdapterOnlineFolder"

    const-string v1, "[HTCAlbum][AdapterOnlineFolder][setDataRequest]: End "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mContext:Landroid/content/Context;

    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setInternal(Z)V
    .locals 3
    .parameter "bIsInternal"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsInternal:Z

    .line 59
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setInternal]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mIsInternal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setScrollState(II)V
    .locals 4
    .parameter "nScrollState"
    .parameter "nFirstIndex"

    .prologue
    const/16 v3, 0x4f4d

    .line 658
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setScrollState]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIScrollState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIScrollState:I

    if-ne v3, v0, :cond_2

    iget v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mFirstVisibleIndex:I

    if-eq v0, p2, :cond_0

    .line 665
    :cond_2
    iput p1, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIScrollState:I

    .line 666
    iput p2, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mFirstVisibleIndex:I

    .line 670
    iget v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mUIScrollState:I

    if-ne v3, v0, :cond_3

    .line 672
    const-string v0, "AdapterOnlineFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][AdapterOnlineFolder][setScrollState]: IDLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 674
    invoke-virtual {p0, p2}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onVerifyImageStatus(I)V

    goto :goto_0

    .line 678
    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/16 v1, 0x4f4e

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    goto :goto_0
.end method

.method public setVisibleRange(II)V
    .locals 0
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 688
    return-void
.end method

.method public syncBackgroundService()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 207
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v7, v7, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getOpenSenseTabPlugin(Ljava/lang/String;)Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 208
    .local v3, plugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/htc/opensense/plugin/TabPluginRemote;->getAccountType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    move v2, v4

    .line 210
    .local v2, needToCheckAccount:Z
    :goto_0
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v6, v6, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v6, v6, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 212
    :cond_0
    const/16 v4, 0x2761

    invoke-virtual {p0, v4, v9, v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 276
    :cond_1
    :goto_1
    return-void

    .end local v2           #needToCheckAccount:Z
    :cond_2
    move v2, v5

    .line 208
    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0

    .line 217
    .restart local v2       #needToCheckAccount:Z
    :cond_4
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-nez v6, :cond_5

    if-eqz v2, :cond_5

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v6, v6, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 222
    :cond_5
    const-string v6, "AdapterOnlineFolder"

    const-string v7, "[syncBackgroundService] begin..."

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x0

    .line 227
    .local v0, bResult:Z
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v7, v7, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->getDataHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v6

    if-ne v4, v6, :cond_1

    .line 229
    if-eqz v2, :cond_6

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v6

    if-nez v6, :cond_6

    .line 231
    const-string v4, "AdapterOnlineFolder"

    const-string v6, "[HTCAlbum][AdapterOnlineFolder][syncBackgroundService]: no account..."

    invoke-static {v4, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0, v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->flagUpdateIsLoading(Z)V

    goto :goto_1

    .line 236
    :cond_6
    if-eqz v2, :cond_7

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v6

    if-ne v4, v6, :cond_7

    .line 238
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v4

    if-nez v4, :cond_1

    .line 240
    const-string v4, "AdapterOnlineFolder"

    const-string v5, "[HTCAlbum][AdapterOnlineFolder][syncBackgroundService]: no change just skip!!"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 249
    :cond_7
    const-string v6, "AdapterOnlineFolder"

    const-string v7, "[HTCAlbum][AdapterOnlineFolder][syncBackgroundService]InitConnection.."

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    if-eqz v2, :cond_9

    .line 251
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 255
    :goto_2
    const/4 v1, 0x0

    .line 257
    .local v1, bret:Z
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v6, :cond_a

    .line 259
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    move-result v1

    .line 269
    :cond_8
    :goto_3
    if-eqz v1, :cond_1

    .line 271
    const/16 v4, 0x2724

    invoke-virtual {p0, v4, v9, v5}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1

    .line 253
    .end local v1           #bret:Z
    :cond_9
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveDummyAccount()V

    goto :goto_2

    .line 263
    .restart local v1       #bret:Z
    :cond_a
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v6, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3
.end method

.method protected syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    .line 694
    return-void
.end method

.method public syncListItem(Ljava/lang/Object;)V
    .locals 12
    .parameter "objList"

    .prologue
    const/4 v11, 0x0

    .line 554
    const/4 v0, 0x0

    .local v0, albumList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    move-object v0, p1

    .line 555
    check-cast v0, Ljava/util/List;

    .line 560
    const/4 v6, 0x0

    .line 561
    .local v6, refList:Ljava/util/List;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 563
    .local v7, tempList:Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 565
    :cond_0
    const-string v8, "AdapterOnlineFolder"

    const-string v9, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: Empty..."

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    :goto_0
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mList:Ljava/util/List;

    .line 628
    iput-object v7, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mList:Ljava/util/List;

    .line 629
    const-string v8, "AdapterOnlineFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: new list: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v8, "AdapterOnlineFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: clear old: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 635
    invoke-virtual {p0, v11}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->flagUpdateIsLoading(Z)V

    .line 636
    :goto_1
    return-void

    .line 571
    :cond_1
    const/4 v1, 0x0

    .line 572
    .local v1, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v4, 0x0

    .line 573
    .local v4, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    const/4 v5, 0x0

    .local v5, index:I
    move-object v2, v1

    .end local v1           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .local v2, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :goto_2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_7

    .line 575
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getProfile()Lcom/htc/opensense/social/data/Album;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .end local v2           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v1       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :try_start_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getPID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setPID(Ljava/lang/String;)V

    .line 577
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 578
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mContext:Landroid/content/Context;

    const v9, 0x20c01d9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setName(Ljava/lang/String;)V

    .line 580
    :cond_2
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 581
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mContext:Landroid/content/Context;

    const v9, 0x7f0b009e

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setName(Ljava/lang/String;)V

    .line 583
    :cond_3
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 584
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mContext:Landroid/content/Context;

    const v9, 0x7f0b009f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setName(Ljava/lang/String;)V

    .line 586
    :cond_4
    invoke-virtual {v1, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setIndex(I)V

    .line 587
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->getCreateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setDateTime(Ljava/lang/String;)V

    .line 588
    sget-object v8, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v1, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 590
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v8, :cond_5

    .line 591
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v8, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v4

    .line 593
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 595
    iget-object v8, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-eqz v8, :cond_6

    .line 597
    iget-object v8, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v9, v4, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v1, v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 601
    :cond_6
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 573
    add-int/lit8 v5, v5, 0x1

    move-object v2, v1

    .end local v1           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v2       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    goto/16 :goto_2

    .line 604
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 606
    .end local v2           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v1       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .local v3, e:Ljava/lang/Exception;
    :goto_3
    const-string v8, "AdapterOnlineFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][GridAlbumSocialNetwork][syncListItem] Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/16 v8, 0x4e24

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p0, v8, v9, v11}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 611
    .end local v1           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :cond_7
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v8, v8, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableSort:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v8, :cond_9

    .line 613
    :cond_8
    const-string v8, "AdapterOnlineFolder"

    const-string v9, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: No sorting required..."

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :goto_4
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->setListCategory()V

    goto/16 :goto_0

    .line 617
    :cond_9
    const-string v8, "AdapterOnlineFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: Sorting: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 619
    const-string v8, "AdapterOnlineFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][AdapterOnlineFolder][syncListItem]: Sorting complete: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/album/SocialNetwork/AdapterOnlineFolder;->mList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 604
    .end local v2           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v1       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :catch_1
    move-exception v3

    goto :goto_3
.end method
