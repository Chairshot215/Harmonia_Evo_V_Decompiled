.class Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerComments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;
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

.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;


# direct methods
.method private constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)V
    .locals 1
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->mMediumOp:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 13
    .parameter "urls"

    .prologue
    const/4 v12, 0x1

    .line 317
    :try_start_0
    const-string v9, "MediaHandlerComments"

    const-string v10, "[HTCAlbum][MediaHandlerComments][asyncReqMediaList]: getAttachments.."

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v2, 0x0

    .line 319
    .local v2, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    const/4 v9, 0x1

    new-array v6, v9, [Lcom/htc/opensense/social/data/Medium;

    .line 320
    .local v6, medium:[Lcom/htc/opensense/social/data/Medium;
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v10, v10, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaSource:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v10

    aput-object v10, v6, v9

    .line 322
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    invoke-virtual {v9, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    iput-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->mMediumOp:Ljava/util/List;

    .line 324
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->mMediumOp:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/social/MediumOp;

    const-string v10, "getComments"

    const-class v11, Lcom/htc/opensense/social/data/Comment;

    invoke-virtual {v9, v10, v11}, Lcom/htc/opensense/social/MediumOp;->getAttachments(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 326
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 327
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    .line 328
    .local v8, profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/data/Attachment;

    .line 330
    .local v1, att:Lcom/htc/opensense/social/data/Attachment;
    move-object v0, v1

    check-cast v0, Lcom/htc/opensense/social/data/Comment;

    move-object v3, v0

    .line 331
    .local v3, comment:Lcom/htc/opensense/social/data/Comment;
    iget-object v7, v3, Lcom/htc/opensense/social/data/Comment;->profile:Lcom/htc/opensense/social/data/Profile;

    .line 332
    .local v7, p:Lcom/htc/opensense/social/data/Profile;
    iget-object v9, v7, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    .end local v1           #att:Lcom/htc/opensense/social/data/Attachment;
    .end local v2           #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    .end local v3           #comment:Lcom/htc/opensense/social/data/Comment;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #medium:[Lcom/htc/opensense/social/data/Medium;
    .end local v7           #p:Lcom/htc/opensense/social/data/Profile;
    .end local v8           #profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    :catch_0
    move-exception v4

    .line 349
    .local v4, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    const-string v9, "MediaHandlerComments"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[HTCAlbum][MediaHandlerComments][asyncReqMediaList] SocialNetworkException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .end local v4           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    :cond_0
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v12}, Ljava/lang/Integer;-><init>(I)V

    return-object v9

    .line 334
    .restart local v2       #attachments:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/data/Attachment;>;"
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #medium:[Lcom/htc/opensense/social/data/Medium;
    .restart local v8       #profileMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/opensense/social/data/Profile;>;"
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->mMediumOp:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/social/MediumOp;

    invoke-virtual {v9, v8}, Lcom/htc/opensense/social/MediumOp;->updateProfiles(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v8

    .line 335
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/social/data/Attachment;

    .line 337
    .restart local v1       #att:Lcom/htc/opensense/social/data/Attachment;
    move-object v0, v1

    check-cast v0, Lcom/htc/opensense/social/data/Comment;

    move-object v3, v0

    .line 338
    .restart local v3       #comment:Lcom/htc/opensense/social/data/Comment;
    iget-object v9, v3, Lcom/htc/opensense/social/data/Comment;->profile:Lcom/htc/opensense/social/data/Profile;

    iget-object v9, v9, Lcom/htc/opensense/social/data/Profile;->profile_id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense/social/data/Profile;

    iput-object v9, v3, Lcom/htc/opensense/social/data/Comment;->profile:Lcom/htc/opensense/social/data/Profile;

    .line 342
    iget-object v9, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v9, v9, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaWrappers:Ljava/util/List;

    new-instance v10, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    invoke-direct {v10, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;-><init>(Lcom/htc/opensense/social/data/Comment;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 310
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 363
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaWrappers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 365
    :cond_0
    const-string v0, "MediaHandlerComments"

    const-string v1, "[HTCAlbum][MediaHandlerComments][asyncReqMediaList]: no comments!"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    const/16 v1, 0x2761

    invoke-virtual {v0, v1, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 373
    :goto_0
    return-void

    .line 370
    :cond_1
    const-string v0, "MediaHandlerComments"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][MediaHandlerComments][asyncReqMediaList]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->mMediaWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;

    const/16 v1, 0x4e92

    invoke-virtual {v0, v1, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 310
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 359
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 310
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MediaHandlerComments$asyncReqMediaList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
