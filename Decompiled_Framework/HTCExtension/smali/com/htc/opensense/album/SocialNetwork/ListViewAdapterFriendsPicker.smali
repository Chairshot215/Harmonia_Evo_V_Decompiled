.class public Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;
.super Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;
.source "ListViewAdapterFriendsPicker.java"

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

    const-class v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriends;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    invoke-virtual {p0, p3}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->setUIHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iput-object p2, v0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    invoke-virtual {v1, p1}, Lcom/htc/opensense/album/util/IndexerAlphabet;->getPositionForSection(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    invoke-virtual {v1}, Lcom/htc/opensense/album/util/IndexerAlphabet;->getSections()[Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense/album/util/SeparatorTag;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense/album/util/SeparatorTag;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense/album/util/SeparatorTag;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense/album/util/SeparatorTag;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    new-instance v0, Lcom/htc/opensense/album/util/IndexerAlphabet;

    invoke-direct {v0}, Lcom/htc/opensense/album/util/IndexerAlphabet;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    return-void
.end method

.method public onErrorConnection()V
    .locals 3

    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriendsPicker][onErrorConnection]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x274c

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onErrorNoList()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriendsPicker][onErrorNoList]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2761

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->syncListItem(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->syncListItem(Ljava/lang/Object;)V

    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onMessageHandler(Landroid/os/Message;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestUserInfo()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestFriendlist(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestDataUpdate(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestAllCheckState(Z)V

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestAllCheckState(Z)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onSyncConnection()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onSyncUserInfo()V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onSyncListComplete()V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onSyncPhotoComplete()V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onErrorConnection()V

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onErrorNoList()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_9
        0x2761 -> :sswitch_a
        0x4e21 -> :sswitch_0
        0x4e23 -> :sswitch_1
        0x4e28 -> :sswitch_2
        0x4e2b -> :sswitch_3
        0x4e2c -> :sswitch_4
        0x4e84 -> :sswitch_5
        0x4e86 -> :sswitch_6
        0x4e88 -> :sswitch_7
        0x4e89 -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onRequestAllCheckState(Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v2

    if-eq p1, v2, :cond_0

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->toggleVisibility()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x4e8d

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onRequestDataUpdate(Landroid/os/Message;)V
    .locals 5

    const/16 v1, 0x4e23

    const/16 v4, 0x2724

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x4e21

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_0
        0x2760 -> :sswitch_1
        0x2761 -> :sswitch_2
    .end sparse-switch
.end method

.method public onRequestFriendlist(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

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

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getFriendList(Lcom/htc/opensense/social/PersonOp;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v0, v1, v3}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getFriendList(Lcom/htc/opensense/social/PersonOp;Z)Z

    goto :goto_0
.end method

.method public onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;Z)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {p3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getBuddyIconURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7
.end method

.method public onRequestUserInfo()V
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewAdapterFriendsPicker][onRequestUserInfo]: "

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1, v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getPeopleOpFast([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/PersonOp;

    iput-object v1, v2, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    const/16 v1, 0x4e86

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method public onSyncConnection()V
    .locals 3

    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriendsPicker][onSyncConnection]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e21

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onSyncListComplete()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriendsPicker][onSyncListComplete]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getCachedFriendList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->syncListItem(Ljava/lang/Object;)V

    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    const/16 v0, 0x272d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onSyncPhotoComplete()V
    .locals 3

    const/16 v0, 0x4f4d

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public onSyncUserInfo()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriendsPicker][onSyncUserInfo]: "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e23

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public setScrollState(II)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x4f4e

    const/4 v3, 0x0

    const/16 v2, 0x4f4d

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mFirstVisibleIndex:I

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iput v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    :goto_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-ne v2, v0, :cond_2

    invoke-virtual {p0, v2, v5, v3}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4, v5, v3}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setVisibleRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setVisibleRange(II)V

    :cond_0
    return-void
.end method

.method protected syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/16 v2, 0x4eea

    iget v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->setUIHandler(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->getItemRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    const-string v3, "service_name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    const-string v3, "user_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->getDataHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->getUIHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v2

    if-ne v6, v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][ListViewAdapterFriendsPicker][syncBackgroundService]: no account..."

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x274f

    invoke-virtual {p0, v2, v7, v5}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v2

    if-ne v6, v2, :cond_4

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][ListViewAdapterFriendsPicker][syncBackgroundService]: no change just skip!!"

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x2750

    invoke-virtual {p0, v2, v7, v5}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][ListViewAdapterFriendsPicker][syncBackgroundService]InitConnection.."

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v6, v5}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2724

    invoke-virtual {p0, v2, v7, v5}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method protected syncListItem(Ljava/lang/Object;)V
    .locals 6

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    invoke-virtual {v3}, Lcom/htc/opensense/album/util/IndexerAlphabet;->onRelease()V

    :cond_0
    const/4 v1, 0x0

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_2

    new-instance v2, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->getDataHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;Landroid/os/Handler;)V

    sget-object v3, Lcom/htc/opensense/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense/album/util/SeparatorTag;

    invoke-virtual {v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense/album/util/SeparatorTag;)V

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense/album/util/IndexerAlphabet;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/htc/opensense/album/util/IndexerAlphabet;->setSyncSection(Ljava/lang/String;I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0x4e8d

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/opensense/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public updateFileCache()V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->updateFriendList(Ljava/lang/Object;)Z

    return-void
.end method
