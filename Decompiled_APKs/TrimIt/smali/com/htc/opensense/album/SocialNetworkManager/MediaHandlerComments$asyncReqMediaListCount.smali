.class Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;
.super Landroid/os/AsyncTask;
.source "MediaHandlerComments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;
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

.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;)V
    .locals 1
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->mMediumOp:Ljava/util/List;

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->mCommentCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 6
    .parameter "urls"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 298
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[HTCAlbum][MediaHandlerComments][asyncReqMediaListCount]: getAttachments.."

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    new-array v1, v5, [Lcom/htc/opensense/social/data/Medium;

    .line 301
    .local v1, medium:[Lcom/htc/opensense/social/data/Medium;
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v2}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v2

    aput-object v2, v1, v4

    .line 303
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v2, v1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->mMediumOp:Ljava/util/List;

    .line 305
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->mMediumOp:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v3, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->getMediumComments(Lcom/htc/opensense/social/MediumOp;)Ljava/util/List;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->mCommentCount:I

    .line 312
    :cond_0
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 291
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 325
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "comment_update"

    iget v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->mCommentCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 326
    const-string v1, "photo_update"

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 327
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][MediaHandlerComments][asyncReqMediaListCount]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->mCommentCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;

    const/16 v2, 0x4e93

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 329
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 291
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 319
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 291
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaListCount;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
