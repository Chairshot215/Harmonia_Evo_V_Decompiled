.class public Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;
.super Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;
.source "ListViewAdapterFriends.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

.field protected mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .parameter "actParent"
    .parameter "szServiceName"
    .parameter "handlerUI"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;-><init>(Landroid/app/Activity;)V

    .line 33
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    .line 34
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .line 42
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->setUIHandler(Landroid/os/Handler;)V

    .line 43
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iput-object p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getActiveUser()Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .locals 3

    .prologue
    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 531
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 534
    .restart local v0       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_0
    return-object v0
.end method

.method public getDataPlugin()Lcom/htc/opensense/album/plugin/FriendListPluginBase;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    return-object v0
.end method

.method public getFriendsCount()I
    .locals 3

    .prologue
    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, nCount:I
    const/4 v1, 0x0

    .line 540
    .local v1, peopleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedFriendList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 542
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 544
    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "pos"

    .prologue
    .line 506
    const/4 v0, 0x0

    .line 508
    .local v0, nType:I
    const/4 v2, 0x0

    .line 509
    .local v2, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 511
    .restart local v2       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    .line 522
    .end local v0           #nType:I
    .local v1, nType:I
    :goto_0
    return v1

    .line 517
    .end local v1           #nType:I
    .restart local v0       #nType:I
    :cond_1
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 518
    const/4 v0, 0x1

    :cond_2
    :goto_1
    move v1, v0

    .line 522
    .end local v0           #nType:I
    .restart local v1       #nType:I
    goto :goto_0

    .line 519
    .end local v1           #nType:I
    .restart local v0       #nType:I
    :cond_3
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 520
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public getPositionForSection(I)I
    .locals 2
    .parameter "arg0"

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, nPosition:I
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->getPositionForSection(I)I

    move-result v0

    .line 480
    :cond_0
    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 489
    const/4 v0, 0x0

    .line 491
    .local v0, objList:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 496
    :cond_0
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 453
    const/4 v0, 0x1

    .line 455
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 456
    :cond_0
    const/4 v2, 0x0

    .line 471
    :goto_0
    return v2

    .line 458
    :cond_1
    const/4 v1, 0x0

    .line 460
    .local v1, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .restart local v1       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v1, :cond_3

    .line 462
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v2, v3, :cond_3

    .line 466
    :cond_2
    const/4 v0, 0x0

    :cond_3
    move v2, v0

    .line 471
    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    .line 52
    new-instance v0, Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-direct {v0}, Lcom/htc/opensense2/album/util/IndexerAlphabet;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .line 69
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    .line 70
    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    .line 71
    return-void
.end method

.method protected onErrorConnection()V
    .locals 3

    .prologue
    .line 316
    sget-object v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onErrorConnection]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    const/16 v0, 0x274c

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    .line 321
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected onErrorConnectionRetry()V
    .locals 2

    .prologue
    .line 325
    sget-object v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onErrorConnectionRetry]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected onErrorNoActiveUser()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 336
    sget-object v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onErrorNoActiveUser]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->resetActiveAccount()V

    .line 344
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mConnectionRetry:I

    if-lez v0, :cond_2

    .line 346
    const/16 v0, 0x2751

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 347
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mConnectionRetry:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mConnectionRetry:I

    goto :goto_0

    .line 351
    :cond_2
    const/16 v0, 0x2760

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    .line 352
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 353
    const/16 v0, 0x274f

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected onErrorNoList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 360
    sget-object v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewAdapterFriends][onErrorNoList]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/16 v1, 0x4eee

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v1, v2, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 367
    const/16 v1, 0x2761

    iput v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    .line 369
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 371
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v0

    .line 372
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    if-eqz v0, :cond_2

    .line 374
    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->syncListItem(Ljava/lang/Object;)V

    .line 379
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->syncListItem(Ljava/lang/Object;)V

    .line 381
    const/16 v1, 0x4e8d

    invoke-virtual {p0, v1, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 382
    const/16 v1, 0x4e88

    invoke-virtual {p0, v1, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 389
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 431
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onMessageHandler(Landroid/os/Message;)V

    .line 434
    :goto_0
    return-void

    .line 392
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onRequestAccountManager()V

    goto :goto_0

    .line 395
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onRequestActiveUser(Landroid/os/Message;)V

    goto :goto_0

    .line 398
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onRequestFriendlist(Landroid/os/Message;)V

    goto :goto_0

    .line 401
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onRequestDataUpdate(Landroid/os/Message;)V

    goto :goto_0

    .line 404
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onSyncConnection()V

    goto :goto_0

    .line 407
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onSyncActiveUser(Landroid/os/Message;)V

    goto :goto_0

    .line 410
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onSyncListComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 413
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 416
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onErrorConnection()V

    goto :goto_0

    .line 419
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onErrorConnectionRetry()V

    goto :goto_0

    .line 422
    :sswitch_a
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onErrorNoActiveUser()V

    goto :goto_0

    .line 425
    :sswitch_b
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onErrorNoList()V

    goto :goto_0

    .line 428
    :sswitch_c
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onScrollStateIdle()V

    goto :goto_0

    .line 389
    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_8
        0x2751 -> :sswitch_9
        0x2760 -> :sswitch_a
        0x2761 -> :sswitch_b
        0x4e20 -> :sswitch_1
        0x4e23 -> :sswitch_2
        0x4e28 -> :sswitch_3
        0x4e2d -> :sswitch_0
        0x4e84 -> :sswitch_4
        0x4e85 -> :sswitch_5
        0x4e88 -> :sswitch_6
        0x4e89 -> :sswitch_7
        0x4f4d -> :sswitch_c
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    .line 64
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 65
    return-void
.end method

.method protected onRequestAccountManager()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitAccountLogin(Landroid/app/Activity;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected onRequestActiveUser(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 129
    sget-object v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onRequestActiveUser]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getActiveUser(Z)Z

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getActiveUser(Z)Z

    goto :goto_0
.end method

.method protected onRequestDataUpdate(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x4e23

    const/4 v4, 0x0

    const/16 v3, 0x2724

    const/4 v2, 0x0

    .line 154
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 160
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    sparse-switch v0, :sswitch_data_0

    .line 187
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 188
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 164
    :sswitch_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 176
    :sswitch_1
    const/16 v0, 0x4e20

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 177
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 182
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 183
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 160
    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_0
        0x2760 -> :sswitch_1
        0x2761 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRequestFriendlist(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 142
    sget-object v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ListViewAdapterFriends][onRequestFriendlist]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getFriendList(Lcom/htc/opensense/social/PersonOp;Z)Z

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getFriendList(Lcom/htc/opensense/social/PersonOp;Z)Z

    goto :goto_0
.end method

.method public onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "nPos"
    .parameter "aPerson"
    .parameter "bIsIdle"

    .prologue
    .line 194
    const/4 v7, 0x0

    .line 196
    .local v7, bitmap:Landroid/graphics/Bitmap;
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_0

    move-object v8, v7

    .line 220
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .local v8, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v8

    .line 199
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    move-object v8, v7

    .line 200
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 213
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v8, v7

    .line 220
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mConnectionRetry:I

    .line 58
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    .line 60
    return-void
.end method

.method public onScrollStateIdle()V
    .locals 3

    .prologue
    const/16 v2, 0x4f4d

    .line 438
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-eq v2, v0, :cond_0

    .line 445
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    .line 446
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 447
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    .line 448
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected onSyncActiveUser(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x4e23

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    sget-object v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onSyncActiveUser]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 266
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 263
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 265
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected onSyncConnection()V
    .locals 7

    .prologue
    const/16 v6, 0x4e84

    const/16 v5, 0x4e20

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 224
    sget-object v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onSyncConnection]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isFlaggedLoginAction()Z

    move-result v0

    if-ne v3, v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->resetFlagLoginAction()V

    .line 234
    const/16 v0, 0x7d0

    invoke-virtual {p0, v6, v4, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistActiveUserCache()Z

    move-result v0

    if-ne v3, v0, :cond_3

    .line 241
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 248
    :goto_1
    const/16 v0, 0x2724

    invoke-virtual {p0, v0, v4, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 249
    invoke-virtual {p0, v6, v4, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 245
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method protected onSyncListComplete()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method protected onSyncListComplete(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    sget-object v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onSyncListComplete]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 282
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->syncListItem(Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedFriendList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->syncListItem(Ljava/lang/Object;)V

    .line 285
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v4, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 286
    const/16 v0, 0x4e88

    invoke-virtual {p0, v0, v4, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 291
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 293
    const/16 v0, 0x4e20

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 298
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const/16 v0, 0x4f4d

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-ne v0, v1, :cond_0

    .line 305
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/FriendListPluginBase;)V
    .locals 0
    .parameter "plugin"

    .prologue
    .line 712
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    .line 713
    return-void
.end method

.method public setScrollState(II)V
    .locals 4
    .parameter "nScrollState"
    .parameter "nFirstIndex"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x4f4d

    .line 677
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iput p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mFirstVisibleIndex:I

    .line 688
    if-nez p1, :cond_2

    .line 689
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    .line 693
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 698
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-ne v2, v0, :cond_3

    .line 700
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    .line 701
    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataRemoveNotify(I)V

    .line 702
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 691
    :cond_2
    const/16 v0, 0x4f4e

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    goto :goto_1

    .line 706
    :cond_3
    const/16 v0, 0xfa0

    invoke-virtual {p0, v2, v3, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setVisibleRange(II)V

    .line 672
    :cond_0
    return-void
.end method

.method protected syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, bResult:Z
    const/16 v1, 0x4eee

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v1, v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getDataHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v1

    if-ne v5, v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 87
    sget-object v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewAdapterFriends][syncBackgroundService]: no account..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 89
    const/16 v1, 0x274f

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v1

    if-nez v1, :cond_3

    .line 95
    sget-object v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewAdapterFriends][syncBackgroundService]: no change just skip!!"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_3
    sget-object v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewAdapterFriends][syncBackgroundService]InitConnection.."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 101
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 103
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v1, :cond_4

    .line 105
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    goto :goto_0

    .line 109
    :cond_4
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1, v5, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method protected syncListItem(Ljava/lang/Object;)V
    .locals 11
    .parameter "objList"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 555
    const/4 v3, 0x0

    .local v3, peopleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    move-object v3, p1

    .line 556
    check-cast v3, Ljava/util/List;

    .line 558
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v6, :cond_0

    .line 559
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->onRelease()V

    .line 561
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getItemRequest()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    .line 563
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, aPerson:Lcom/htc/opensense/social/PersonOp;
    const/4 v4, 0x0

    .line 568
    .local v4, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v4           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-direct {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 569
    .restart local v4       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    sget-object v6, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 570
    const v6, 0x20c01d7

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setNameByResource(I)V

    .line 571
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v4           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getProfile()Lcom/htc/opensense/social/data/Person;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getDataHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    .line 577
    .restart local v4       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    sget-object v6, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 578
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v4           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-direct {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 584
    .restart local v4       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    sget-object v6, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 585
    const v6, 0x20c01d8

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setNameByResource(I)V

    .line 586
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    .end local v0           #aPerson:Lcom/htc/opensense/social/PersonOp;
    .end local v4           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_1
    :goto_0
    const/16 v6, 0x4e8d

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v9}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 662
    :goto_1
    return-void

    .line 590
    :cond_2
    if-nez p1, :cond_3

    .line 592
    const/4 v4, 0x0

    .line 594
    .restart local v4       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v4           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-direct {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 595
    .restart local v4       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    sget-object v6, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 596
    const v6, 0x7f0b0040

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setNameByResource(I)V

    .line 597
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 603
    .end local v4           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_3
    const/4 v4, 0x0

    .line 604
    .restart local v4       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v2, 0x0

    .local v2, nIndex:I
    move-object v5, v4

    .end local v4           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .local v5, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :goto_2
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_1

    .line 606
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v6

    if-nez v6, :cond_5

    move-object v4, v5

    .line 604
    .end local v5           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v4       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object v5, v4

    .end local v4           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v5       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    goto :goto_2

    .line 609
    :cond_5
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getProfile()Lcom/htc/opensense/social/data/Person;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getDataHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 611
    .end local v5           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v4       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :try_start_1
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v10, v6, :cond_6

    .line 613
    sget-object v6, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 620
    :goto_4
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v6, :cond_4

    .line 624
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->setSyncSection(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 627
    :catch_0
    move-exception v1

    .line 628
    .local v1, e:Ljava/lang/Exception;
    :goto_5
    sget-object v6, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][ListViewAdapterFriends][syncListItem] Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const/16 v6, 0x4e20

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v9}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_1

    .line 617
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    :try_start_2
    sget-object v6, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 636
    .end local v2           #nIndex:I
    .end local v4           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_7
    const/4 v4, 0x0

    .line 637
    .restart local v4       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v2, 0x0

    .restart local v2       #nIndex:I
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_1

    .line 639
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v6

    if-nez v6, :cond_9

    .line 637
    :cond_8
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 642
    :cond_9
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v4           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getProfile()Lcom/htc/opensense/social/data/Person;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->getDataHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    .line 644
    .restart local v4       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v10, v6, :cond_a

    .line 646
    sget-object v6, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 653
    :goto_8
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v6, :cond_8

    .line 657
    iget-object v6, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->setSyncSection(Ljava/lang/String;I)V

    goto :goto_7

    .line 650
    :cond_a
    sget-object v6, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v4, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    goto :goto_8

    .line 627
    .end local v4           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v5       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v4       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    goto/16 :goto_5
.end method
