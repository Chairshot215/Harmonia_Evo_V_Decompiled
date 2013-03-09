.class Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerPhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqMediaList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsCacheExits:Z

.field private mIsExceptioned:Z

.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 483
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 485
    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsExceptioned:Z

    .line 486
    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsCacheExits:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 12
    .parameter "urls"

    .prologue
    const/4 v11, 0x1

    .line 491
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$600()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][MediaHandlerPhotos][asyncReqMediaList]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v9}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "getAlbums.."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v7, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v7, :cond_4

    .line 494
    const/4 v2, 0x0

    .line 495
    .local v2, listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v3, 0x0

    .line 496
    .local v3, listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    const/4 v4, 0x0

    .line 497
    .local v4, listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/AlbumOp;>;"
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v7, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 498
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->isFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v7, v8}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$1800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsCacheExits:Z

    .line 500
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v7}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v7

    if-eq v11, v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsCacheExits:Z

    if-nez v7, :cond_5

    .line 502
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$600()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[HTCAlbum][MediaHandlerPhotos][asyncReqMediaList]: sync live..!!"

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const/4 v7, 0x1

    new-array v1, v7, [Lcom/htc/opensense/social/data/Album;

    .line 504
    .local v1, listAlbum:[Lcom/htc/opensense/social/data/Album;
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->getProfile()Lcom/htc/opensense/social/data/Album;

    move-result-object v8

    aput-object v8, v1, v7

    .line 505
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v7}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$500(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    invoke-virtual {v7, v1}, Lcom/htc/opensense/social/SocialServiceManager;->getAlbumOps([Lcom/htc/opensense/social/data/Album;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 507
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v7}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$500(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v6

    .line 508
    .local v6, nScreenDisplay:[I
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsEnableRecentVideos:Z
    invoke-static {v7}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$1900(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v7

    if-ne v11, v7, :cond_2

    .line 510
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense/social/AlbumOp;

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-virtual {v7, v8, v9}, Lcom/htc/opensense/social/AlbumOp;->getMedia(II)Ljava/util/List;

    move-result-object v3

    .line 522
    .end local v6           #nScreenDisplay:[I
    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 524
    const/4 v5, 0x0

    .local v5, nIndex:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_3

    .line 526
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v8, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    new-instance v9, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v9, v7}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 516
    .end local v5           #nIndex:I
    .restart local v6       #nScreenDisplay:[I
    :cond_2
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense/social/AlbumOp;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, 0x1

    aget v10, v6, v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/htc/opensense/social/AlbumOp;->getMedia(III)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 529
    .end local v6           #nScreenDisplay:[I
    :cond_3
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    const/4 v8, 0x1

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v7, v8}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$702(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Z)Z
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v1           #listAlbum:[Lcom/htc/opensense/social/data/Album;
    .end local v2           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;>;"
    .end local v3           #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    .end local v4           #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/AlbumOp;>;"
    :cond_4
    :goto_2
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v11}, Ljava/lang/Integer;-><init>(I)V

    return-object v7

    .line 533
    .restart local v2       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;>;"
    .restart local v3       #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    .restart local v4       #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/AlbumOp;>;"
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$600()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[HTCAlbum][MediaHandlerPhotos][asyncReqMediaList]: use cache...!!"

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v7, v8}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$2000(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;>;"
    check-cast v2, Ljava/util/List;

    .line 536
    .restart local v2       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;>;"
    if-eqz v2, :cond_4

    .line 538
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iput-object v2, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 545
    .end local v2           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;>;"
    .end local v3           #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    .end local v4           #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/AlbumOp;>;"
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$600()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][MediaHandlerPhotos][asyncReqMediaList] SocialNetworkException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iput-boolean v11, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsExceptioned:Z

    .line 550
    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 483
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 557
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7
    .parameter "result"

    .prologue
    const/16 v6, 0x2761

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 564
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->mIsExceptioned:Z

    if-ne v5, v0, :cond_1

    .line 566
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][MediaHandlerPhotos][asyncReqMediaList]:  Error run! "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, v6, v4, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 580
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v0, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$702(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Z)Z

    .line 581
    return-void

    .line 571
    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MediaHandlerPhotos][asyncReqMediaList]: Total Photos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v0

    if-ne v5, v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->putListToFileCache(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$2100(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)V

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 576
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, v6, v4, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 578
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    const/16 v1, 0x4e88

    invoke-virtual {v0, v1, v4, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 483
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 560
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 483
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqMediaList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
