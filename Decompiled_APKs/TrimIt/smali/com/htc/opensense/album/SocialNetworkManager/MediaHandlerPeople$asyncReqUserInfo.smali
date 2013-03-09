.class Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;
.super Landroid/os/AsyncTask;
.source "MediaHandlerPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqUserInfo"
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

    .line 334
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 336
    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mIsExceptioned:Z

    .line 337
    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mIsCacheExits:Z

    .line 338
    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 12
    .parameter "urls"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 341
    new-array v7, v11, [Ljava/lang/String;

    .line 342
    .local v7, szUIDs:[Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v7, v9

    .line 343
    const/4 v4, 0x0

    .line 344
    .local v4, listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 347
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[HTCAlbum][MediaHandlerPeople][asyncReqUserInfo]:... "

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v8, v7}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .line 350
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 351
    .local v6, profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    const/4 v1, 0x0

    .line 352
    .local v1, aPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    const/4 v5, 0x0

    .local v5, nIndex:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_0

    .line 354
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 356
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v8}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v2

    .line 357
    .local v2, aperson:Lcom/htc/opensense/social/data/Person;
    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/PersonOp;

    invoke-virtual {v8, v6}, Lcom/htc/opensense/social/PersonOp;->updateProfiles(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 360
    new-instance v1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    .end local v1           #aPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/data/Profile;

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/data/Profile;Landroid/os/Handler;)V

    .line 361
    .restart local v1       #aPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 352
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 365
    .end local v1           #aPerson:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;
    .end local v2           #aperson:Lcom/htc/opensense/social/data/Person;
    .end local v5           #nIndex:I
    .end local v6           #profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    :catch_0
    move-exception v3

    .line 368
    .local v3, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    iput-boolean v11, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mIsExceptioned:Z

    .line 369
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->getCode()Lcom/htc/opensense/social/ErrorCode;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    .line 370
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MediaHandlerPeople][asyncReqUserInfo] SocialNetworkException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 379
    .end local v3           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    :cond_0
    :goto_1
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v11}, Ljava/lang/Integer;-><init>(I)V

    return-object v8

    .line 373
    :catch_1
    move-exception v3

    .line 375
    .local v3, e:Ljava/lang/Exception;
    iput-boolean v11, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mIsExceptioned:Z

    .line 376
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MediaHandlerPeople][asyncReqUserInfo] Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 334
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "result"

    .prologue
    const/16 v5, 0x4e85

    const/16 v2, 0x2760

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 390
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->mIsExceptioned:Z

    if-ne v0, v1, :cond_0

    .line 392
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][MediaHandlerPeople][asyncReqUserInfo]: no user!"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v2, v4, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 394
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v2, v4, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 402
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MediaHandlerPeople][asyncReqUserInfo]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v5, v4, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 400
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v5, v4, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 334
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 386
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 334
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUserInfo;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
