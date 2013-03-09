.class Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;
.super Landroid/os/AsyncTask;
.source "MediaHandlerPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqActiveUser"
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

    .line 247
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 249
    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mIsExceptioned:Z

    .line 250
    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mIsCacheExits:Z

    .line 251
    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 13
    .parameter "urls"

    .prologue
    const/4 v12, 0x1

    .line 254
    const/4 v4, 0x0

    .line 255
    .local v4, listCache:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;>;"
    const/4 v5, 0x0

    .line 256
    .local v5, listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    const/4 v1, 0x0

    .line 259
    .local v1, activeUser:Lcom/htc/opensense/social/PersonOp;
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[HTCAlbum][MediaHandlerPeople][asyncReqActiveUser]: getActiveUser.."

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v8}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    sget-object v9, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->CACHE_ACTIVEUSER:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->isFileCacheExist(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v7, v8, v9}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$700(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mIsCacheExits:Z

    .line 262
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v7}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v7

    if-eq v12, v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mIsCacheExits:Z

    if-nez v7, :cond_3

    .line 264
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[HTCAlbum][MediaHandlerPeople][asyncReqActiveUser]: sync live..!!"

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v7}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v8}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v7, v8}, Lcom/htc/opensense/social/SocialServiceManager;->getActiveUser(Landroid/accounts/Account;)Lcom/htc/opensense/social/PersonOp;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 269
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 270
    .local v6, profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 271
    invoke-virtual {v1}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v2

    .line 272
    .local v2, aperson:Lcom/htc/opensense/social/data/Person;
    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {v1, v6}, Lcom/htc/opensense/social/PersonOp;->updateProfiles(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 275
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v7, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 276
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    new-instance v9, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v7}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    iget-object v10, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/htc/opensense/social/data/Person;->getProfile()Lcom/htc/opensense/social/data/Profile;

    move-result-object v7

    iget-object v7, v7, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense/social/data/Profile;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v7, v11}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>(Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;Landroid/os/Handler;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v2           #aperson:Lcom/htc/opensense/social/data/Person;
    .end local v6           #profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    :cond_1
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    const/4 v8, 0x1

    #setter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v7, v8}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$802(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Z)Z
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 304
    :cond_2
    :goto_0
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v12}, Ljava/lang/Integer;-><init>(I)V

    return-object v7

    .line 282
    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v8}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    sget-object v9, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->CACHE_ACTIVEUSER:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->getListFromFileCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v7, v8, v9}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$900(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    if-eqz v4, :cond_2

    .line 284
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[HTCAlbum][MediaHandlerPeople][asyncReqActiveUser]: use cache...!!"

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iput-object v4, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 289
    :catch_0
    move-exception v3

    .line 292
    .local v3, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    iput-boolean v12, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mIsExceptioned:Z

    .line 293
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->getCode()Lcom/htc/opensense/social/ErrorCode;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    .line 294
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][MediaHandlerPeople][asyncReqActiveUser] SocialNetworkException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    goto :goto_0

    .line 297
    .end local v3           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    :catch_1
    move-exception v3

    .line 299
    .local v3, e:Ljava/lang/Exception;
    iput-boolean v12, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mIsExceptioned:Z

    .line 300
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][MediaHandlerPeople][asyncReqActiveUser] Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 247
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x4e85

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 314
    iget-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->mIsExceptioned:Z

    if-ne v3, v0, :cond_0

    .line 316
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][MediaHandlerPeople][asyncReqActiveUser]: no active user!"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    const/16 v1, 0x2760

    invoke-virtual {v0, v1, v6, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 332
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MediaHandlerPeople][asyncReqActiveUser]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaSource:Ljava/util/List;

    sget-object v3, Lcom/htc/opensense/album/SocialNetworkManager/FileCacheManager;->CACHE_ACTIVEUSER:Ljava/lang/String;

    #calls: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->putListToFileCache(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$1000(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mIsForceLiveUpdate:Z
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$800(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 330
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v5, v6, v4}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 247
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 311
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 247
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqActiveUser;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
