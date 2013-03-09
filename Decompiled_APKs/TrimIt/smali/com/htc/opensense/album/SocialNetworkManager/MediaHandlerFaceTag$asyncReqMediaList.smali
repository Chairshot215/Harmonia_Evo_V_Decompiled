.class Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerFaceTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;
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

.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;)V
    .locals 1
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->mMediumOp:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 11
    .parameter "urls"

    .prologue
    const/4 v10, 0x1

    .line 187
    :try_start_0
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[HTCAlbum][MediaHandlerFaceTag][asyncReqMediaList]: getAttachments.."

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    const/4 v7, 0x1

    new-array v6, v7, [Lcom/htc/opensense/social/data/Medium;

    .line 190
    .local v6, medium:[Lcom/htc/opensense/social/data/Medium;
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v8, v8, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v8

    aput-object v8, v6, v7

    .line 192
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v7, v6}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iput-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->mMediumOp:Ljava/util/List;

    .line 194
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->mMediumOp:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/opensense/social/MediumOp;

    const-string v8, "getTags"

    const-class v9, Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {v7, v8, v9}, Lcom/htc/opensense/social/MediumOp;->getAttachments(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 196
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][MediaHandlerFaceTag][asyncReqMediaList]: Get Tag Size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v7, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaWrappers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 200
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/data/Attachment;

    .line 202
    .local v1, att:Lcom/htc/opensense/social/data/Attachment;
    move-object v0, v1

    check-cast v0, Lcom/htc/opensense/social/data/FaceTag;

    move-object v4, v0

    .line 203
    .local v4, faceTag:Lcom/htc/opensense/social/data/FaceTag;
    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v7, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaWrappers:Ljava/util/ArrayList;

    new-instance v8, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;

    invoke-direct {v8, v4}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;-><init>(Lcom/htc/opensense/social/data/FaceTag;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    .end local v1           #att:Lcom/htc/opensense/social/data/Attachment;
    .end local v2           #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    .end local v4           #faceTag:Lcom/htc/opensense/social/data/FaceTag;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #medium:[Lcom/htc/opensense/social/data/Medium;
    :catch_0
    move-exception v3

    .line 227
    .local v3, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[HTCAlbum][MediaHandlerFaceTag][asyncReqMediaList] SocialNetworkException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v3}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 230
    .end local v3           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    :cond_1
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    return-object v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 180
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 241
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "photo_update"

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 245
    const-string v1, "tag_update"

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v2, v2, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 246
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    const/16 v2, 0x4e91

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 247
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 180
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 237
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 180
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
