.class public Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
.super Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;
.source "LivePhotoAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork",
        "<",
        "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LivePhotoAdapterBase"


# instance fields
.field protected mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

.field protected mFocusItem:I

.field protected mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

.field private mIsGenuine:Z

.field protected mIsLatest:Z

.field protected mLastErrorState:I

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;-><init>(Landroid/app/Activity;)V

    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mIsGenuine:Z

    iput-boolean v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mOrientation:I

    invoke-virtual {p0, p2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setUIHandler(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public decoderStart()V
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->cancel()V

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    if-nez v1, :cond_2

    new-instance v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    invoke-direct {v1, p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;-><init>(Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;)V

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    :cond_2
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v2

    if-ne v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mFirstVisibleIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->setCenter(I)Z

    :cond_4
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->start()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public decoderStop()V
    .locals 2

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->cancel()V

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public deocderResumePause(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->resumeDecode()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->pauseDecode()V

    goto :goto_0
.end method

.method protected doUpdateFocusedItem()V
    .locals 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    iput v4, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_3

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    :cond_3
    const-string v3, "LivePhotoAdapterBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][LivePhotoAdapterBase][doUpdateFocusedItem]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCachedBitmap(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getBitmapCache(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCachedBitmapDataPath(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getBitmapDataPath(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCachedBitmapUri(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;)Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getBitmapUri(ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;II)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFocusedItem()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    return v0
.end method

.method public getImageProvider()Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    return-object v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    return v0
.end method

.method public getSourceInfo()Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getCachedAlbumList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/16 v3, 0x2724

    invoke-virtual {p0, v3, v5, v4}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    const/16 v3, 0x4e22

    invoke-virtual {p0, v3, v5, v4}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    move-object v1, v0

    goto :goto_0
.end method

.method public getSourceName(Z)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v0, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUIState()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    return v0
.end method

.method public isGeunine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mIsGenuine:Z

    return v0
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-direct {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    iget-object v1, p0, Lcom/htc/opensense/album/AdapterBase;->mContext:Landroid/app/Activity;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->onDestroy()V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->Uninitialize(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    return-void
.end method

.method public onErrorAlbumInfo()V
    .locals 3

    const/16 v0, 0x2764

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onErrorConnection()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x274c

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    const/16 v0, 0x2761

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    const/16 v0, 0x4e96

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onErrorNoList()V
    .locals 4

    const/16 v3, 0x2761

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->deocderResumePause(Z)V

    iput v3, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    invoke-virtual {p0, v3, v2, v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    const/16 v0, 0x4e96

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

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
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onRequestAlbumInfo()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onRequestPhotoList(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onRequestDataUpdate(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onTriggerNotifyChange(I)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onSyncConnection()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onSyncAlbumInfo()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onSyncListComplete()V

    goto :goto_0

    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onSyncPhotoDownloaded(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onErrorConnection()V

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onErrorAlbumInfo()V

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onErrorNoList()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1397 -> :sswitch_7
        0x274c -> :sswitch_9
        0x2761 -> :sswitch_b
        0x2764 -> :sswitch_a
        0x4e22 -> :sswitch_0
        0x4e25 -> :sswitch_1
        0x4e28 -> :sswitch_2
        0x4e3d -> :sswitch_3
        0x4e84 -> :sswitch_4
        0x4e87 -> :sswitch_5
        0x4e88 -> :sswitch_6
        0x4e89 -> :sswitch_8
    .end sparse-switch
.end method

.method public onNotifyDataSetChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->notifyDataSetChanged()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->onPause()V

    return-void
.end method

.method public onRelease()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->releaseMemoryCache()V

    :cond_0
    return-void
.end method

.method public onRequestAlbumInfo()V
    .locals 3

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v1}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getAlbumOp([Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onRequestDataUpdate(Landroid/os/Message;)V
    .locals 5

    const/16 v1, 0x4e25

    const/16 v4, 0x2724

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x4e22

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_0
        0x2761 -> :sswitch_2
        0x2764 -> :sswitch_1
    .end sparse-switch
.end method

.method public onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mFirstVisibleIndex:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getImageBitmap2(Landroid/content/Context;ILcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;I)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onSyncDownloadStatus(I)V

    return-object v7
.end method

.method public onRequestPhotoIntegrity(I)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    if-nez v0, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3, v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getImageIntegrity(Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;)I

    move-result v1

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public onRequestPhotoList(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "LivePhotoAdapterBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LivePhotoAdapterBase][onRequestPhotoList]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTPLIST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v5, v1, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getPhotoList(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v5}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getPhotoList(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v5, v1, :cond_3

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v4, v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getPhotosOfMeList(Ljava/lang/String;ZI)Z

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v5, v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getPhotosOfMeList(Ljava/lang/String;ZI)Z

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v5, v1, :cond_6

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v4, v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getRecentPhotoList(Ljava/lang/String;ZI)Z

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v5, v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getRecentPhotoList(Ljava/lang/String;ZI)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->onResume()V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method public onSyncAlbumInfo()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    const/16 v0, 0x4e87

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onSyncConnection()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x4e25

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onSyncDownloadStatus(I)V
    .locals 2

    const/16 v0, 0x4e96

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onSyncListComplete()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v0, 0x4eea

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->getCachedPhotoList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->syncListItem(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setAdapterList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->doUpdateFocusedItem()V

    const/16 v0, 0x4e88

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    if-nez v0, :cond_0

    const/16 v0, 0x4e25

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    iput-boolean v4, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    goto :goto_0
.end method

.method protected onSyncPhotoComplete()V
    .locals 0

    return-void
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 4

    const/16 v1, 0x4f4d

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-ne v1, v2, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    const-string v2, "index_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    :cond_0
    const/16 v1, 0x4e87

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method public onSyncPhotoDownloaded(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mFirstVisibleIndex:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setCenteredVisibleRange(IZ)V

    goto :goto_0
.end method

.method public onTriggerNotifyChange(I)V
    .locals 6

    const/4 v5, 0x1

    iget v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v3, -0x1

    if-ne v3, p1, :cond_2

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mFirstVisibleIndex:I

    :goto_1
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getMaxDownloadBuffer()I

    move-result v3

    add-int v2, v0, v3

    move v1, v0

    :goto_2
    if-lt v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getCount()I

    move-result v3

    if-le v3, v1, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3, v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v0, p1

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mFirstVisibleIndex:I

    invoke-virtual {p0, v3, v5}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setCenteredVisibleRange(IZ)V

    invoke-virtual {p0, v5}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->deocderResumePause(Z)V

    goto :goto_0
.end method

.method public setCenteredVisibleRange(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    add-int/lit8 v1, p1, -0xf

    add-int/lit8 v2, p1, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setVisibleRange(II)V

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->setCenter(I)Z

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mDecodeThread:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase$DecodeThread;->refresh()V

    :cond_1
    return-void
.end method

.method public setFirstVisibleIndex(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mFirstVisibleIndex:I

    return-void
.end method

.method public setGenuine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mIsGenuine:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->decoderStop()V

    iput p1, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mOrientation:I

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->releaseMemoryCache()V

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->decoderStart()V

    return-void
.end method

.method public setScrollState(II)V
    .locals 3

    const/4 v2, 0x2

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    iput p2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mFirstVisibleIndex:I

    iget v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    const/16 v1, 0x4f4d

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v0

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    :cond_2
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onTriggerNotifyChange(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v0

    if-eq v2, v0, :cond_4

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->deocderResumePause(Z)V

    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    const/16 v1, 0x4f4e

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    goto :goto_1
.end method

.method public setTemplateLayout(ILcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    const-string v0, "LivePhotoAdapterBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LivePhotoAdapterBase][setTemplateLayout]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4f4c

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIScrollState:I

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->changeLayoutType(I)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setImageDecoder(Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p3}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setImageDownloadedListener(Lcom/htc/opensense/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    :cond_0
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetworkManager/ImageProvider;->setVisibleRange(II)V

    :cond_0
    return-void
.end method

.method public syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getItemRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "service_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    const-string v3, "service_name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    :cond_0
    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    const-string v3, "user_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, "album_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    const-string v3, "album_name"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    :cond_2
    const-string v2, "album_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    const-string v3, "album_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v2, "photo_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    const-string v3, "photo_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v2, "LivePhotoAdapterBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "LivePhotoAdapterBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getDataHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v2

    if-ne v7, v2, :cond_5

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "LivePhotoAdapterBase"

    const-string v3, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: no account..."

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x274f

    invoke-virtual {p0, v2, v8, v6}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v2

    if-ne v7, v2, :cond_8

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "LivePhotoAdapterBase"

    const-string v3, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: no change just skip!!"

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/16 v2, 0x2750

    invoke-virtual {p0, v2, v8, v6}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_8
    const-string v2, "LivePhotoAdapterBase"

    const-string v3, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: InitConnection.."

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v7, v6}, Lcom/htc/opensense/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x2724

    invoke-virtual {p0, v2, v8, v6}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public syncListItem(Ljava/lang/Object;)V
    .locals 4

    const/4 v1, 0x0

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    new-instance v2, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
