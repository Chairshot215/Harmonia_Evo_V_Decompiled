.class public abstract Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;
.super Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;
.source "LivePhotoAdapterBase.java"

# interfaces
.implements Lcom/htc/sunny2/IMediaList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MAX_DOWNLOAD_BUFFER_FULL:I = 0x3

.field public static final MAX_DOWNLOAD_BUFFER_GRID_2PANEL_L:I = 0x1c

.field public static final MAX_DOWNLOAD_BUFFER_GRID_2PANEL_P:I = 0x1c

.field public static final MAX_DOWNLOAD_BUFFER_GRID_FULL:I = 0x1c


# instance fields
.field private mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

.field private mBundle:Landroid/os/Bundle;

.field protected mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field protected mFocusItem:I

.field protected mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

.field private mIsGenuine:Z

.field private mIsInternal:Z

.field protected mIsLatest:Z

.field protected mLastErrorState:I

.field protected mPhotoDetailCount:I

.field protected mPhotoDetailIndex:I

.field protected mPhotoDetailIndexNext:I

.field private mTemplateID:I

.field private mTemplateRef:Lcom/htc/opensense2/album/ViewTemplateBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 4
    .parameter "actParent"
    .parameter "handlerUI"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;-><init>(Landroid/app/Activity;)V

    .line 40
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    .line 41
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsGenuine:Z

    .line 43
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    .line 44
    iput v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mTemplateID:I

    .line 45
    new-instance v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;-><init>(Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    .line 46
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 47
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsInternal:Z

    .line 48
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mTemplateRef:Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 49
    iput v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    .line 50
    iput-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBundle:Landroid/os/Bundle;

    .line 51
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    .line 52
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    .line 53
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailCount:I

    .line 94
    invoke-virtual {p0, p2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->setUIHandler(Landroid/os/Handler;)V

    .line 95
    return-void
.end method


# virtual methods
.method public decoderStart()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public decoderStop()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public deocderResumePause(Z)V
    .locals 0
    .parameter "bIsResume"

    .prologue
    .line 86
    return-void
.end method

.method protected doUpdateFocusedItem()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1048
    const/4 v0, 0x0

    .line 1049
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v2, 0x0

    .line 1050
    .local v2, szMediumId:Ljava/lang/String;
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    .line 1051
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #szMediumId:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #szMediumId:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1057
    iput v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    .line 1058
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 1060
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 1061
    .restart local v0       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1058
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1064
    :cond_2
    iput v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    .line 1067
    :cond_3
    sget-object v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][LivePhotoAdapterBase][doUpdateFocusedItem]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCachedBitmap(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "nPos"
    .parameter "aPhoto"

    .prologue
    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getBitmapCache(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 447
    return-object v0
.end method

.method public getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    return-object v0
.end method

.method public getFocusedItem()I
    .locals 1

    .prologue
    .line 1071
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFocusItem:I

    return v0
.end method

.method public getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    return-object v0
.end method

.method public getIndexRange(I)V
    .locals 5
    .parameter "nIndexTrigger"

    .prologue
    .line 583
    const/4 v1, 0x0

    .line 584
    .local v1, nIndexBegin:I
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getCount()I

    move-result v0

    .line 586
    .local v0, nCount:I
    const/4 v2, -0x1

    if-ne v2, p1, :cond_3

    .line 587
    iget v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFirstVisibleIndex:I

    .line 592
    :goto_0
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 594
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iput v1, v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    .line 595
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getMaxDownloadBuffer()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    .line 603
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v2, v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    if-gez v2, :cond_1

    .line 604
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    const/4 v3, 0x0

    iput v3, v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    .line 606
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v2, v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    if-gt v0, v2, :cond_2

    .line 607
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iput v0, v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    .line 609
    :cond_2
    sget-object v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][getIndexRange]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v4, v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v4, v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    return-void

    .line 589
    :cond_3
    move v1, p1

    goto :goto_0

    .line 597
    :cond_4
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 599
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    add-int/lit8 v3, v1, -0x1

    iput v3, v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    .line 600
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    add-int/lit8 v3, v1, 0x1

    iput v3, v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    goto :goto_1
.end method

.method public getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .locals 1
    .parameter "pos"

    .prologue
    .line 1016
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    return-object v0
.end method

.method public getMediaCount()I
    .locals 1

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getCount()I

    move-result v0

    .line 1012
    .local v0, nCount:I
    return v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIScrollState:I

    return v0
.end method

.method public getSourceInfo()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 987
    const/4 v0, 0x0

    .line 989
    .local v0, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    const/4 v2, 0x0

    .line 991
    .local v2, wrapperAlbums:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedAlbumList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 995
    :cond_0
    const/16 v3, 0x2730

    invoke-virtual {p0, v3, v5, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 996
    const/16 v3, 0x4e22

    invoke-virtual {p0, v3, v5, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    move-object v1, v0

    .line 1005
    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .local v1, anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :goto_0
    return-object v1

    .line 1001
    .end local v1           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .restart local v0       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    move-object v1, v0

    .line 1005
    .end local v0           #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    .restart local v1       #anAlbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    goto :goto_0
.end method

.method public getSourceName(Z)Ljava/lang/String;
    .locals 4
    .parameter "bEnableCount"

    .prologue
    .line 964
    const-string v1, ""

    .line 966
    .local v1, szText:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 968
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 970
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 971
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getFolderName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    .line 975
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_1
    const/4 v2, 0x1

    if-ne v2, p1, :cond_2

    .line 976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 982
    :goto_0
    return-object v1

    .line 978
    :cond_2
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v1, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUIState()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIState:I

    return v0
.end method

.method public isGeunine()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsGenuine:Z

    return v0
.end method

.method public mergeMediaItem(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 1021
    return-void
.end method

.method public notifyUpdateDataPlugin()V
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    .line 1041
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 114
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onCreate()V

    .line 115
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    .line 116
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->Initialize(Landroid/content/Context;ZI)Z

    .line 117
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDataHandler(Landroid/os/Handler;)V

    .line 118
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onCreate()V

    .line 119
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onDestroy()V

    .line 155
    return-void
.end method

.method public onErrorAlbumInfo()V
    .locals 3

    .prologue
    .line 806
    const/16 v0, 0x2764

    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    .line 807
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 809
    return-void
.end method

.method public onErrorConnection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 796
    const/16 v0, 0x274c

    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    .line 797
    const/16 v0, 0x2761

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 798
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 799
    const/16 v0, 0x4e96

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 801
    return-void
.end method

.method public onErrorNoList()V
    .locals 4

    .prologue
    const/16 v3, 0x2761

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 814
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 815
    iput v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    .line 816
    invoke-virtual {p0, v3, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 817
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 818
    const/16 v0, 0x4e96

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 820
    return-void
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 831
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 870
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onMessageHandler(Landroid/os/Message;)V

    .line 873
    :goto_0
    :sswitch_0
    return-void

    .line 834
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onRequestAlbumInfo()V

    goto :goto_0

    .line 837
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onRequestPhotoList(Landroid/os/Message;)V

    goto :goto_0

    .line 840
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onRequestDataUpdate(Landroid/os/Message;)V

    goto :goto_0

    .line 846
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncConnection()V

    goto :goto_0

    .line 849
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncAlbumInfo()V

    goto :goto_0

    .line 852
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncListComplete()V

    goto :goto_0

    .line 858
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 861
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onErrorConnection()V

    goto :goto_0

    .line 864
    :sswitch_9
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onErrorAlbumInfo()V

    goto :goto_0

    .line 867
    :sswitch_a
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onErrorNoList()V

    goto :goto_0

    .line 831
    nop

    :sswitch_data_0
    .sparse-switch
        0x1397 -> :sswitch_0
        0x274c -> :sswitch_8
        0x2761 -> :sswitch_a
        0x2764 -> :sswitch_9
        0x4e22 -> :sswitch_1
        0x4e25 -> :sswitch_2
        0x4e28 -> :sswitch_3
        0x4e3d -> :sswitch_0
        0x4e84 -> :sswitch_4
        0x4e87 -> :sswitch_5
        0x4e88 -> :sswitch_6
        0x4e89 -> :sswitch_7
    .end sparse-switch
.end method

.method public onNotifyDataSetChange()V
    .locals 0

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->notifyDataSetChanged()V

    .line 828
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LivePhotoAdapterBase][onPause]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onPause()V

    .line 149
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onPause()V

    .line 150
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->releaseMemoryCache()V

    .line 161
    :cond_0
    return-void
.end method

.method public onRequestAlbumInfo()V
    .locals 4

    .prologue
    .line 330
    const/16 v2, 0x4eee

    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIState:I

    if-ne v2, v3, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v2, :cond_0

    .line 336
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 338
    .local v1, szIds:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, nIndex:I
    :goto_1
    array-length v2, v1

    if-le v2, v0, :cond_2

    .line 340
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 344
    :cond_2
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getAlbumOp([Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onRequestDataUpdate(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x4e25

    const/16 v4, 0x2724

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 284
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mLastErrorState:I

    sparse-switch v0, :sswitch_data_0

    .line 321
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 322
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 291
    :sswitch_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 310
    :sswitch_1
    const/16 v0, 0x4e22

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 311
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 316
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v0, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 317
    invoke-virtual {p0, v4, v3, v2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 287
    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_0
        0x2761 -> :sswitch_2
        0x2764 -> :sswitch_1
    .end sparse-switch
.end method

.method public onRequestPhoto(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "nPos"
    .parameter "aPhoto"

    .prologue
    .line 426
    const/4 v6, 0x0

    .line 427
    .local v6, bIsCacheExit:Z
    const/4 v7, 0x0

    .line 429
    .local v7, bitmap:Landroid/graphics/Bitmap;
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIState:I

    if-ne v0, v1, :cond_0

    move-object v8, v7

    .line 438
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .local v8, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v8

    .line 432
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    move-object v8, v7

    .line 433
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 436
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v4, 0x0

    iget v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFirstVisibleIndex:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap2(Landroid/content/Context;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onSyncDownloadStatus(I)V

    move-object v8, v7

    .line 438
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public onRequestPhotoIntegrity(I)I
    .locals 5
    .parameter "nPos"

    .prologue
    .line 409
    const/4 v1, -0x1

    .line 410
    .local v1, nIntegrity:I
    const/16 v3, 0x4eee

    iget v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIState:I

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 422
    .end local v1           #nIntegrity:I
    .local v2, nIntegrity:I
    :goto_0
    return v2

    .line 413
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v3, :cond_1

    move v2, v1

    .line 414
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0

    .line 416
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_1
    const/4 v0, 0x0

    .line 417
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    if-nez v0, :cond_2

    move v2, v1

    .line 418
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0

    .line 420
    .end local v2           #nIntegrity:I
    .restart local v1       #nIntegrity:I
    :cond_2
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v3, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageIntegrity(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)I

    move-result v1

    move v2, v1

    .line 422
    .end local v1           #nIntegrity:I
    .restart local v2       #nIntegrity:I
    goto :goto_0
.end method

.method public onRequestPhotoList(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 349
    sget-object v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][onRequestPhotoList]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/16 v2, 0x4eee

    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIState:I

    if-ne v2, v3, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTLIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, nMediumType:I
    const/4 v1, 0x0

    .line 367
    .local v1, szMediumId:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 368
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #szMediumId:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 369
    .restart local v1       #szMediumId:Ljava/lang/String;
    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v6, v2, :cond_3

    .line 371
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v1, v5, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPhotoList(Ljava/lang/String;Ljava/lang/String;ZI)Z

    goto :goto_0

    .line 375
    :cond_3
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v1, v6, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPhotoList(Ljava/lang/String;Ljava/lang/String;ZI)Z

    goto :goto_0

    .line 378
    .end local v0           #nMediumType:I
    .end local v1           #szMediumId:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 380
    const/4 v0, 0x0

    .line 381
    .restart local v0       #nMediumType:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v6, v2, :cond_5

    .line 383
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v5, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPhotosOfMeList(Ljava/lang/String;ZI)Z

    goto/16 :goto_0

    .line 387
    :cond_5
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v6, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getPhotosOfMeList(Ljava/lang/String;ZI)Z

    goto/16 :goto_0

    .line 393
    .end local v0           #nMediumType:I
    :cond_6
    const/4 v0, 0x0

    .line 394
    .restart local v0       #nMediumType:I
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 395
    const/4 v0, 0x1

    .line 397
    :cond_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v6, v2, :cond_8

    .line 399
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v5, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getRecentPhotoList(Ljava/lang/String;ZI)Z

    goto/16 :goto_0

    .line 403
    :cond_8
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v6, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getRecentPhotoList(Ljava/lang/String;ZI)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LivePhotoAdapterBase][onResume]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    .line 130
    const/16 v0, 0x4eec

    iget v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->triggerListRefresh()V

    .line 133
    :cond_0
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork;->onResume()V

    .line 134
    return-void
.end method

.method public onSyncAlbumInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 469
    const/16 v0, 0x2731

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 470
    const/16 v0, 0x4e87

    invoke-virtual {p0, v0, v2, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 471
    return-void
.end method

.method public onSyncConnection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItemRequest()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 457
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "from_outside"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    .line 458
    const/16 v1, 0x4e25

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 460
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_0

    .line 462
    const-string v1, "index_id"

    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    const/16 v1, 0x4e35

    invoke-virtual {p0, v1, v0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 465
    :cond_0
    return-void
.end method

.method public onSyncDownloadStatus(I)V
    .locals 2
    .parameter "nTimeOut"

    .prologue
    .line 451
    const/16 v0, 0x4e96

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 452
    return-void
.end method

.method public onSyncListComplete()V
    .locals 7

    .prologue
    const/16 v6, 0x4f4d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 475
    sget-object v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LivePhotoAdapterBase][onSyncListComplete]: Begin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIScrollState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const/16 v1, 0x4eec

    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIState:I

    if-gt v1, v2, :cond_0

    .line 503
    :goto_0
    return-void

    .line 479
    :cond_0
    const/4 v0, 0x0

    .line 480
    .local v0, isListSizeChanged:Z
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getCachedPhotoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->syncListItem(Ljava/lang/Object;)Z

    move-result v0

    .line 482
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setAdapterList(Ljava/util/List;)V

    .line 483
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->doUpdateFocusedItem()V

    .line 485
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mTemplateRef:Lcom/htc/opensense2/album/ViewTemplateBase;

    if-eqz v1, :cond_1

    .line 486
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mTemplateRef:Lcom/htc/opensense2/album/ViewTemplateBase;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/ViewTemplateBase;->onNotifyListUpdate()V

    .line 488
    :cond_1
    const/16 v1, 0x4e88

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 489
    const/16 v1, 0x2728

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 491
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    if-nez v1, :cond_4

    .line 493
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/BaseListPlugin;->onEnableCacheList()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 494
    :cond_2
    const/16 v1, 0x4e25

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 495
    :cond_3
    iput-boolean v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    .line 497
    :cond_4
    iget v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIScrollState:I

    if-ne v6, v1, :cond_5

    .line 499
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 500
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyImageStatus(I)V

    .line 502
    :cond_5
    sget-object v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][LivePhotoAdapterBase][onSyncListComplete]: End"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 507
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v4, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 511
    .local v1, bundleNotify:Landroid/os/Bundle;
    const-string v4, "index_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 512
    .local v3, nIndex:I
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 514
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v0, :cond_0

    .line 517
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v2

    .line 518
    .local v2, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    if-eqz v2, :cond_0

    .line 523
    iget v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v4, :cond_5

    .line 525
    iget-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 526
    iget v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIndex:I

    if-nez v4, :cond_2

    const/16 v4, 0x4e45

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 536
    :cond_2
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 537
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyImageStatus(I)V

    .line 545
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_0

    .line 539
    :cond_4
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyImageStatus(I)V

    goto :goto_1

    .line 541
    :cond_5
    const/4 v4, 0x1

    iget v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v4, v5, :cond_3

    .line 542
    iget-object v4, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    iget-object v5, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public onTriggerDownloadRequest(I)V
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 785
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v1, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 789
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v0, :cond_0

    .line 790
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public onVerifyFullstripItemStatus(I)V
    .locals 10
    .parameter "nIndexItem"

    .prologue
    const/4 v9, 0x1

    .line 706
    const/4 v8, -0x1

    .line 707
    .local v8, nIntegrity:I
    const/4 v2, 0x0

    .line 708
    .local v2, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v6, 0x0

    .line 709
    .local v6, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getCount()I

    move-result v7

    .line 713
    .local v7, nCount:I
    move v1, p1

    .line 715
    .local v1, nIndex:I
    const/4 v0, -0x1

    if-ne v0, v1, :cond_5

    .line 717
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v1, v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    :goto_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v0, v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    if-lt v0, v1, :cond_0

    .line 720
    if-gt v7, v1, :cond_1

    .line 782
    :cond_0
    :goto_1
    return-void

    .line 726
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v2

    if-nez v2, :cond_3

    .line 717
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 729
    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mHandlerData:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v4, v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v5, v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;II)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v6

    .line 731
    if-eqz v6, :cond_2

    .line 735
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v0, :cond_4

    .line 738
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v3, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 739
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_2

    .line 741
    :cond_4
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v9, v0, :cond_2

    .line 744
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    iget-object v3, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 745
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_2

    .line 753
    :cond_5
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 756
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequestSingle(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v6

    .line 758
    if-eqz v6, :cond_0

    .line 760
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-eq v0, v9, :cond_0

    .line 762
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v0, :cond_6

    .line 764
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][onVerifyFullstripItemStatus]: existing thumb: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v3, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 766
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto/16 :goto_1

    .line 768
    :cond_6
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v9, v0, :cond_7

    .line 770
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][onVerifyFullstripItemStatus]: existing full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mTaskID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    iget-object v3, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 772
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto/16 :goto_1

    .line 776
    :cond_7
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][onVerifyFullstripItemStatus]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onVerifyGridItemStatus(I)V
    .locals 9
    .parameter "nIndexItem"

    .prologue
    const/4 v8, 0x1

    .line 629
    const/4 v7, -0x1

    .line 630
    .local v7, nIntegrity:I
    const/4 v2, 0x0

    .line 631
    .local v2, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v6, 0x0

    .line 633
    .local v6, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][onVerifyGridItemStatus]: index range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v4, v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v4, v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    move v1, p1

    .line 640
    .local v1, nIndex:I
    const/4 v0, -0x1

    if-ne v0, v1, :cond_3

    .line 642
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v1, v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    :goto_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v0, v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    if-le v0, v1, :cond_4

    .line 645
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v2

    if-nez v2, :cond_1

    .line 642
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mHandlerData:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v4, v4, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexBegin:I

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mBufferRange:Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;

    iget v5, v5, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase$IndexRange;->mIndexEnd:I

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequest(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;II)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v6

    .line 649
    if-eqz v6, :cond_0

    .line 653
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v0, :cond_2

    .line 656
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v3, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 657
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_1

    .line 659
    :cond_2
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v8, v0, :cond_0

    .line 662
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    iget-object v3, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 663
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_1

    .line 675
    :cond_3
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v2

    if-nez v2, :cond_5

    .line 703
    :cond_4
    :goto_2
    return-void

    .line 678
    :cond_5
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mHandlerData:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->forwardDownloadRequestSingle(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Landroid/os/Handler;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v6

    .line 679
    if-eqz v6, :cond_4

    .line 681
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-eq v0, v8, :cond_4

    .line 683
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-nez v0, :cond_6

    .line 686
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v3, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v2, v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 687
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_2

    .line 689
    :cond_6
    iget v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mIntegrity:I

    if-ne v8, v0, :cond_4

    .line 692
    iget-object v0, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    iget-object v3, v6, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 693
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->triggerNotifyImageDownloaded(I)V

    goto :goto_2
.end method

.method public onVerifyImageStatus(I)V
    .locals 2
    .parameter "nIndexTrigger"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getIndexRange(I)V

    .line 618
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 620
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyGridItemStatus(I)V

    goto :goto_0

    .line 622
    :cond_2
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getLayoutType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 624
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyFullstripItemStatus(I)V

    goto :goto_0
.end method

.method public setCenteredVisibleRange(IZ)V
    .locals 3
    .parameter "nPosCenter"
    .parameter "bIsRefresh"

    .prologue
    .line 955
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    add-int/lit8 v1, p1, -0xf

    add-int/lit8 v2, p1, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setVisibleRange(II)V

    .line 957
    :cond_0
    return-void
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z
    .locals 5
    .parameter "dataPlugin"

    .prologue
    .line 1024
    sget-object v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][setDataPlugin] dataPlugin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const/4 v0, 0x0

    .line 1026
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eq v2, p1, :cond_0

    .line 1028
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItemRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1029
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "from_outside"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1030
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->setDataRequest(Ljava/lang/Object;)V

    .line 1032
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 1033
    const/4 v0, 0x1

    .line 1035
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_0
    return v0
.end method

.method public setGenuine(Z)V
    .locals 0
    .parameter "bIsGenuine"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsGenuine:Z

    .line 103
    return-void
.end method

.method public setInternal(Z)V
    .locals 3
    .parameter "bIsInternal"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsInternal:Z

    .line 63
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LivePhotoAdapterBase][setInternal]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsInternal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public setPhotoPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 960
    iput p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFirstVisibleIndex:I

    iput p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndexNext:I

    iput p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mPhotoDetailIndex:I

    .line 961
    return-void
.end method

.method public setScrollState(II)V
    .locals 4
    .parameter "nScrollState"
    .parameter "nFirstIndex"

    .prologue
    const/16 v3, 0x4f4d

    .line 554
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-nez v0, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIScrollState:I

    if-ne v3, v0, :cond_2

    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFirstVisibleIndex:I

    if-eq v0, p2, :cond_0

    .line 560
    :cond_2
    iput p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIScrollState:I

    .line 561
    iput p2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mFirstVisibleIndex:I

    .line 565
    iget v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIScrollState:I

    if-ne v3, v0, :cond_3

    .line 567
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LivePhotoAdapterBase][setScrollState]: IDLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 569
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyImageStatus(I)V

    goto :goto_0

    .line 573
    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/16 v1, 0x4f4e

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 574
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->cancelDownloadTasks()V

    goto :goto_0
.end method

.method public setTemplateID(I)V
    .locals 0
    .parameter "nTemplateID"

    .prologue
    .line 98
    iput p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mTemplateID:I

    .line 99
    return-void
.end method

.method public setTemplateLayout(ILcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V
    .locals 3
    .parameter "nLayout"
    .parameter "decoderListener"
    .parameter "downloadListener"

    .prologue
    .line 237
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LivePhotoAdapterBase][setTemplateLayout]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/16 v0, 0x4f4d

    iput v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIScrollState:I

    .line 245
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->changeLayoutType(I)V

    .line 246
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setImageDecoder(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDecoder;)V

    .line 247
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setImageDownloadedListener(Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;)V

    .line 248
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->updateMaxDownloadBuffer()V

    goto :goto_0

    .line 252
    :cond_2
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setMaxDownloadBuffer(I)V

    goto :goto_0
.end method

.method public setTemplateReference(Lcom/htc/opensense2/album/ViewTemplateBase;)V
    .locals 0
    .parameter "template"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mTemplateRef:Lcom/htc/opensense2/album/ViewTemplateBase;

    .line 59
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 949
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setVisibleRange(II)V

    .line 951
    :cond_0
    return-void
.end method

.method public syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 9
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 165
    const/4 v0, 0x0

    .line 168
    .local v0, bResult:Z
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getItemRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 170
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "service_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    const-string v3, "service_name"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 173
    :cond_0
    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mUserIds:Ljava/util/ArrayList;

    const-string v3, "user_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_1
    const-string v2, "album_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 177
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    const-string v3, "album_name"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    .line 179
    :cond_2
    const-string v2, "album_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 180
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumIds:Ljava/util/ArrayList;

    const-string v3, "album_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_3
    const-string v2, "photo_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 183
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mMediumIds:Ljava/util/ArrayList;

    const-string v3, "photo_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_4
    sget-object v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: album: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterSceneSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getDataHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->getUIHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v2

    if-ne v7, v2, :cond_5

    .line 192
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v2

    if-nez v2, :cond_6

    .line 194
    sget-object v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: no account..."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/16 v2, 0x274f

    invoke-virtual {p0, v2, v8, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 233
    :cond_5
    :goto_0
    return-void

    .line 199
    :cond_6
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v2

    if-ne v7, v2, :cond_8

    .line 201
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v2

    if-nez v2, :cond_7

    .line 203
    sget-object v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: no change just skip!!"

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_7
    const/16 v2, 0x2750

    invoke-virtual {p0, v2, v8, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 212
    :cond_8
    sget-object v2, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][LivePhotoAdapterBase][syncBackgroundService]: InitConnection.."

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 215
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v2, :cond_9

    .line 217
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    goto :goto_0

    .line 221
    :cond_9
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v2, v7, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 227
    const/16 v2, 0x2724

    invoke-virtual {p0, v2, v8, v6}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public syncListItem(Ljava/lang/Object;)Z
    .locals 14
    .parameter "objList"

    .prologue
    const/4 v11, 0x0

    .line 881
    const/4 v7, 0x0

    .local v7, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    move-object v7, p1

    .line 882
    check-cast v7, Ljava/util/List;

    .line 884
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 944
    :cond_0
    :goto_0
    return v11

    .line 892
    :cond_1
    const/4 v8, 0x0

    .line 893
    .local v8, refList:Ljava/util/List;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 895
    .local v9, tempList:Ljava/util/List;
    sget-object v10, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][LivePhotoAdapterBase][syncListItem]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const/4 v0, 0x0

    .line 900
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const/4 v3, 0x0

    .line 901
    .local v3, imageCache:Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;
    const/4 v4, 0x0

    .local v4, index:I
    move-object v1, v0

    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .local v1, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :goto_1
    :try_start_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v4, :cond_4

    .line 903
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    .end local v1           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .restart local v0       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :try_start_1
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getFolderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFolderName(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setIndex(I)V

    .line 906
    iget v10, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mTemplateID:I

    invoke-virtual {v0, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setTemplateID(I)V

    .line 907
    iget-object v10, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v10, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageCache(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;

    move-result-object v3

    .line 909
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 911
    iget-object v10, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    if-eqz v10, :cond_2

    .line 913
    iget-object v10, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrlThumb:Ljava/lang/String;

    iget-object v12, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUriThumb:Landroid/net/Uri;

    invoke-virtual {v0, v10, v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 916
    :cond_2
    iget-object v10, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    if-eqz v10, :cond_3

    .line 918
    iget-object v10, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUrl:Ljava/lang/String;

    iget-object v12, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ImageCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v10, v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setFilePath(Ljava/lang/String;Landroid/net/Uri;)V

    .line 922
    :cond_3
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 901
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .restart local v1       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    goto :goto_1

    .line 924
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 925
    .end local v1           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .restart local v0       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    iput-boolean v11, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsLatest:Z

    .line 926
    sget-object v10, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][LivePhotoAdapterBase][syncListItem]: Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 930
    .end local v0           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :cond_4
    iget-object v10, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .line 931
    .local v6, oldSize:I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .line 934
    .local v5, newSize:I
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mList:Ljava/util/List;

    .line 937
    iput-object v9, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mList:Ljava/util/List;

    .line 938
    sget-object v10, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][LivePhotoAdapterBase][syncListItem]: new list: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    sget-object v10, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[HTCAlbum][LivePhotoAdapterBase][syncListItem]: clear old: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 944
    if-eq v5, v6, :cond_5

    const/4 v10, 0x1

    :goto_3
    move v11, v10

    goto/16 :goto_0

    :cond_5
    move v10, v11

    goto :goto_3

    .line 924
    .end local v1           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v5           #newSize:I
    .end local v6           #oldSize:I
    .restart local v0       #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public triggerListRefresh()V
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LivePhotoAdapterBase][triggerListRefresh]: re triggering..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->updateMaxDownloadBuffer()V

    .line 139
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    const/16 v1, 0x4f4d

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setScrollState(I)V

    .line 141
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->onVerifyImageStatus(I)V

    .line 142
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mTemplateRef:Lcom/htc/opensense2/album/ViewTemplateBase;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mTemplateRef:Lcom/htc/opensense2/album/ViewTemplateBase;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/ViewTemplateBase;->onNotifyListUpdate()V

    .line 144
    :cond_1
    return-void
.end method

.method public updateMaxDownloadBuffer()V
    .locals 4

    .prologue
    const/16 v3, 0x1c

    .line 259
    const/16 v1, 0x4eee

    iget v2, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mUIState:I

    if-ne v1, v2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    if-eqz v1, :cond_0

    .line 265
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mIsInternal:Z

    if-nez v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setMaxDownloadBuffer(I)V

    goto :goto_0

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 272
    .local v0, nOrientation:I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    .line 273
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setMaxDownloadBuffer(I)V

    goto :goto_0

    .line 275
    :cond_3
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/LivePhotoAdapterBase;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    invoke-virtual {v1, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setMaxDownloadBuffer(I)V

    goto :goto_0
.end method
