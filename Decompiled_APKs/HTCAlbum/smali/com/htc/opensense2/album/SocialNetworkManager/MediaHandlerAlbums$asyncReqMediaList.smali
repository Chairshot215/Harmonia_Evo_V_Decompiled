.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerAlbums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;
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

.field private mIsTaskCancel:Z

.field private mListCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mListLive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/AlbumOp;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonOp:Lcom/htc/opensense/social/PersonOp;

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 284
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 286
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsExceptioned:Z

    .line 287
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    .line 288
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsTaskCancel:Z

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListCache:Ljava/util/List;

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListLive:Ljava/util/List;

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 13
    .parameter "urls"

    .prologue
    const/4 v12, 0x1

    .line 296
    :try_start_0
    const-string v9, "MediaHandlerAlbums"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "getAlbums.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    if-eqz v9, :cond_3

    .line 299
    const/4 v8, 0x0

    .line 300
    .local v8, walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mUids:Ljava/util/List;

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .local v6, uid:Ljava/lang/String;
    :try_start_1
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->isFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v9, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    .line 306
    iget-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    if-eqz v9, :cond_0

    .line 307
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v9, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 308
    .local v7, validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0

    .line 317
    .end local v7           #validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    :cond_0
    :goto_0
    :try_start_2
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v9

    if-eq v12, v9, :cond_1

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v9}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->onEnableCacheList()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    if-nez v9, :cond_2

    .line 319
    :cond_1
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/AlbumListPluginBase;

    invoke-virtual {v9, v6}, Lcom/htc/opensense/album/plugin/AlbumListPluginBase;->getAlbums(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 320
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/AlbumData;>;"
    if-eqz v3, :cond_2

    .line 322
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/plugin/AlbumData;

    .line 324
    .local v0, data:Lcom/htc/opensense/album/plugin/AlbumData;
    new-instance v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    .end local v8           #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-direct {v8, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/data/Album;)V

    .line 325
    .restart local v8       #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    invoke-virtual {v0}, Lcom/htc/opensense/album/plugin/AlbumData;->getPid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;->setPID(Ljava/lang/String;)V

    .line 326
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 375
    .end local v0           #data:Lcom/htc/opensense/album/plugin/AlbumData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/AlbumData;>;"
    .end local v6           #uid:Ljava/lang/String;
    .end local v8           #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :catch_0
    move-exception v1

    .line 378
    .local v1, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    const-string v9, "MediaHandlerAlbums"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList] SocialNetworkException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iput-boolean v12, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsExceptioned:Z

    .line 383
    .end local v1           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    :cond_2
    :goto_2
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v12}, Ljava/lang/Integer;-><init>(I)V

    return-object v9

    .line 311
    .restart local v6       #uid:Ljava/lang/String;
    .restart local v8       #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :catch_1
    move-exception v1

    .line 312
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v9, "MediaHandlerAlbums"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    .line 314
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/4 v10, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z

    goto/16 :goto_0

    .line 333
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #uid:Ljava/lang/String;
    .end local v8           #walbum:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :cond_3
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaSource:Ljava/util/List;

    if-eqz v9, :cond_2

    .line 335
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaSource:Ljava/util/List;

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/social/PersonOp;

    iput-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;
    :try_end_3
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_3 .. :try_end_3} :catch_0

    .line 340
    :try_start_4
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v10}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v10

    iget-object v10, v10, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->isFileCacheExist(Ljava/lang/String;)Z
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    .line 341
    iget-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    if-eqz v9, :cond_4

    .line 342
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v10}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v10

    iget-object v10, v10, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->getListFromFileCache(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 343
    .restart local v7       #validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_4 .. :try_end_4} :catch_0

    .line 352
    .end local v7           #validList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    :cond_4
    :goto_3
    :try_start_5
    const-string v9, "MediaHandlerAlbums"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumCount:I
    invoke-static {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mAlbumRequestTotal:I
    invoke-static {v11}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;)Z

    move-result v9

    if-eq v12, v9, :cond_5

    iget-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    if-nez v9, :cond_2

    .line 356
    :cond_5
    const-string v9, "MediaHandlerAlbums"

    const-string v10, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: sync live..!!!"

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v5, tmpMedia:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    if-eqz v9, :cond_6

    .line 360
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mPersonOp:Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v9}, Lcom/htc/opensense/social/PersonOp;->getAlbumsOf()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListLive:Ljava/util/List;

    .line 362
    :cond_6
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListLive:Ljava/util/List;

    if-eqz v9, :cond_7

    .line 364
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_4
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListLive:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v4, :cond_7

    .line 366
    new-instance v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mListLive:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/social/AlbumOp;

    invoke-direct {v10, v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;-><init>(Lcom/htc/opensense/social/AlbumOp;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 346
    .end local v4           #nIndex:I
    .end local v5           #tmpMedia:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    :catch_2
    move-exception v1

    .line 347
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v9, "MediaHandlerAlbums"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerAlbums][asyncReqRecentList]: exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsCacheExits:Z

    .line 349
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/4 v10, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z

    goto/16 :goto_3

    .line 369
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v5       #tmpMedia:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperAlbum;>;"
    :cond_7
    iget-boolean v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsTaskCancel:Z

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappersTemp:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 370
    :cond_8
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/4 v10, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v9, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z
    :try_end_5
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 284
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsTaskCancel:Z

    .line 388
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 396
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mMediaWrappers:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->mIsExceptioned:Z

    if-ne v0, v1, :cond_1

    .line 398
    :cond_0
    const-string v0, "MediaHandlerAlbums"

    const-string v1, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: Error Next..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->mIsForceLiveUpdate:Z
    invoke-static {v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;Z)Z

    .line 406
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;

    const/16 v1, 0x4e2e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 407
    return-void

    .line 402
    :cond_1
    const-string v0, "MediaHandlerAlbums"

    const-string v1, "[HTCAlbum][MediaHandlerAlbums][asyncReqMediaList]: Success Next... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 284
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 391
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 284
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerAlbums$asyncReqMediaList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
