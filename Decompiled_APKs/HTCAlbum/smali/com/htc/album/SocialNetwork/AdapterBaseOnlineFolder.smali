.class public abstract Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;
.super Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;
.source "AdapterBaseOnlineFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private collectionMgr:Lcom/htc/album/helper/FolderManager;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mHandlerData:Landroid/os/Handler;

.field protected mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

.field protected mIntent:Landroid/content/Intent;

.field protected mItemReuqested:Ljava/lang/Object;

.field protected mMediaType:I

.field protected mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

.field protected mScrollState:I

.field protected mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

.field protected mVisibleIndex:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 3
    .parameter "actParent"
    .parameter "handlerUI"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;-><init>(Landroid/app/Activity;)V

    .line 31
    const-class v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->LOG_TAG:Ljava/lang/String;

    .line 33
    iput v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mVisibleIndex:I

    .line 34
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 36
    new-instance v0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;-><init>(Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    .line 37
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 38
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mHandlerData:Landroid/os/Handler;

    .line 39
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    .line 40
    iput v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mScrollState:I

    .line 41
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mIntent:Landroid/content/Intent;

    .line 42
    iput v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mMediaType:I

    .line 43
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mContentResolver:Landroid/content/ContentResolver;

    .line 44
    new-instance v0, Lcom/htc/album/helper/FolderManager;

    invoke-direct {v0}, Lcom/htc/album/helper/FolderManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->collectionMgr:Lcom/htc/album/helper/FolderManager;

    .line 67
    invoke-virtual {p0, p2}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->setUIHandler(Landroid/os/Handler;)V

    .line 68
    return-void
.end method


# virtual methods
.method public flagUpdateIsLoading(Z)V
    .locals 4
    .parameter "bIsLoading"

    .prologue
    const/4 v3, 0x0

    .line 287
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 289
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "isNotifyChange"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    const-string v1, "isNotifyChangeIndex"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 291
    const-string v1, "isLoading"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    const/16 v1, 0x4e8d

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 293
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    .line 294
    return-void
.end method

.method public flagUpdateNotifyChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 277
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 279
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "isNotifyChange"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    const-string v1, "isNotifyChangeIndex"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    const/16 v1, 0x4e8d

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 282
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    .line 283
    return-void
.end method

.method public flagUpdateNotifyChangeIndex(I)V
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 268
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "isNotifyChange"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    const-string v1, "isNotifyChangeIndex"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 270
    const-string v1, "notifyChangeIndex"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    .line 273
    return-void
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getItemRequest()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    return-object v0
.end method

.method public getflagVisibleIndex()I
    .locals 3

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, nIndex:I
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 299
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "visble_index"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 300
    return v1
.end method

.method protected loadDataFromDatabase(ILjava/util/ArrayList;)V
    .locals 5
    .parameter "nMediaType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TabPluginDevice/AlbumCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p2, listAlbumCollections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[loadDataFromDatabase]: Begin"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mIntent:Landroid/content/Intent;

    const-string v3, "MimeTypeFilter"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, filter:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->collectionMgr:Lcom/htc/album/helper/FolderManager;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v0}, Lcom/htc/album/helper/FolderManager;->getCollectionList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 223
    .local v1, listLocal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 225
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadDataFromDatabase]: All: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void

    .line 221
    .end local v0           #filter:Ljava/lang/String;
    .end local v1           #listLocal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TabPluginDevice/AlbumCollection;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 163
    :cond_0
    return-void
.end method

.method public onLoadData()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 73
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 74
    new-instance v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$1;-><init>(Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mHandlerData:Landroid/os/Handler;

    .line 84
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableRecentList:Z

    if-ne v3, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->enableRecentAlbumList()V

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableRecentVideo:Z

    if-ne v3, v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->enableRecentVideoList()V

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-boolean v1, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnablePhotoOfMe:Z

    if-ne v3, v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->enablePhotoOfMeAlbumList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_2
    :goto_0
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;-><init>()V

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 106
    :try_start_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    sget-object v4, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->MAX_LISTVIEW_THUMB_BUFFER:[I

    invoke-static {}, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    .line 110
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->getDataHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    .line 111
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->changeLayoutType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    :goto_1
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterBaseOnlineFolder][onLoadData]1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 115
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterBaseOnlineFolder][onLoadData]2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mScrollState:I

    goto :goto_0

    .line 182
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mScrollState:I

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x4f4d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUnloadData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onPause()V

    .line 126
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->Uninitialize(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    iput-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 138
    :try_start_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onDestroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    :goto_1
    iput-object v4, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    .line 146
    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->setDataHandler(Landroid/os/Handler;)V

    .line 147
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 148
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterBaseOnlineFolder][onUnloadData]1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 142
    .restart local v0       #e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AdapterBaseOnlineFolder][onUnloadData]2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onVerifyImageStatus(I)V
    .locals 9
    .parameter "nIndexTrigger"

    .prologue
    .line 230
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->LOG_TAG:Ljava/lang/String;

    const-string v7, "[HTCAlbum][AdapterBaseOnlineFolder][onVerifyImageStatus] begin..."

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, nFirstIndex:I
    const/4 v1, 0x0

    .line 234
    .local v1, bForceUpdate:Z
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->getflagVisibleIndex()I

    move-result v6

    iput v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mVisibleIndex:I

    .line 235
    const/4 v6, -0x1

    if-ne v6, p1, :cond_1

    .line 237
    iget v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mVisibleIndex:I

    .line 238
    const/4 v1, 0x1

    .line 243
    :goto_0
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getMaxDownloadBuffer()I

    move-result v6

    add-int v5, v2, v6

    .line 245
    .local v5, nLastIndex:I
    const/4 v4, -0x1

    .line 246
    .local v4, nIntegrity:I
    const/4 v0, 0x0

    .line 247
    .local v0, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][AdapterBaseOnlineFolder][onVerifyImageStatus]: grid index range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    move v3, v2

    .local v3, nIndex:I
    :goto_1
    if-lt v5, v3, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->getCount()I

    move-result v6

    if-gt v6, v3, :cond_2

    .line 252
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][AdapterBaseOnlineFolder][onVerifyImageStatus]: index out of bound: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->flagUpdateNotifyChange()V

    .line 261
    return-void

    .line 241
    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .end local v3           #nIndex:I
    .end local v4           #nIntegrity:I
    .end local v5           #nLastIndex:I
    :cond_1
    move v2, p1

    goto :goto_0

    .line 255
    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v3       #nIndex:I
    .restart local v4       #nIntegrity:I
    .restart local v5       #nLastIndex:I
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    if-nez v0, :cond_3

    .line 248
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 258
    :cond_3
    iget-object v6, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v7, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v6, v3, v0, v7, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;Landroid/os/Handler;Z)I

    move-result v4

    goto :goto_2
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "hHandler"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mHandlerData:Landroid/os/Handler;

    .line 169
    return-void
.end method

.method public setDataRequest(Ljava/lang/Object;)V
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 195
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mItemReuqested:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 198
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    const-string v2, "service_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 199
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    const-string v2, "service_url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceURL:Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    iget-object v2, v2, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mServiceURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    .line 201
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    const-string v2, "album_update"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsForceUpdate:Z

    .line 202
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    const-string v2, "recent_list"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableRecentList:Z

    .line 204
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    const-string v2, "sort_list"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsEnableSort:Z

    .line 205
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    const-string v2, "flag_display"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsFlagDisplay:Z

    .line 206
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder;->mServiceInfo:Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;

    const-string v2, "from_insde"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/htc/album/SocialNetwork/AdapterBaseOnlineFolder$ServiceInfo;->mIsInternal:Z

    .line 207
    return-void
.end method
