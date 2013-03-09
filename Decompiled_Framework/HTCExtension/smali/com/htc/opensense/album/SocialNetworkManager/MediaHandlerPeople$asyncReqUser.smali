.class Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;
.super Landroid/os/AsyncTask;
.source "MediaHandlerPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqUser"
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

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->mIsExceptioned:Z

    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->mIsCacheExits:Z

    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v5, v5, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v5, v5, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[HTCAlbum][MediaHandlerPeople][asyncReqUser]: getPersonOps.."

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;
    invoke-static {v5}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$600(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    invoke-virtual {v5, v4}, Lcom/htc/opensense/social/SocialServiceManager;->getPersonOps([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_0

    new-instance v0, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/social/PersonOp;

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPerson;-><init>(Lcom/htc/opensense/social/PersonOp;Landroid/os/Handler;)V

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v5, v5, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    iput-boolean v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->mIsExceptioned:Z

    invoke-virtual {v1}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->getCode()Lcom/htc/opensense/social/ErrorCode;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][MediaHandlerPeople][asyncReqUser] SocialNetworkException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    :cond_0
    :goto_1
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v8}, Ljava/lang/Integer;-><init>(I)V

    return-object v5

    :catch_1
    move-exception v1

    iput-boolean v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->mIsExceptioned:Z

    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][MediaHandlerPeople][asyncReqUser] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->mErrorCode:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6

    const/16 v5, 0x4e85

    const/16 v2, 0x2760

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->mIsExceptioned:Z

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][MediaHandlerPeople][asyncReqUser]: no user!"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v2, v4, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v2, v4, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onUIUpdateNotify(ILjava/lang/Object;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MediaHandlerPeople][asyncReqUser]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v5, v4, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onDataUpdateNotify(ILjava/lang/Object;I)V

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;

    invoke-virtual {v0, v5, v4, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPeople$asyncReqUser;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
