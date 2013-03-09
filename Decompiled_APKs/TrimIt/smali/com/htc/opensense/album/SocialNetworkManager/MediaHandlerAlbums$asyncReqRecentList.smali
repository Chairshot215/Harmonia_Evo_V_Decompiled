.class Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerAlbums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqRecentList"
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

.field private mListCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mListLivePOM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation
.end field

.field private mListLivePhoto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation
.end field

.field private mListLiveVideo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonOp:Lcom/htc/opensense/social/PersonOp;

.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 323
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 325
    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsExceptioned:Z

    .line 326
    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 10
    .parameter "urls"

    .prologue
    const/4 v9, 0x1

    .line 336
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v6}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "getRecentMedia.."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaSource:Ljava/util/List;

    if-nez v4, :cond_1

    .line 340
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: No source just skip.."

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v9}, Ljava/lang/Integer;-><init>(I)V

    return-object v4

    .line 344
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaSource:Ljava/util/List;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/PersonOp;

    iput-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    .line 345
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v5}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->isFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    .line 347
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v4

    if-eq v9, v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    if-nez v4, :cond_e

    .line 349
    :cond_2
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 350
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    if-eqz v4, :cond_4

    .line 352
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: sync live photo.."

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v2

    .line 354
    .local v2, nScreenDisplay:[I
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    const/16 v5, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v2, v7

    const/4 v8, 0x1

    aget v8, v2, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/opensense/social/PersonOp;->getRecentMedia(IIII)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    .line 360
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentVideos:Z
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1000(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v4

    if-ne v9, v4, :cond_3

    .line 362
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: sync live video.."

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    const/16 v5, 0x1e

    const/4 v6, 0x1

    const/4 v7, 0x0

    aget v7, v2, v7

    const/4 v8, 0x1

    aget v8, v2, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/opensense/social/PersonOp;->getRecentMedia(IIII)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    .line 369
    :cond_3
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnablePhotosOfMe:Z
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1100(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v4

    if-ne v9, v4, :cond_4

    .line 371
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: sync photos of me.."

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    const/16 v5, 0x63

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v2, v7

    const/4 v8, 0x1

    aget v8, v2, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/htc/opensense/social/PersonOp;->getMediaTagOf(IIII)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    .line 383
    .end local v2           #nScreenDisplay:[I
    :cond_4
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_5

    .line 385
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentWrappers:Ljava/util/List;

    new-instance v6, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v6, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 387
    :cond_5
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v5}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->putRecentListToFileCache(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1200(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)V

    .line 392
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_6

    .line 394
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentVWrappers:Ljava/util/List;

    new-instance v6, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v6, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 396
    :cond_6
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v5}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->putRecentVideoListToFileCache(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1300(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)V

    .line 401
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_7

    .line 403
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentPOMWrappers:Ljava/util/List;

    new-instance v6, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v6, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 405
    :cond_7
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v5}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->putPhotosOfMeListToFileCache(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1400(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)V

    .line 410
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 412
    new-instance v3, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v3}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 413
    .local v3, profile:Lcom/htc/opensense/social/data/Album;
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTPLIST:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    .line 414
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v4}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/opensense/social/data/Album;->coverThumbnailUrl:Ljava/lang/String;

    .line 415
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Lcom/htc/opensense/social/data/Album;->count:I

    .line 416
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 417
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v4}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v4

    iget-wide v4, v4, Lcom/htc/opensense/social/data/Medium;->createTime:J

    iput-wide v4, v3, Lcom/htc/opensense/social/data/Album;->createTime:J

    .line 420
    :goto_4
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    const/4 v5, 0x0

    new-instance v6, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v6, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 426
    .end local v3           #profile:Lcom/htc/opensense/social/data/Album;
    :cond_8
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 428
    new-instance v3, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v3}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 429
    .restart local v3       #profile:Lcom/htc/opensense/social/data/Album;
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    .line 430
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v4}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/opensense/social/data/Album;->coverThumbnailUrl:Ljava/lang/String;

    .line 431
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Lcom/htc/opensense/social/data/Album;->count:I

    .line 432
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 433
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v4}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v4

    iget-wide v4, v4, Lcom/htc/opensense/social/data/Medium;->createTime:J

    iput-wide v4, v3, Lcom/htc/opensense/social/data/Album;->createTime:J

    .line 436
    :goto_5
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    const/4 v5, 0x1

    new-instance v6, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v6, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 442
    .end local v3           #profile:Lcom/htc/opensense/social/data/Album;
    :cond_9
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 444
    new-instance v3, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v3}, Lcom/htc/opensense/social/data/Album;-><init>()V

    .line 445
    .restart local v3       #profile:Lcom/htc/opensense/social/data/Album;
    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    .line 446
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v4}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/opensense/social/data/Album;->coverThumbnailUrl:Ljava/lang/String;

    .line 447
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Lcom/htc/opensense/social/data/Album;->count:I

    .line 448
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mServiceName:Ljava/lang/String;

    sget-object v5, Lcom/htc/opensense/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 449
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v4}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v4

    iget-wide v4, v4, Lcom/htc/opensense/social/data/Medium;->createTime:J

    iput-wide v4, v3, Lcom/htc/opensense/social/data/Album;->createTime:J

    .line 452
    :goto_6
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    const/4 v5, 0x0

    new-instance v6, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v6, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 455
    .end local v3           #profile:Lcom/htc/opensense/social/data/Album;
    :cond_a
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    const/4 v5, 0x1

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v4, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$602(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 469
    .end local v1           #nIndex:I
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList] SocialNetworkException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iput-boolean v9, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsExceptioned:Z

    .line 474
    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    goto/16 :goto_0

    .line 419
    .end local v0           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .restart local v1       #nIndex:I
    .restart local v3       #profile:Lcom/htc/opensense/social/data/Album;
    :cond_b
    const-wide/16 v4, 0x0

    :try_start_2
    iput-wide v4, v3, Lcom/htc/opensense/social/data/Album;->createTime:J

    goto/16 :goto_4

    .line 435
    :cond_c
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/htc/opensense/social/data/Album;->createTime:J

    goto/16 :goto_5

    .line 451
    :cond_d
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/htc/opensense/social/data/Album;->createTime:J

    goto :goto_6

    .line 459
    .end local v1           #nIndex:I
    .end local v3           #profile:Lcom/htc/opensense/social/data/Album;
    :cond_e
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: use cache...!!"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v5}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1500(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iput-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    .line 462
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 464
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 323
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 10
    .parameter "result"

    .prologue
    const/16 v9, 0x4e2f

    const/16 v8, 0x2761

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 488
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$708(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I

    .line 489
    iget-boolean v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsExceptioned:Z

    if-ne v7, v2, :cond_2

    .line 491
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumRequestTotal:I
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$900(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 493
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: Error End... "

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 495
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v2, v8, v6, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 593
    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v2, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$602(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z

    .line 594
    return-void

    .line 497
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    const/16 v3, 0x4e88

    invoke-virtual {v2, v3, v6, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 501
    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Error Next..."

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v2, v9, v6, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 507
    :cond_2
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Total Albums: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v2

    if-ne v7, v2, :cond_3

    .line 509
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v3}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->putListToFileCache(Ljava/lang/String;Ljava/util/List;)V
    invoke-static {v2, v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;Ljava/util/List;)V

    .line 514
    :cond_3
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentPhotos:Z
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 516
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Filter recent photo from list..."

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, anAlbum:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_4

    .line 520
    const/4 v0, 0x0

    .line 521
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    .restart local v0       #anAlbum:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v0, :cond_7

    .line 523
    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTPLIST:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 526
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 535
    .end local v0           #anAlbum:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;
    .end local v1           #nIndex:I
    :cond_4
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnablePhotosOfMe:Z
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1100(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 537
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Filter photo of me from list..."

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const/4 v0, 0x0

    .line 539
    .restart local v0       #anAlbum:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;
    const/4 v1, 0x0

    .restart local v1       #nIndex:I
    :goto_2
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_5

    .line 541
    const/4 v0, 0x0

    .line 542
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    .restart local v0       #anAlbum:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v0, :cond_8

    .line 544
    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 547
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 556
    .end local v0           #anAlbum:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;
    .end local v1           #nIndex:I
    :cond_5
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentVideos:Z
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1000(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 558
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Filter recent videos from list..."

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/4 v0, 0x0

    .line 560
    .restart local v0       #anAlbum:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;
    const/4 v1, 0x0

    .restart local v1       #nIndex:I
    :goto_3
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_6

    .line 562
    const/4 v0, 0x0

    .line 563
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anAlbum:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;
    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    .restart local v0       #anAlbum:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;
    if-eqz v0, :cond_9

    .line 565
    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 568
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 574
    .end local v0           #anAlbum:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;
    .end local v1           #nIndex:I
    :cond_6
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v3, v3, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 576
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumRequestTotal:I
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$900(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v3

    if-gt v2, v3, :cond_b

    .line 578
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Success End: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 580
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v2, v8, v6, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 518
    .restart local v0       #anAlbum:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;
    .restart local v1       #nIndex:I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 539
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 560
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 582
    .end local v0           #anAlbum:Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;
    .end local v1           #nIndex:I
    :cond_a
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    const/16 v3, 0x4e88

    invoke-virtual {v2, v3, v6, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 586
    :cond_b
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Success Next: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v2, v9, v6, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 323
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 484
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 323
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
