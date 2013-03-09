.class public Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;
.super Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;
.source "ListViewAdapterFriendsPicker.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriends;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .parameter "actParent"
    .parameter "szServiceName"
    .parameter "handlerUI"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;-><init>(Landroid/app/Activity;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    .line 40
    invoke-virtual {p0, p3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->setUIHandler(Landroid/os/Handler;)V

    .line 41
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iput-object p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 2
    .parameter "arg0"

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, nPosition:I
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->getPositionForSection(I)I

    move-result v0

    .line 335
    :cond_0
    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 346
    .local v0, objList:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 351
    :cond_0
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 313
    const/4 v0, 0x1

    .line 315
    .local v0, bResult:Z
    const/4 v1, 0x0

    .line 316
    .local v1, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .restart local v1       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_DIVIDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_PLACEHOLDER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v2, v3, :cond_1

    .line 322
    :cond_0
    const/4 v0, 0x0

    .line 326
    :cond_1
    return v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    .line 50
    new-instance v0, Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-direct {v0}, Lcom/htc/opensense2/album/util/IndexerAlphabet;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    .line 66
    return-void
.end method

.method public onErrorConnection()V
    .locals 3

    .prologue
    .line 250
    sget-object v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriendsPicker][onErrorConnection]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/16 v0, 0x274c

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    .line 252
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 253
    return-void
.end method

.method public onErrorNoList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 257
    sget-object v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriendsPicker][onErrorNoList]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/16 v0, 0x2761

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    .line 260
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAccountOwner()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->syncListItem(Ljava/lang/Object;)V

    .line 264
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->syncListItem(Ljava/lang/Object;)V

    .line 266
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 267
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 268
    return-void
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 271
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 307
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onMessageHandler(Landroid/os/Message;)V

    .line 310
    :goto_0
    return-void

    .line 274
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestUserInfo()V

    goto :goto_0

    .line 277
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestFriendlist(Landroid/os/Message;)V

    goto :goto_0

    .line 280
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestDataUpdate(Landroid/os/Message;)V

    goto :goto_0

    .line 283
    :sswitch_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestAllCheckState(Z)V

    goto :goto_0

    .line 286
    :sswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onRequestAllCheckState(Z)V

    goto :goto_0

    .line 289
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onSyncConnection()V

    goto :goto_0

    .line 292
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onSyncUserInfo()V

    goto :goto_0

    .line 295
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onSyncListComplete()V

    goto :goto_0

    .line 298
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 301
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onErrorConnection()V

    goto :goto_0

    .line 304
    :sswitch_a
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onErrorNoList()V

    goto :goto_0

    .line 271
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

    .prologue
    .line 59
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    .line 60
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 61
    return-void
.end method

.method public onRequestAllCheckState(Z)V
    .locals 5
    .parameter "bIsCheckStateOn"

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 205
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 206
    .restart local v0       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v2

    if-eq p1, v2, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->toggleVisibility()V

    .line 203
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_1
    const/16 v2, 0x4e8d

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 210
    return-void
.end method

.method public onRequestDataUpdate(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v1, 0x4e23

    const/16 v4, 0x2724

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 168
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    sparse-switch v0, :sswitch_data_0

    .line 195
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 196
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 172
    :sswitch_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 184
    :sswitch_1
    const/16 v0, 0x4e21

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 185
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 190
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 191
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 168
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
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 160
    sget-object v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

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

    .line 161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getFriendList(Lcom/htc/opensense/social/PersonOp;Z)Z

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v0, v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getFriendList(Lcom/htc/opensense/social/PersonOp;Z)Z

    goto :goto_0
.end method

.method public onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Z)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "nPos"
    .parameter "aPerson"
    .parameter "bIsIdle"

    .prologue
    .line 125
    const/4 v7, 0x0

    .line 138
    .local v7, bitmap:Landroid/graphics/Bitmap;
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

    .line 145
    return-object v7
.end method

.method public onRequestUserInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 149
    sget-object v1, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ListViewAdapterFriendsPicker][onRequestUserInfo]: "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 152
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 153
    .local v0, szUIDs:[Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v3

    .line 155
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPeopleOpFast([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/PersonOp;

    iput-object v1, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    .line 156
    const/16 v1, 0x4e86

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 157
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    .line 55
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    .line 56
    return-void
.end method

.method public onSyncConnection()V
    .locals 3

    .prologue
    .line 213
    sget-object v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriendsPicker][onSyncConnection]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/16 v0, 0x4e21

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 215
    return-void
.end method

.method public onSyncListComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 224
    sget-object v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriendsPicker][onSyncListComplete]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 227
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedFriendList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->syncListItem(Ljava/lang/Object;)V

    .line 229
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 230
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 231
    const/16 v0, 0x272d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 232
    return-void
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 237
    const/16 v0, 0x4f4d

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-ne v0, v1, :cond_0

    .line 240
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 246
    :cond_0
    return-void
.end method

.method public onSyncUserInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    sget-object v0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ListViewAdapterFriendsPicker][onSyncUserInfo]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/16 v0, 0x4e23

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 220
    return-void
.end method

.method public setScrollState(II)V
    .locals 6
    .parameter "nScrollState"
    .parameter "nFirstIndex"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x4f4e

    const/4 v3, 0x0

    const/16 v2, 0x4f4d

    .line 403
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-ne p1, v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 406
    :cond_0
    iput p2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mFirstVisibleIndex:I

    .line 411
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 412
    iput v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    .line 417
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 422
    iget v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-ne v2, v0, :cond_2

    .line 424
    invoke-virtual {p0, v2, v5, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 414
    :cond_1
    iput v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    goto :goto_1

    .line 428
    :cond_2
    invoke-virtual {p0, v4, v5, v3}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setVisibleRange(II)V

    .line 398
    :cond_0
    return-void
.end method

.method protected syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 8
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    const/4 v0, 0x0

    .line 72
    .local v0, bResult:Z
    const/16 v2, 0x4eee

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v2, v3, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {p0, p2}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->setUIHandler(Landroid/os/Handler;)V

    .line 80
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getItemRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 82
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    const-string v3, "service_name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 83
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    const-string v3, "user_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getDataHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getUIHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v2

    if-ne v6, v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    sget-object v2, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][ListViewAdapterFriendsPicker][syncBackgroundService]: no account..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/16 v2, 0x274f

    invoke-virtual {p0, v2, v7, v5}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v2

    if-ne v6, v2, :cond_4

    .line 97
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v2

    if-nez v2, :cond_3

    .line 99
    sget-object v2, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][ListViewAdapterFriendsPicker][syncBackgroundService]: no change just skip!!"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_3
    const/16 v2, 0x2750

    invoke-virtual {p0, v2, v7, v5}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 108
    :cond_4
    sget-object v2, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][ListViewAdapterFriendsPicker][syncBackgroundService]InitConnection.."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 110
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v6, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const/16 v2, 0x2724

    invoke-virtual {p0, v2, v7, v5}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method protected syncListItem(Ljava/lang/Object;)V
    .locals 6
    .parameter "objList"

    .prologue
    .line 366
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->onRelease()V

    .line 369
    :cond_0
    const/4 v1, 0x0

    .local v1, peopleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    move-object v1, p1

    .line 370
    check-cast v1, Ljava/util/List;

    .line 372
    if-eqz v1, :cond_2

    .line 374
    const/4 v2, 0x0

    .line 375
    .local v2, wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_2

    .line 377
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v2           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->getDataHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;Landroid/os/Handler;)V

    .line 378
    .restart local v2       #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->setSeparatorInfo(Lcom/htc/opensense2/album/util/SeparatorTag;)V

    .line 379
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    if-eqz v3, :cond_1

    .line 383
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->mIndexer:Lcom/htc/opensense2/album/util/IndexerAlphabet;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/htc/opensense2/album/util/IndexerAlphabet;->setSyncSection(Ljava/lang/String;I)V

    .line 375
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    .end local v0           #nIndex:I
    .end local v2           #wrapper:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_2
    const/16 v3, 0x4e8d

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/opensense2/album/SocialNetwork/ListViewAdapterFriendsPicker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 388
    return-void
.end method

.method public updateFileCache()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->updateFriendList(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method
