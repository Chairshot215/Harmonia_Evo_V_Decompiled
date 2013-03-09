.class Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerPhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqPhotosOfMeList"
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

    .line 386
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 388
    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsExceptioned:Z

    .line 389
    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsCacheExits:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 13
    .parameter "urls"

    .prologue
    const/4 v12, 0x1

    .line 394
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$600()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhotosOfMeList]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v9}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "getRecentMedia.."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v7, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    if-eqz v7, :cond_3

    .line 397
    const/4 v1, 0x0

    .line 398
    .local v1, listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v2, 0x0

    .line 399
    .local v2, listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    const/4 v4, 0x0

    .line 401
    .local v4, listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->isPhotosOfMeFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v7, v8}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$1500(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsCacheExits:Z

    .line 403
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v7}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v7

    if-eq v12, v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsCacheExits:Z

    if-nez v7, :cond_4

    .line 405
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$600()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhotosOfMeList]: sync live: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I
    invoke-static {v9}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v7, 0x1

    new-array v3, v7, [Lcom/htc/opensense/social/data/Person;

    .line 407
    .local v3, listPerson:[Lcom/htc/opensense/social/data/Person;
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getProfile()Lcom/htc/opensense/social/data/Person;

    move-result-object v8

    aput-object v8, v3, v7

    .line 408
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v7, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 409
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v7}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$500(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    invoke-virtual {v7, v3}, Lcom/htc/opensense/social/SocialServiceManager;->getPersonOps([Lcom/htc/opensense/social/data/Person;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 411
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v7}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$500(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v6

    .line 412
    .local v6, nScreenDisplay:[I
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense/social/PersonOp;

    const/16 v8, 0x63

    iget-object v9, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I
    invoke-static {v9}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)I

    move-result v9

    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/htc/opensense/social/PersonOp;->getMediaTagOf(IIII)Ljava/util/List;

    move-result-object v2

    .line 418
    .end local v6           #nScreenDisplay:[I
    :cond_1
    if-eqz v2, :cond_2

    .line 420
    const/4 v5, 0x0

    .local v5, nIndex:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_2

    .line 422
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v8, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    new-instance v9, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v9, v7}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 425
    .end local v5           #nIndex:I
    :cond_2
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    const/4 v8, 0x1

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v7, v8}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$702(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Z)Z
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v1           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;>;"
    .end local v2           #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    .end local v3           #listPerson:[Lcom/htc/opensense/social/data/Person;
    .end local v4           #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :cond_3
    :goto_1
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v12}, Ljava/lang/Integer;-><init>(I)V

    return-object v7

    .line 429
    .restart local v1       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;>;"
    .restart local v2       #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    .restart local v4       #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$600()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhotosOfMeList]: use cache: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mRecentListType:I
    invoke-static {v9}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->getPhotosOfMeListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v7, v8}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$1600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;>;"
    check-cast v1, Ljava/util/List;

    .line 433
    .restart local v1       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;>;"
    if-eqz v1, :cond_3

    .line 435
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iput-object v1, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 442
    .end local v1           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;>;"
    .end local v2           #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    .end local v4           #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$600()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhotosOfMeList] SocialNetworkException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iput-boolean v12, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsExceptioned:Z

    .line 447
    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 386
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 454
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

    .line 461
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->mIsExceptioned:Z

    if-ne v5, v0, :cond_1

    .line 463
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][MediaHandlerPhotos][asyncReqRecentMediaList]:  Error run! "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, v6, v4, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 480
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v0, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$702(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Z)Z

    .line 481
    return-void

    .line 468
    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MediaHandlerPhotos][asyncReqRecentMediaList]: Total Photos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mIsForceLiveUpdate:Z
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Z

    move-result v0

    if-ne v5, v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUser:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->putPhotosOfMeListToFileCache(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$1700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Ljava/lang/String;)V

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 476
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, v6, v4, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 478
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    const/16 v1, 0x4e88

    invoke-virtual {v0, v1, v4, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 386
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 457
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 386
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhotosOfMeList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
