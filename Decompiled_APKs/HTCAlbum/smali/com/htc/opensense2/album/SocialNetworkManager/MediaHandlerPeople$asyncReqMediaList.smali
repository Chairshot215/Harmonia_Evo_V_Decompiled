.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;
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

.field private mForceUpdateActiveUser:Z

.field private mIsCacheExits:Z

.field private mIsExceptioned:Z

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 535
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 537
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsExceptioned:Z

    .line 538
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsCacheExits:Z

    .line 539
    iput-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mForceUpdateActiveUser:Z

    .line 540
    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 17
    .parameter "urls"

    .prologue
    .line 545
    :try_start_0
    const-string v13, "MediaHandlerPeople"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v15}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "getFriends.."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v14, v14, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-le v13, v14, :cond_2

    .line 547
    :cond_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsExceptioned:Z
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 697
    :cond_1
    :goto_0
    new-instance v13, Ljava/lang/Integer;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    return-object v13

    .line 550
    :cond_2
    const/4 v5, 0x0

    .line 551
    .local v5, listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    const/4 v6, 0x0

    .line 552
    .local v6, listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    const/4 v9, 0x0

    .line 554
    .local v9, listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFRIENDLIST:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->isFileCacheExist(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v14, v13, v15}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$600(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsCacheExits:Z

    .line 556
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v14}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v14

    if-eq v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsCacheExits:Z

    if-nez v13, :cond_13

    .line 558
    :cond_3
    const-string v13, "MediaHandlerPeople"

    const-string v14, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]: sync live..!!"

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/4 v13, 0x1

    new-array v8, v13, [Lcom/htc/opensense/social/data/Person;

    .line 560
    .local v8, listPerson:[Lcom/htc/opensense/social/data/Person;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getProfile()Lcom/htc/opensense/social/data/Person;

    move-result-object v13

    aput-object v13, v8, v14

    .line 562
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v13

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    if-eqz v13, :cond_9

    .line 564
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v13

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/FriendListPluginBase;

    const/4 v14, 0x0

    aget-object v14, v8, v14

    iget-object v14, v14, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/htc/opensense/album/plugin/FriendListPluginBase;->getFriends(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 565
    .local v7, listPD:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/PersonData;>;"
    if-eqz v7, :cond_12

    .line 567
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 568
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsCacheExits:Z

    if-ne v13, v14, :cond_8

    .line 570
    const-string v13, "MediaHandlerPeople"

    const-string v14, "[HTCAlbum][MediaHandlerPeople][requestFriendList]: sync visible states..!!"

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFRIENDLIST:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getListFromFileCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v14, v13, v15}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    check-cast v5, Ljava/util/List;

    .restart local v5       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    if-nez v5, :cond_4

    .line 572
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .restart local v5       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    :cond_4
    const/4 v1, 0x0

    .line 576
    .local v1, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v10, 0x0

    .local v10, nIndex:I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v10, :cond_12

    .line 578
    const/4 v1, 0x0

    .line 579
    const/4 v11, 0x0

    .local v11, nIndex2:I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v11, :cond_5

    .line 581
    const/4 v14, 0x1

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/album/plugin/PersonData;

    iget-object v15, v13, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-ne v14, v13, :cond_7

    .line 583
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/social/data/Person;

    const/4 v14, 0x0

    invoke-direct {v1, v13, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    .line 584
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v13

    if-nez v13, :cond_5

    .line 585
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->toggleVisibility()V

    .line 589
    :cond_5
    if-nez v1, :cond_6

    .line 590
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/social/data/Person;

    const/4 v14, 0x0

    invoke-direct {v1, v13, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    .line 591
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 579
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 596
    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .end local v10           #nIndex:I
    .end local v11           #nIndex2:I
    :cond_8
    const/4 v10, 0x0

    .restart local v10       #nIndex:I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v10, :cond_12

    .line 598
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v14, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    new-instance v15, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/social/data/Person;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v15, v13, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Person;Landroid/os/Handler;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 605
    .end local v7           #listPD:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/plugin/PersonData;>;"
    .end local v10           #nIndex:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v13

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    invoke-virtual {v13, v8}, Lcom/htc/opensense/social/SocialServiceManager;->getPersonOps([Lcom/htc/opensense/social/data/Person;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 607
    const/4 v13, 0x0

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v13}, Lcom/htc/opensense/social/PersonOp;->getFriends()Ljava/util/List;
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v6

    .line 612
    :cond_a
    if-eqz v6, :cond_b

    :try_start_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_c

    .line 614
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$500(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v13

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "-100"

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Lcom/htc/opensense/social/SocialServiceManager;->getPersonOps([Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 615
    .local v12, peopleOps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    const-string v13, "MediaHandlerPeople"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][MediaHandlerPeople][requestFriendList]: peopleOps size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_2 .. :try_end_2} :catch_1

    .line 616
    move-object v6, v12

    .line 622
    .end local v12           #peopleOps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :cond_c
    :goto_4
    if-eqz v6, :cond_12

    .line 624
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 625
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsCacheExits:Z

    if-ne v13, v14, :cond_11

    .line 627
    const-string v13, "MediaHandlerPeople"

    const-string v14, "[HTCAlbum][MediaHandlerPeople][requestFriendList]: sync visible states..!!"

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFRIENDLIST:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getListFromFileCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v14, v13, v15}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    check-cast v5, Ljava/util/List;

    .restart local v5       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    if-nez v5, :cond_d

    .line 629
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .restart local v5       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    :cond_d
    const/4 v1, 0x0

    .line 633
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    const/4 v10, 0x0

    .restart local v10       #nIndex:I
    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_3
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v13

    if-le v13, v10, :cond_12

    .line 637
    const/4 v1, 0x0

    .line 638
    const/4 v11, 0x0

    .restart local v11       #nIndex2:I
    :goto_6
    :try_start_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v11, :cond_e

    .line 640
    const/4 v14, 0x1

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v13}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v13

    iget-object v15, v13, Lcom/htc/opensense/social/data/Person;->uid:Ljava/lang/String;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-ne v14, v13, :cond_10

    .line 642
    new-instance v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/social/PersonOp;

    const/4 v14, 0x0

    invoke-direct {v2, v13, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_4 .. :try_end_4} :catch_1

    .line 643
    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .local v2, aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :try_start_5
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->isVisible()Z

    move-result v13

    if-nez v13, :cond_14

    .line 644
    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->toggleVisibility()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v1, v2

    .line 654
    .end local v2           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_e
    :goto_7
    if-nez v1, :cond_f

    .line 655
    :try_start_6
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/social/PersonOp;

    const/4 v14, 0x0

    invoke-direct {v1, v13, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V

    .line 656
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 618
    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .end local v10           #nIndex:I
    .end local v11           #nIndex2:I
    :catch_0
    move-exception v3

    .line 619
    .local v3, e:Ljava/lang/Exception;
    const-string v13, "MediaHandlerPeople"

    const-string v14, "[HTCAlbum][MediaHandlerPeople][requestFriendList]: Get Friend List from CHS NG !"

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_4

    .line 684
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    .end local v6           #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .end local v8           #listPerson:[Lcom/htc/opensense/social/data/Person;
    .end local v9           #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :catch_1
    move-exception v3

    .line 687
    .local v3, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsExceptioned:Z

    .line 688
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->getCode()Lcom/htc/opensense/social/ErrorCode;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    .line 689
    const-string v13, "MediaHandlerPeople"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList] SocialNetworkException: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 638
    .end local v3           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v5       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    .restart local v6       #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .restart local v8       #listPerson:[Lcom/htc/opensense/social/data/Person;
    .restart local v9       #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .restart local v10       #nIndex:I
    .restart local v11       #nIndex2:I
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 649
    :catch_2
    move-exception v3

    .line 652
    .local v3, e:Ljava/lang/Exception;
    :goto_8
    const/4 v1, 0x0

    goto :goto_7

    .line 661
    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v10           #nIndex:I
    .end local v11           #nIndex2:I
    :cond_11
    const/4 v10, 0x0

    .restart local v10       #nIndex:I
    :goto_9
    :try_start_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v10, :cond_12

    .line 663
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v14, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    new-instance v15, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense/social/PersonOp;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v15, v13, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 669
    .end local v10           #nIndex:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    const/4 v14, 0x1

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v13, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$702(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Z)Z
    :try_end_7
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 691
    .end local v5           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    .end local v6           #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .end local v8           #listPerson:[Lcom/htc/opensense/social/data/Person;
    .end local v9           #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :catch_3
    move-exception v4

    .line 693
    .local v4, e2:Ljava/lang/Exception;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mForceUpdateActiveUser:Z

    .line 694
    const-string v13, "MediaHandlerPeople"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList] Exception: : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 673
    .end local v4           #e2:Ljava/lang/Exception;
    .restart local v5       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    .restart local v6       #listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .restart local v9       #listSource:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :cond_13
    :try_start_8
    const-string v13, "MediaHandlerPeople"

    const-string v14, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]: use cache...!!"

    invoke-static {v13, v14}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v13}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFRIENDLIST:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->getListFromFileCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v14, v13, v15}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$800(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    check-cast v5, Ljava/util/List;

    .restart local v5       #listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;>;"
    if-eqz v5, :cond_1

    .line 676
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v13, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 677
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iput-object v5, v13, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;
    :try_end_8
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 649
    .restart local v2       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v8       #listPerson:[Lcom/htc/opensense/social/data/Person;
    .restart local v10       #nIndex:I
    .restart local v11       #nIndex2:I
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    goto/16 :goto_8

    .end local v1           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v2       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_14
    move-object v1, v2

    .end local v2           #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    .restart local v1       #aPerson:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    goto/16 :goto_7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 535
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 701
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7
    .parameter "result"

    .prologue
    const/16 v6, 0x2761

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 708
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mForceUpdateActiveUser:Z

    if-ne v3, v0, :cond_0

    .line 710
    const-string v0, "MediaHandlerPeople"

    const-string v1, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]:  Request update Active User! "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    const/16 v1, 0x4e20

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 736
    :goto_0
    iput-boolean v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mForceUpdateActiveUser:Z

    .line 737
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v0, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$702(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Z)Z

    .line 738
    return-void

    .line 713
    :cond_0
    iget-boolean v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->mIsExceptioned:Z

    if-ne v3, v0, :cond_1

    .line 715
    const-string v0, "MediaHandlerPeople"

    const-string v1, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]:  Error run! "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v6, v5, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 717
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    const/16 v1, 0x2767

    invoke-virtual {v0, v1, v5, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 721
    :cond_1
    const-string v0, "MediaHandlerPeople"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MediaHandlerPeople][asyncReqMediaList]: Total people: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v0

    if-ne v3, v0, :cond_2

    .line 724
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    sget-object v3, Lcom/htc/opensense2/album/SocialNetworkManager/FileCacheManager;->EXTENSION_CACHEFRIENDLIST:Ljava/lang/String;

    #calls: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->putListToFileCache(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    invoke-static {v1, v0, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$900(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 730
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v6, v5, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 733
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    const/16 v1, 0x4e88

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->access$700(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 535
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 704
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 535
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerPeople$asyncReqMediaList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
