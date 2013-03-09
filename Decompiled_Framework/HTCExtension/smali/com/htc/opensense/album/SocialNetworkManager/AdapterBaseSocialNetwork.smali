.class public abstract Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;
.super Lcom/htc/opensense/album/AdapterBase;
.source "AdapterBaseSocialNetwork.java"

# interfaces
.implements Lcom/htc/opensense/album/SocialNetworkManager/NotifyBaseData;
.implements Lcom/htc/opensense/album/SocialNetworkManager/NotifyBaseUI;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/opensense/album/AdapterBase;",
        "Lcom/htc/opensense/album/SocialNetworkManager/NotifyBaseData;",
        "Lcom/htc/opensense/album/SocialNetworkManager/NotifyBaseUI;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final RETRY_COUNT_CONNECTION:I = 0x3


# instance fields
.field protected mConnectionRetry:I

.field protected mFirstVisibleIndex:I

.field protected mHandlerData:Landroid/os/Handler;

.field public mHandlerUI:Landroid/os/Handler;

.field protected mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemReuqested:Ljava/lang/Object;

.field protected mLastErrorState:I

.field protected mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

.field protected mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork",
            "<TV;>.ServiceInfo;"
        }
    .end annotation
.end field

.field protected mUIScrollState:I

.field protected mUIState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/AdapterBase;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mLastErrorState:I

    const/16 v0, 0x4ee8

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    const/16 v0, 0x4f4c

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mFirstVisibleIndex:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mConnectionRetry:I

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mItemReuqested:Ljava/lang/Object;

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$1;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getDataHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemRequest()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mItemReuqested:Ljava/lang/Object;

    return-object v0
.end method

.method public getSNManager()Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    return-object v0
.end method

.method public getUIHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->UninitConnection()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    const/16 v0, 0x4ee9

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-direct {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    iget-object v1, p0, Lcom/htc/opensense/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->MAX_LISTVIEW_THUMB_BUFFER:[I

    invoke-static {}, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->getResolution()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    iget-object v1, p0, Lcom/htc/opensense/album/AdapterBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x20800c2

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setDefaultImageResource(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->onCreate()V

    return-void
.end method

.method public onDataRemoveNotify(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onDataUpdateNotify(ILjava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x4eea

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setDataHandler(Landroid/os/Handler;)V

    invoke-virtual {p0, v2}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->setUIHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->onDestroy()V

    :cond_0
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->onDestroy()V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->Uninitialize(Z)V

    :cond_1
    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    return-void
.end method

.method protected abstract onErrorConnection()V
.end method

.method protected abstract onErrorNoList()V
.end method

.method protected onMessageHandler(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    const/16 v0, 0x4e89

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    :sswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->notifyDataSetChanged()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4e8d -> :sswitch_2
        0x4f4d -> :sswitch_0
        0x4f4e -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    const/16 v0, 0x4eec

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->cancelBackgroundAction()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/16 v0, 0x4eeb

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    return-void
.end method

.method protected abstract onSyncConnection()V
.end method

.method protected abstract onSyncListComplete()V
.end method

.method protected abstract onSyncPhotoComplete()V
.end method

.method public onUIUpdateNotify(ILjava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public setDataHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    return-void
.end method

.method public setDataRequest(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mItemReuqested:Ljava/lang/Object;

    return-void
.end method

.method public setHandlerData(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public abstract setScrollState(II)V
.end method

.method public setUIHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerUI:Landroid/os/Handler;

    return-void
.end method

.method public abstract setVisibleRange(II)V
.end method

.method protected abstract syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
.end method
