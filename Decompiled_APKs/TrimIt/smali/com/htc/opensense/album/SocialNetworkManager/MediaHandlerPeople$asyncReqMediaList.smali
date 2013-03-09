.class Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;
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
.field private mErrorCode:Lcom/htc/opensense/social/ErrorCode;

.field private mIsCacheExits:Z

.field private mIsExceptioned:Z

.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 467
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 469
    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsExceptioned:Z

    .line 470
    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsCacheExits:Z

    .line 471
    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 13
    .parameter "urls"

    .prologue
    const/4 v12, 0x1

    .line 476
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v10}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "getFriends.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v12, v8, :cond_2

    .line 478
    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsExceptioned:Z
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_1
    :goto_0
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v12}, Ljava/lang/Integer;-><init>(I)V

    return-object v8

    .line 481
    :cond_2
    const/4 v2, 0x0

    .line 482
    .local v2, listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    const/4 v3, 0x0

    .line 483
    .local v3, listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    const/4 v5, 0x0

    .line 485
    .local v5, listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :try_start_1
    iget-object v9, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFRIENDLIST:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->isFileCacheExist(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v9, v8, v10}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsCacheExits:Z

    .line 487
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v8}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v8

    if-eq v12, v8, :cond_3

    iget-boolean v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsCacheExits:Z

    if-nez v8, :cond_b

    .line 489
    :cond_3
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]: sync live..!!"

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const/4 v8, 0x1

    new-array v4, v8, [Lcom/htc/opensense/social/data/Person;

    .line 491
    .local v4, listPerson:[Lcom/htc/opensense/social/data/Person;
    const/4 v9, 0x0

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getProfile()Lcom/htc/opensense/social/data/Person;

    move-result-object v8

    aput-object v8, v4, v9

    .line 492
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v8}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    invoke-virtual {v8, v4}, Lcom/htc/opensense/social/SocialServiceManager;->getPersonOps([Lcom/htc/opensense/social/data/Person;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 494
    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v8}, Lcom/htc/opensense/social/PersonOp;->getFriends()Ljava/util/List;

    move-result-object v3

    .line 496
    :cond_4
    if-eqz v3, :cond_a

    .line 498
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 499
    iget-boolean v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsCacheExits:Z

    if-ne v12, v8, :cond_9

    .line 501
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[HTCAlbum][MediaHandlerPeople][requestFriendList]: sync visible states..!!"

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v9, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFRIENDLIST:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getListFromFileCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v9, v8, v10}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$900(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    check-cast v2, Ljava/util/List;

    .restart local v2       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    if-nez v2, :cond_5

    .line 503
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .restart local v2       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    :cond_5
    const/4 v0, 0x0

    .line 507
    .local v0, aPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    const/4 v6, 0x0

    .local v6, nIndex:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v6, :cond_a

    .line 509
    const/4 v0, 0x0

    .line 510
    const/4 v7, 0x0

    .local v7, nIndex2:I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v7, :cond_6

    .line 512
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v8}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v8

    iget-object v9, v8, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v12, v8, :cond_8

    .line 514
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .end local v0           #aPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/PersonOp;

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V

    .line 515
    .restart local v0       #aPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v8

    if-nez v8, :cond_6

    .line 516
    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->toggleVisibility()V

    .line 520
    :cond_6
    if-nez v0, :cond_7

    .line 521
    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .end local v0           #aPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/PersonOp;

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V

    .line 522
    .restart local v0       #aPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    :cond_7
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 510
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 527
    .end local v0           #aPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    .end local v6           #nIndex:I
    .end local v7           #nIndex2:I
    :cond_9
    const/4 v6, 0x0

    .restart local v6       #nIndex:I
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v6, :cond_a

    .line 529
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v9, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    new-instance v10, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/PersonOp;

    const/4 v11, 0x0

    invoke-direct {v10, v8, v11}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 534
    .end local v6           #nIndex:I
    :cond_a
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    const/4 v9, 0x1

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v8, v9}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$802(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Z)Z
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 549
    .end local v2           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    .end local v3           #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .end local v4           #listPerson:[Lcom/htc/opensense/social/data/Person;
    .end local v5           #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :catch_0
    move-exception v1

    .line 552
    .local v1, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    iput-boolean v12, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsExceptioned:Z

    .line 553
    invoke-virtual {v1}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->getCode()Lcom/htc/opensense/social/ErrorCode;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    .line 554
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList] SocialNetworkException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {v1}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    goto/16 :goto_0

    .line 538
    .end local v1           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .restart local v2       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    .restart local v3       #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .restart local v5       #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :cond_b
    :try_start_2
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]: use cache...!!"

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v9, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFRIENDLIST:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getListFromFileCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v9, v8, v10}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$900(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    check-cast v2, Ljava/util/List;

    .restart local v2       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    if-eqz v2, :cond_1

    .line 541
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 542
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iput-object v2, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;
    :try_end_2
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 467
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 562
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7
    .parameter "result"

    .prologue
    const/16 v6, 0x2761

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 569
    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsExceptioned:Z

    if-ne v3, v0, :cond_0

    .line 571
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]:  Error run! "

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v6, v5, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 573
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    const/16 v1, 0x2767

    invoke-virtual {v0, v1, v5, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 592
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v0, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$802(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Z)Z

    .line 593
    return-void

    .line 577
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]: Total people: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 580
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFRIENDLIST:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->putListToFileCache(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    invoke-static {v1, v0, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$1000(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 586
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v6, v5, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    const/16 v1, 0x4e88

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 467
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 565
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 467
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
