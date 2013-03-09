.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerFaceTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;
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

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;)V
    .locals 1
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->mMediumOp:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 12
    .parameter "urls"

    .prologue
    const/4 v11, 0x1

    .line 204
    :try_start_0
    const-string v8, "MediaHandlerFaceTag"

    const-string v9, "[HTCAlbum][MediaHandlerFaceTag][asyncReqMediaList]: getAttachments.."

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v2, 0x0

    .line 206
    .local v2, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaWrappers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 208
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    if-eqz v8, :cond_0

    .line 210
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->access$300(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    instance-of v8, v8, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    if-eqz v8, :cond_3

    .line 212
    const/4 v8, 0x1

    new-array v7, v8, [Ljava/lang/String;

    .line 213
    .local v7, szUIDs:[Ljava/lang/String;
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getID()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 214
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mHandlerInfo:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;
    invoke-static {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->access$300(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;)Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$HandlerInfo;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v8, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;

    invoke-virtual {v8, v7}, Lcom/htc/opensense/album/plugin/PhotoFullListPluginBase;->getTags([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 225
    .end local v7           #szUIDs:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 227
    const-string v8, "MediaHandlerFaceTag"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MediaHandlerFaceTag][asyncReqMediaList]: Get Tag Size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/data/Attachment;

    .line 231
    .local v1, att:Lcom/htc/opensense/social/data/Attachment;
    move-object v0, v1

    check-cast v0, Lcom/htc/opensense/social/data/FaceTag;

    move-object v4, v0

    .line 232
    .local v4, faceTag:Lcom/htc/opensense/social/data/FaceTag;
    if-eqz v4, :cond_1

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaWrappers:Ljava/util/ArrayList;

    new-instance v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-direct {v9, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;-><init>(Lcom/htc/opensense/social/data/FaceTag;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 253
    .end local v1           #att:Lcom/htc/opensense/social/data/Attachment;
    .end local v2           #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    .end local v4           #faceTag:Lcom/htc/opensense/social/data/FaceTag;
    .end local v5           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 256
    .local v3, e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v8, v8, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaWrappers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 257
    const-string v8, "MediaHandlerFaceTag"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][MediaHandlerFaceTag][asyncReqMediaList] Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v11}, Ljava/lang/Integer;-><init>(I)V

    return-object v8

    .line 218
    .restart local v2       #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    :cond_3
    const/4 v8, 0x1

    :try_start_1
    new-array v6, v8, [Lcom/htc/opensense/social/data/Medium;

    .line 219
    .local v6, medium:[Lcom/htc/opensense/social/data/Medium;
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v9

    aput-object v9, v6, v8

    .line 220
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v8, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    iput-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->mMediumOp:Ljava/util/List;

    .line 221
    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->mMediumOp:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->mMediumOp:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense/social/MediumOp;

    const-string v9, "getTags"

    const-class v10, Lcom/htc/opensense/social/data/FaceTag;

    invoke-virtual {v8, v9, v10}, Lcom/htc/opensense/social/MediumOp;->getAttachments(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 197
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 273
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 274
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "photo_update"

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 275
    const-string v1, "tag_update"

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 276
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;

    const/16 v2, 0x4e91

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 277
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 197
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 267
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 197
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqMediaList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
