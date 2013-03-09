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

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsExceptioned:Z

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 10

    const/4 v9, 0x1

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

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaSource:Ljava/util/List;

    if-nez v4, :cond_1

    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: No source just skip.."

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v9}, Ljava/lang/Integer;-><init>(I)V

    return-object v4

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

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v5}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->isFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v4

    if-eq v9, v4, :cond_2

    iget-boolean v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsCacheExits:Z

    if-nez v4, :cond_e

    :cond_2
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: sync live photo.."

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v2

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

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentVideos:Z
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1000(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v4

    if-ne v9, v4, :cond_3

    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: sync live video.."

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    :cond_3
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnablePhotosOfMe:Z
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1100(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v4

    if-ne v9, v4, :cond_4

    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: sync photos of me.."

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_5

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentWrappers:Ljava/util/List;

    new-instance v6, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v6, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v5}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->putRecentListToFileCache(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1200(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_6

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentVWrappers:Ljava/util/List;

    new-instance v6, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v6, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v5}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->putRecentVideoListToFileCache(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1300(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_7

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mRecentPOMWrappers:Ljava/util/List;

    new-instance v6, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v6, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v5}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->putPhotosOfMeListToFileCache(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1400(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    new-instance v3, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v3}, Lcom/htc/opensense/social/data/Album;-><init>()V

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTPLIST:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v4}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/opensense/social/data/Album;->coverThumbnailUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Lcom/htc/opensense/social/data/Album;->count:I

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

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePhoto:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v4}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v4

    iget-wide v4, v4, Lcom/htc/opensense/social/data/Medium;->createTime:J

    iput-wide v4, v3, Lcom/htc/opensense/social/data/Album;->createTime:J

    :goto_4
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    const/4 v5, 0x0

    new-instance v6, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v6, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_8
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    new-instance v3, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v3}, Lcom/htc/opensense/social/data/Album;-><init>()V

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v4}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/opensense/social/data/Album;->coverThumbnailUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Lcom/htc/opensense/social/data/Album;->count:I

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

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLiveVideo:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v4}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v4

    iget-wide v4, v4, Lcom/htc/opensense/social/data/Medium;->createTime:J

    iput-wide v4, v3, Lcom/htc/opensense/social/data/Album;->createTime:J

    :goto_5
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    const/4 v5, 0x1

    new-instance v6, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v6, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_9
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    new-instance v3, Lcom/htc/opensense/social/data/Album;

    invoke-direct {v3}, Lcom/htc/opensense/social/data/Album;-><init>()V

    sget-object v4, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/opensense/social/data/Album;->albumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v4}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/opensense/social/data/Medium;->thumbnailUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/opensense/social/data/Album;->coverThumbnailUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v3, Lcom/htc/opensense/social/data/Album;->count:I

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

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListLivePOM:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v4}, Lcom/htc/opensense/social/MediumOp;->getData()Lcom/htc/opensense/social/data/Medium;

    move-result-object v4

    iget-wide v4, v4, Lcom/htc/opensense/social/data/Medium;->createTime:J

    iput-wide v4, v3, Lcom/htc/opensense/social/data/Album;->createTime:J

    :goto_6
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    const/4 v5, 0x0

    new-instance v6, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    invoke-direct {v6, v3}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_a
    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    const/4 v5, 0x1

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v4, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$602(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

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

    iput-boolean v9, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsExceptioned:Z

    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    goto/16 :goto_0

    :cond_b
    const-wide/16 v4, 0x0

    :try_start_2
    iput-wide v4, v3, Lcom/htc/opensense/social/data/Album;->createTime:J

    goto/16 :goto_4

    :cond_c
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/htc/opensense/social/data/Album;->createTime:J

    goto/16 :goto_5

    :cond_d
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/htc/opensense/social/data/Album;->createTime:J

    goto :goto_6

    :cond_e
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: use cache...!!"

    invoke-static {v4, v5}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mListCache:Ljava/util/List;

    if-eqz v4, :cond_0

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

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 10

    const/16 v9, 0x4e2f

    const/16 v8, 0x2761

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$708(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I

    iget-boolean v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mIsExceptioned:Z

    if-ne v7, v2, :cond_2

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumRequestTotal:I
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$900(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v3

    if-gt v2, v3, :cond_1

    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: Error End... "

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v2, v8, v6, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    :goto_0
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v2, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$602(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    const/16 v3, 0x4e88

    invoke-virtual {v2, v3, v6, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Error Next..."

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v2, v9, v6, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

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

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v2

    if-ne v7, v2, :cond_3

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v3}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v4, v4, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->putListToFileCache(Ljava/lang/String;Ljava/util/List;)V
    invoke-static {v2, v3, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentPhotos:Z
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Filter recent photo from list..."

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v0, :cond_7

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTPLIST:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnablePhotosOfMe:Z
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1100(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Filter photo of me from list..."

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v0, :cond_8

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEPOMLIST:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mIsEnableRecentVideos:Z
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$1000(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: Filter recent videos from list..."

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;

    if-eqz v0, :cond_9

    sget-object v2, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHERECENTVLIST:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperAlbum;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v3, v3, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumRequestTotal:I
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$900(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v3

    if-gt v2, v3, :cond_b

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

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v2, v8, v6, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    const/16 v3, 0x4e88

    invoke-virtual {v2, v3, v6, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0

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

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-virtual {v2, v9, v6, v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqRecentList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
