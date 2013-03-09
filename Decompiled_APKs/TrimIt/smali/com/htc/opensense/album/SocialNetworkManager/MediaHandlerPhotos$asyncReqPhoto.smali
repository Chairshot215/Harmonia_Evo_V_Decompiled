.class Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;
.super Landroid/os/AsyncTask;
.source "MediaHandlerPhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqPhoto"
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

    .line 217
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 219
    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->mIsExceptioned:Z

    .line 220
    iput-boolean v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->mIsCacheExits:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 12
    .parameter "urls"

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 223
    new-array v1, v11, [Ljava/lang/String;

    .line 224
    .local v1, szUIDs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaUIDs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    .line 225
    const/4 v8, 0x0

    .line 226
    .local v8, listLive:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/MediumOp;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrapper:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$500(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/opensense/album/AlbumCommon/Constants;->getScreenDisplayDimension(Landroid/content/Context;)[I

    move-result-object v10

    .line 232
    .local v10, nScreenDisplay:[I
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    #getter for: Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mHandlerInfo:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$500(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;)Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x1

    aget v4, v10, v4

    new-instance v5, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v5}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    invoke-virtual/range {v0 .. v5}, Lcom/htc/opensense/social/SocialServiceManager;->getMediumOps([Ljava/lang/String;IIILcom/htc/opensense/social/RemoteError;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 238
    const/4 v6, 0x0

    .line 239
    .local v6, aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    const/4 v9, 0x0

    .local v9, nIndex:I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v9, :cond_0

    .line 241
    new-instance v6, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    .end local v6           #aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/social/MediumOp;

    invoke-direct {v6, v0}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/MediumOp;)V

    .line 244
    .restart local v6       #aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrapper:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 248
    .end local v6           #aPhoto:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;
    .end local v9           #nIndex:I
    .end local v10           #nScreenDisplay:[I
    :catch_0
    move-exception v7

    .line 251
    .local v7, e:Ljava/lang/Exception;
    iput-boolean v11, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->mIsExceptioned:Z

    .line 252
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhoto] Exception:  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v11}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 217
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x4e8a

    const/16 v3, 0x2766

    const/4 v2, 0x0

    .line 266
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->mIsExceptioned:Z

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v0, v0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrapper:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 268
    :cond_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[HTCAlbum][MediaHandlerPhotos][asyncReqPhoto]: no photo!"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, v3, v5, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 270
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    invoke-virtual {v0, v3, v5, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 279
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrapper:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 276
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;

    iget-object v1, v1, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->mMediaWrapper:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 217
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 262
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 217
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerPhotos$asyncReqPhoto;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
