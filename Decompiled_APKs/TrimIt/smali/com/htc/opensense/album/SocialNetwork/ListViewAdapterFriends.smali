.class public Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;
.super Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;
.source "ListViewAdapterFriends.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork",
        "<",
        "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .parameter "actParent"
    .parameter "szServiceName"
    .parameter "handlerUI"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;-><init>(Landroid/app/Activity;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    .line 39
    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->setUIHandler(Landroid/os/Handler;)V

    .line 40
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iput-object p2, v0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getActiveUser()Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    .locals 3

    .prologue
    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, aPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .line 506
    .restart local v0       #aPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    :cond_0
    return-object v0
.end method

.method public getFriendsCount()I
    .locals 3

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, nCount:I
    const/4 v1, 0x0

    .line 512
    .local v1, peopleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getCachedFriendList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 514
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 516
    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "pos"

    .prologue
    .line 478
    const/4 v0, 0x0

    .line 480
    .local v0, nType:I
    const/4 v2, 0x0

    .line 481
    .local v2, wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    check-cast v2, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .line 483
    .restart local v2       #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense/album/util/SeparatorTag;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v0

    .line 494
    .end local v0           #nType:I
    .local v1, nType:I
    :goto_0
    return v1

    .line 489
    .end local v1           #nType:I
    .restart local v0       #nType:I
    :cond_1
    sget-object v3, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense/album/util/SeparatorTag;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense/album/util/SeparatorTag;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 490
    const/4 v0, 0x1

    :cond_2
    :goto_1
    move v1, v0

    .line 494
    .end local v0           #nType:I
    .restart local v1       #nType:I
    goto :goto_0

    .line 491
    .end local v1           #nType:I
    .restart local v0       #nType:I
    :cond_3
    sget-object v3, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense/album/util/SeparatorTag;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense/album/util/SeparatorTag;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 492
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public getPositionForSection(I)I
    .locals 2
    .parameter "arg0"

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, nPosition:I
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/util/IndexerAlphabet;->getPositionForSection(I)I

    move-result v0

    .line 452
    :cond_0
    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 461
    const/4 v0, 0x0

    .line 463
    .local v0, objList:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/IndexerAlphabet;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 468
    :cond_0
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 425
    const/4 v0, 0x1

    .line 427
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 428
    :cond_0
    const/4 v2, 0x0

    .line 443
    :goto_0
    return v2

    .line 430
    :cond_1
    const/4 v1, 0x0

    .line 432
    .local v1, wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    check-cast v1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .restart local v1       #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    if-eqz v1, :cond_3

    .line 434
    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense/album/util/SeparatorTag;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense/album/util/SeparatorTag;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense/album/util/SeparatorTag;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense/album/util/SeparatorTag;

    if-ne v2, v3, :cond_3

    .line 438
    :cond_2
    const/4 v0, 0x0

    :cond_3
    move v2, v0

    .line 443
    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    .line 49
    new-instance v0, Lcom/htc/opensense/album/util/IndexerAlphabet;

    invoke-direct {v0}, Lcom/htc/opensense/album/util/IndexerAlphabet;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    .line 67
    return-void
.end method

.method protected onErrorConnection()V
    .locals 3

    .prologue
    .line 291
    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onErrorConnection]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/16 v0, 0x4eea

    iget v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    const/16 v0, 0x274c

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mLastErrorState:I

    .line 296
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected onErrorConnectionRetry()V
    .locals 2

    .prologue
    .line 300
    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onErrorConnectionRetry]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/16 v0, 0x4eea

    iget v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method protected onErrorNoActiveUser()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 311
    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onErrorNoActiveUser]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const/16 v0, 0x4eea

    iget v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->resetActiveAccount()V

    .line 319
    iget v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mConnectionRetry:I

    if-lez v0, :cond_2

    .line 321
    const/16 v0, 0x2751

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 322
    iget v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mConnectionRetry:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mConnectionRetry:I

    goto :goto_0

    .line 326
    :cond_2
    const/16 v0, 0x2760

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mLastErrorState:I

    .line 327
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 328
    const/16 v0, 0x274f

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected onErrorNoList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 335
    sget-object v1, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewAdapterFriends][onErrorNoList]: "

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/16 v1, 0x4eea

    iget v2, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIState:I

    if-ne v1, v2, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 342
    const/16 v1, 0x2761

    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mLastErrorState:I

    .line 344
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 346
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v0

    .line 347
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->syncListItem(Ljava/lang/Object;)V

    .line 354
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->syncListItem(Ljava/lang/Object;)V

    .line 356
    const/16 v1, 0x4e8d

    invoke-virtual {p0, v1, v3, v4}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 357
    const/16 v1, 0x2728

    invoke-virtual {p0, v1, v3, v4}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 361
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 403
    invoke-super {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onMessageHandler(Landroid/os/Message;)V

    .line 406
    :goto_0
    return-void

    .line 364
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onRequestAccountManager()V

    goto :goto_0

    .line 367
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onRequestActiveUser(Landroid/os/Message;)V

    goto :goto_0

    .line 370
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onRequestFriendlist(Landroid/os/Message;)V

    goto :goto_0

    .line 373
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onRequestDataUpdate(Landroid/os/Message;)V

    goto :goto_0

    .line 376
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onSyncConnection()V

    goto :goto_0

    .line 379
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onSyncActiveUser(Landroid/os/Message;)V

    goto :goto_0

    .line 382
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onSyncListComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 385
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onSyncPhotoComplete()V

    goto :goto_0

    .line 388
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onErrorConnection()V

    goto :goto_0

    .line 391
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onErrorConnectionRetry()V

    goto :goto_0

    .line 394
    :sswitch_a
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onErrorNoActiveUser()V

    goto :goto_0

    .line 397
    :sswitch_b
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onErrorNoList()V

    goto :goto_0

    .line 400
    :sswitch_c
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onScrollStateIdle()V

    goto :goto_0

    .line 361
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
    .line 60
    invoke-super {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    .line 61
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 62
    return-void
.end method

.method protected onRequestAccountManager()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->InitAccountLogin(Landroid/app/Activity;)V

    .line 114
    :cond_0
    return-void
.end method

.method protected onRequestActiveUser(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 117
    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onRequestActiveUser]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getActiveUser(Z)Z

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getActiveUser(Z)Z

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

    .line 142
    const/16 v0, 0x4eea

    iget v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 148
    iget v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mLastErrorState:I

    sparse-switch v0, :sswitch_data_0

    .line 175
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 176
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 152
    :sswitch_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 164
    :sswitch_1
    const/16 v0, 0x4e20

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 165
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 170
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 171
    invoke-virtual {p0, v3, v4, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 148
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

    .line 130
    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getFriendList(Lcom/htc/opensense/social/PersonOp;Z)Z

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, v4, v3}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getFriendList(Lcom/htc/opensense/social/PersonOp;Z)Z

    goto :goto_0
.end method

.method public onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "nPos"
    .parameter "aPerson"
    .parameter "bIsIdle"

    .prologue
    .line 182
    const/4 v7, 0x0

    .line 184
    .local v7, bitmap:Landroid/graphics/Bitmap;
    const/16 v0, 0x4eea

    iget v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIState:I

    if-ne v0, v1, :cond_0

    move-object v8, v7

    .line 196
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .local v8, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v8

    .line 187
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    move-object v8, v7

    .line 188
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 190
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {p3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v8, v7

    .line 196
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mConnectionRetry:I

    .line 55
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    .line 57
    return-void
.end method

.method public onScrollStateIdle()V
    .locals 3

    .prologue
    const/16 v2, 0x4f4d

    .line 410
    const/16 v0, 0x4eea

    iget v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIState:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIScrollState:I

    if-eq v2, v0, :cond_0

    .line 417
    iput v2, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIScrollState:I

    .line 418
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    iget v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIScrollState:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 419
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    .line 420
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected onSyncActiveUser(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x4e23

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 230
    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onSyncActiveUser]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/16 v0, 0x4eea

    iget v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 237
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

    .line 238
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 240
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

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

    .line 200
    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onSyncConnection]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/16 v0, 0x4eea

    iget v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->isFlaggedLoginAction()Z

    move-result v0

    if-ne v3, v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->resetFlagLoginAction()V

    .line 210
    const/16 v0, 0x7d0

    invoke-virtual {p0, v6, v4, v0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->isExistActiveUserCache()Z

    move-result v0

    if-ne v3, v0, :cond_3

    .line 217
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 223
    :goto_1
    const/16 v0, 0x2724

    invoke-virtual {p0, v0, v4, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 224
    invoke-virtual {p0, v6, v4, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 221
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1
.end method

.method protected onSyncListComplete()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method protected onSyncListComplete(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 249
    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriends][onSyncListComplete]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/16 v0, 0x4eea

    iget v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 257
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->syncListItem(Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getCachedFriendList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->syncListItem(Ljava/lang/Object;)V

    .line 260
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v4, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 261
    const/16 v0, 0x4e88

    invoke-virtual {p0, v0, v4, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 266
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 268
    const/16 v0, 0x4e20

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected onSyncPhotoComplete()V
    .locals 3

    .prologue
    .line 273
    const/16 v0, 0x4eea

    iget v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const/16 v0, 0x4f4d

    iget v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIScrollState:I

    if-ne v0, v1, :cond_0

    .line 280
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setScrollState(II)V
    .locals 4
    .parameter "nScrollState"
    .parameter "nFirstIndex"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x4f4d

    .line 642
    const/16 v0, 0x4eea

    iget v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIState:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iput p2, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mFirstVisibleIndex:I

    .line 653
    if-nez p1, :cond_2

    .line 654
    iput v2, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIScrollState:I

    .line 658
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    iget v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIScrollState:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 663
    iget v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIScrollState:I

    if-ne v2, v0, :cond_3

    .line 665
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    .line 666
    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataRemoveNotify(I)V

    .line 667
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 656
    :cond_2
    const/16 v0, 0x4f4e

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIScrollState:I

    goto :goto_1

    .line 671
    :cond_3
    const/16 v0, 0xfa0

    invoke-virtual {p0, v2, v3, v0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setVisibleRange(II)V

    .line 637
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

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, bResult:Z
    const/16 v1, 0x4eea

    iget v2, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mUIState:I

    if-ne v1, v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->getDataHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v1

    if-ne v5, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    sget-object v1, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewAdapterFriends][syncBackgroundService]: no account..."

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 85
    const/16 v1, 0x274f

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v1

    if-nez v1, :cond_3

    .line 91
    sget-object v1, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewAdapterFriends][syncBackgroundService]: no change just skip!!"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_3
    sget-object v1, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewAdapterFriends][syncBackgroundService]InitConnection.."

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 97
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 98
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1, v5, v4}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method protected syncListItem(Ljava/lang/Object;)V
    .locals 9
    .parameter "objList"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 527
    const/4 v2, 0x0

    .local v2, peopleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    move-object v2, p1

    .line 528
    check-cast v2, Ljava/util/List;

    .line 530
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    if-eqz v4, :cond_0

    .line 531
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    invoke-virtual {v4}, Lcom/htc/opensense/album/util/IndexerAlphabet;->onRelease()V

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->getItemRequest()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    .line 535
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, aPerson:Lcom/htc/opensense/social/PersonOp;
    const/4 v3, 0x0

    .line 540
    .local v3, wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    new-instance v3, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    invoke-direct {v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 541
    .restart local v3       #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    sget-object v4, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V

    .line 542
    const v4, 0x20c01d7

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setNameByResource(I)V

    .line 543
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    new-instance v3, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getProfile()Lcom/htc/opensense/social/data/Person;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->getDataHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    .line 549
    .restart local v3       #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    sget-object v4, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V

    .line 550
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    new-instance v3, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    invoke-direct {v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 556
    .restart local v3       #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    sget-object v4, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V

    .line 557
    const v4, 0x20c01d8

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setNameByResource(I)V

    .line 558
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    .end local v0           #aPerson:Lcom/htc/opensense/social/PersonOp;
    :cond_1
    :goto_0
    const/16 v4, 0x4e8d

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v7}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 627
    return-void

    .line 562
    .end local v3           #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    :cond_2
    if-nez p1, :cond_3

    .line 564
    const/4 v3, 0x0

    .line 566
    .restart local v3       #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    new-instance v3, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    invoke-direct {v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>()V

    .line 567
    .restart local v3       #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    sget-object v4, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V

    .line 568
    const v4, 0x20c01e7

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setNameByResource(I)V

    .line 569
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 573
    .end local v3           #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    :cond_3
    const/4 v3, 0x0

    .line 574
    .restart local v3       #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_1

    .line 576
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v4

    if-nez v4, :cond_5

    .line 574
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 579
    :cond_5
    new-instance v3, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getProfile()Lcom/htc/opensense/social/data/Person;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->getDataHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    .line 581
    .restart local v3       #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v8, v4, :cond_6

    .line 583
    sget-object v4, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V

    .line 590
    :goto_3
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    if-eqz v4, :cond_4

    .line 594
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    invoke-virtual {v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense/album/util/IndexerAlphabet;->setSyncSection(Ljava/lang/String;I)V

    goto :goto_2

    .line 587
    :cond_6
    sget-object v4, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V

    goto :goto_3

    .line 601
    .end local v1           #nIndex:I
    .end local v3           #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    :cond_7
    const/4 v3, 0x0

    .line 602
    .restart local v3       #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    const/4 v1, 0x0

    .restart local v1       #nIndex:I
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_1

    .line 604
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v4

    if-nez v4, :cond_9

    .line 602
    :cond_8
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 607
    :cond_9
    new-instance v3, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .end local v3           #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getProfile()Lcom/htc/opensense/social/data/Person;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->getDataHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    .line 609
    .restart local v3       #wrapper:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v8, v4, :cond_a

    .line 611
    sget-object v4, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V

    .line 618
    :goto_6
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    if-eqz v4, :cond_8

    .line 622
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    invoke-virtual {v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/htc/opensense/album/util/IndexerAlphabet;->setSyncSection(Ljava/lang/String;I)V

    goto :goto_5

    .line 615
    :cond_a
    sget-object v4, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V

    goto :goto_6
.end method
