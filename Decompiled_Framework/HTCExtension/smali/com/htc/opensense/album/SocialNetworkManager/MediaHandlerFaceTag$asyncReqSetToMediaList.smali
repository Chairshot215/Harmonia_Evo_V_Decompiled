.class Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;
.super Landroid/os/AsyncTask;
.source "MediaHandlerFaceTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqSetToMediaList"
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

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->mMediumOp:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;-><init>(Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    new-array v2, v8, [Lcom/htc/opensense/social/data/Medium;

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v5, v5, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaSource:Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v5}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v5

    aput-object v5, v2, v6

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v5, v5, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaContent:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_3

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v5, v5, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaContent:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "com.htc.opensense.upload.USER_ID"

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.htc.opensense.upload.TAG_X_CENTER_IN_WIDTH_PERCENT"

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v5, "com.htc.opensense.upload.TAG_Y_CENTER_IN_HEIGHT_PERCENT"

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v5, "com.htc.opensense.upload.TAG_W_IN_WIDTH_PERCENT"

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getWidth()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v5, "com.htc.opensense.upload.TAG_H_IN_HEIGHT_PERCENT"

    invoke-virtual {v1}, Lcom/htc/opensense/album/SocialNetworkManager/WrapperFaceTag;->getHeight()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][MediaHandlerFaceTag][asyncReqSetToMediaList]: addAttachment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    iget-object v7, v7, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->mMediaContent:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->mMediumOp:Ljava/util/List;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    invoke-virtual {v5, v2}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->getMediaOpFast([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iput-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->mMediumOp:Ljava/util/List;

    :cond_2
    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->mMediumOp:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->mMediumOp:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/opensense/social/MediumOp;

    const-string v6, "addPersonToPhoto"

    const-class v7, Lcom/htc/opensense/social/data/Tag;

    invoke-virtual {v5, v6, v7, v4}, Lcom/htc/opensense/social/MediumOp;->addAttachment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][MediaHandlerFaceTag][asyncReqSetToMediaList] SocialNetworkException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v8}, Ljava/lang/Integer;-><init>(I)V

    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->this$0:Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;

    const/16 v1, 0x4e31

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag;->onDataUpdateNotify(ILjava/lang/Object;I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/album/SocialNetworkManager/MediaHandlerFaceTag$asyncReqSetToMediaList;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
