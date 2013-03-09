.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;
.super Landroid/os/AsyncTask;
.source "MediaHandlerComments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqMediaListCount"
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
.field mCommentCount:I

.field mMediumOp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/social/MediumOp;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)V
    .locals 1
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->mMediumOp:Ljava/util/List;

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->mCommentCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 7
    .parameter "urls"

    .prologue
    const/4 v6, 0x1

    .line 263
    :try_start_0
    const-string v3, "MediaHandlerComments"

    const-string v4, "[HTCAlbum][MediaHandlerComments][asyncReqMediaListCount]: getAttachments.."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    const/4 v3, 0x1

    new-array v2, v3, [Lcom/htc/opensense/social/data/Medium;

    .line 266
    .local v2, medium:[Lcom/htc/opensense/social/data/Medium;
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v4, v4, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v4

    aput-object v4, v2, v3

    .line 268
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;
    invoke-static {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-nez v3, :cond_1

    .line 270
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;
    invoke-static {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mServiceManager:Lcom/htc/opensense/social/SocialServiceManager;

    if-eqz v3, :cond_0

    .line 272
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v3, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->mMediumOp:Ljava/util/List;

    .line 274
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->mMediumOp:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/MediumOp;

    const-string v4, "getComments"

    const-class v5, Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v3, v4, v5}, Lcom/htc/opensense/social/MediumOp;->getAttachments(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->mCommentCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0           #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    .end local v2           #medium:[Lcom/htc/opensense/social/data/Medium;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v6}, Ljava/lang/Integer;-><init>(I)V

    return-object v3

    .line 282
    .restart local v0       #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    .restart local v2       #medium:[Lcom/htc/opensense/social/data/Medium;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;
    invoke-static {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v3, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    iget-object v4, v4, Lcom/htc/opensense/social/data/Medium;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->onGetCommentCount(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->mCommentCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 285
    .end local v0           #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    .end local v2           #medium:[Lcom/htc/opensense/social/data/Medium;
    :catch_0
    move-exception v1

    .line 288
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "MediaHandlerComments"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][MediaHandlerComments][asyncReqMediaListCount] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 255
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "comment_update"

    iget v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->mCommentCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    const-string v1, "photo_update"

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 306
    const-string v1, "MediaHandlerComments"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MediaHandlerComments][asyncReqMediaListCount]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->mCommentCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    const/16 v2, 0x4e93

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 308
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 255
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 298
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 255
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
