.class public Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;
.super Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;
.source "LivePhotoAdapter4Picker.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "LivePhotoAdapter4Picker"

.field private static final PHOTO_DETAILS:I = 0x4

.field private static final VIDEO_DETAILS:I = 0x3


# instance fields
.field private mDownloadPerPhoto:I

.field private mNextDownloadIndex:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1
    .parameter "actParent"
    .parameter "handlerUI"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getCount()I

    move-result v0

    .line 113
    .local v0, nCount:I
    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "LivePhotoAdapter4Picker"

    return-object v0
.end method

.method public getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    return-object v0
.end method

.method public onErrorNoTagList(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 272
    return-void
.end method

.method protected onLoadDataBegin(Landroid/os/AsyncTask;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, loader:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    return-void
.end method

.method protected onLoadDataEnd(Landroid/os/AsyncTask;Ljava/lang/Integer;)V
    .locals 3
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
    .line 97
    .local p1, loader:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    const-string v0, "LivePhotoAdapter4Picker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LivePhotoAdapter4Picker][onLoadDataEnd]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-super {p0, p1, p2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onLoadDataEnd(Landroid/os/AsyncTask;Ljava/lang/Integer;)V

    .line 101
    return-void
.end method

.method protected varargs onLoadDataInBackground(Landroid/os/AsyncTask;[Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4
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
    .line 88
    .local p1, loader:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    const-string v2, "LivePhotoAdapter4Picker"

    const-string v3, "[HTCAlbum][LivePhotoAdapter4Picker][onLoadDataInBackground]: "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getItemRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 90
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "photo_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 91
    .local v1, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->syncListItem(Ljava/lang/Object;)Z

    .line 92
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 71
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onMessageHandler(Landroid/os/Message;)V

    .line 73
    :goto_0
    return-void

    .line 41
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onNotifyDataSetChange()V

    goto :goto_0

    .line 44
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onRequestPhotoDetail(Landroid/os/Message;)V

    goto :goto_0

    .line 47
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onRequestPhoto(Landroid/os/Message;)V

    goto :goto_0

    .line 50
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onRequestPhotoInfo(Landroid/os/Message;)V

    goto :goto_0

    .line 53
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onRequestListTag(Landroid/os/Message;)V

    goto :goto_0

    .line 56
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onSyncListTag(Landroid/os/Message;)V

    goto :goto_0

    .line 59
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onSyncPhotoInfo(Landroid/os/Message;)V

    goto :goto_0

    .line 62
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onSyncPhoto(Landroid/os/Message;)V

    goto :goto_0

    .line 65
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onSyncPhotoDetail(Landroid/os/Message;)V

    goto :goto_0

    .line 68
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onErrorNoTagList(Landroid/os/Message;)V

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x2769 -> :sswitch_9
        0x4e31 -> :sswitch_4
        0x4e34 -> :sswitch_3
        0x4e35 -> :sswitch_1
        0x4e40 -> :sswitch_2
        0x4e89 -> :sswitch_7
        0x4e8a -> :sswitch_6
        0x4e8d -> :sswitch_0
        0x4e91 -> :sswitch_5
        0x4e94 -> :sswitch_8
    .end sparse-switch
.end method

.method public onRequestListTag(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 178
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 179
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getTagList(Lcom/htc/opensense/social/data/Medium;)Z

    .line 181
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_0
    return-void
.end method

.method public onRequestPhoto(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 162
    const-string v0, "LivePhotoAdapter4Picker"

    const-string v1, "[HTCAlbum][LivePhotoAdapter4Picker][onRequestPhoto]:..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onVerifyFullstripItemStatus(I)V

    .line 165
    return-void
.end method

.method public onRequestPhotoDetail(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getCount()I

    move-result v1

    .line 130
    .local v1, nCount:I
    const/4 v2, -0x1

    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    if-ne v2, v3, :cond_0

    .line 132
    iput v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    .line 133
    const-string v2, "LivePhotoAdapter4Picker"

    const-string v3, "[HTCAlbum][LivePhotoAdapter4Picker][onRequestPhotoDetail]: begin..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onNotifyUpdating(Z)V

    .line 148
    :goto_0
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-nez v0, :cond_2

    .line 159
    :goto_1
    return-void

    .line 136
    :cond_0
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    add-int/lit8 v2, v2, 0x1

    if-gt v1, v2, :cond_1

    .line 138
    const-string v2, "LivePhotoAdapter4Picker"

    const-string v3, "[HTCAlbum][LivePhotoAdapter4Picker][onRequestPhotoDetail]: over skip..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 143
    :cond_1
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    .line 144
    const-string v2, "LivePhotoAdapter4Picker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapter4Picker][onRequestPhotoDetail]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    const/4 v2, 0x3

    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    .line 155
    :goto_2
    const/16 v2, 0x4e40

    invoke-virtual {p0, v2, v0, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 156
    const/16 v2, 0x4e34

    invoke-virtual {p0, v2, v0, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 157
    const/16 v2, 0x4e31

    invoke-virtual {p0, v2, v0, v5}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_1

    .line 153
    :cond_3
    const/4 v2, 0x4

    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    goto :goto_2
.end method

.method public onRequestPhotoInfo(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v1, :cond_0

    .line 170
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 171
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumInfo2(Ljava/lang/String;)Z

    .line 173
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_0
    return-void
.end method

.method public onSyncConnection()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "LivePhotoAdapter4Picker"

    const-string v1, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncConnection]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onLoadData()V

    .line 81
    return-void
.end method

.method public onSyncListTag(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 230
    const-string v3, "LivePhotoAdapter4Picker"

    const-string v4, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncListTag]:... "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 232
    .local v1, bundle:Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 234
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v1, :cond_0

    .line 236
    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v2, 0x0

    .line 239
    .local v2, faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    const-string v3, "tag_update"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 241
    const-string v3, "LivePhotoAdapter4Picker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncListTag]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setTags(Ljava/util/ArrayList;)V

    .line 247
    .end local v2           #faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    :cond_0
    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    .line 248
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onSyncPhotoDetail(Landroid/os/Message;)V

    .line 249
    return-void
.end method

.method public onSyncPhoto(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 203
    const-string v2, "LivePhotoAdapter4Picker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncPhoto]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 206
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v2, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v1

    .line 210
    .local v1, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v1, :cond_0

    .line 213
    iget v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v2, :cond_3

    .line 215
    iget-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v3, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 216
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onVerifyFullstripItemStatus(I)V

    .line 217
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    .line 225
    :cond_2
    :goto_1
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    .line 226
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onSyncPhotoDetail(Landroid/os/Message;)V

    goto :goto_0

    .line 219
    :cond_3
    const/4 v2, 0x1

    iget v3, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v2, v3, :cond_2

    .line 221
    iget-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 222
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_1
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncPhotoComplete(Landroid/os/Message;)V

    .line 123
    const-string v0, "LivePhotoAdapter4Picker"

    const-string v1, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncPhotoComplete]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onSyncPhotoDetail(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 255
    iget v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    if-eqz v1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getCount()I

    move-result v0

    .line 259
    .local v0, nCount:I
    iget v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_1

    .line 261
    const-string v1, "LivePhotoAdapter4Picker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncPhotoDetail]: finished..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onNotifyUpdating(Z)V

    .line 263
    const/16 v1, 0x4e94

    invoke-virtual {p0, v1, v5, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 266
    :cond_1
    const-string v1, "LivePhotoAdapter4Picker"

    const-string v2, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncPhotoDetail]: go to next..."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/16 v1, 0x4e35

    invoke-virtual {p0, v1, v5, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncPhotoInfo(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 184
    const-string v2, "LivePhotoAdapter4Picker"

    const-string v3, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncPhotoInfo]:... "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 186
    .local v1, aPhotoTemp:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v0, 0x0

    .line 187
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v1, :cond_1

    .line 189
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mNextDownloadIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setName(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setDescription(Ljava/lang/String;)V

    .line 194
    :cond_0
    const-string v2, "LivePhotoAdapter4Picker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncPhotoInfo]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "LivePhotoAdapter4Picker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapter4Picker][onSyncPhotoInfo]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_1
    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->mDownloadPerPhoto:I

    .line 199
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter4Picker;->onSyncPhotoDetail(Landroid/os/Message;)V

    .line 200
    return-void
.end method

.method public onUnloadData()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "LivePhotoAdapter4Picker"

    const-string v1, "[HTCAlbum][LivePhotoAdapter4Picker][onUnloadData]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onPause()V

    .line 106
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDestroy()V

    .line 107
    invoke-super {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUnloadData()V

    .line 108
    return-void
.end method
