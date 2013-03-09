.class Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;
.super Landroid/os/AsyncTask;
.source "OnlineEditUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "asyncReqEditUpdate"
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
.field private final TAG_DO_ADD:I

.field private final TAG_DO_MODIFY:I

.field private final TAG_DO_NOHTING:I

.field private mBundleArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancel:Z

.field private mIsExceptioned:Z

.field private mIsFacebook:Z

.field private mIsNoRespondExceptioned:Z

.field private mIsServerExceptioned:Z

.field private mTimestart:J

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;ZLjava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter "isFacebook"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, bundleArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 139
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 123
    iput v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->TAG_DO_NOHTING:I

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->TAG_DO_ADD:I

    .line 125
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->TAG_DO_MODIFY:I

    .line 127
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsExceptioned:Z

    .line 128
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsServerExceptioned:Z

    .line 129
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsNoRespondExceptioned:Z

    .line 131
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsCancel:Z

    .line 133
    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsFacebook:Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mBundleArrayList:Ljava/util/ArrayList;

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mTimestart:J

    .line 140
    iput-boolean p2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsFacebook:Z

    .line 141
    monitor-enter p3

    .line 143
    :try_start_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mBundleArrayList:Ljava/util/ArrayList;

    .line 144
    monitor-exit p3

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doAddTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V
    .locals 5
    .parameter "mOp"
    .parameter "aPhoto"
    .parameter "faceTag"

    .prologue
    .line 320
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload][doAddTag]: Add tag - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v1, params:Landroid/os/Bundle;
    const-string v2, "com.htc.opensense.upload.USER_ID"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v2, "com.htc.opensense.upload.TAG_X_CENTER_IN_WIDTH_PERCENT"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 325
    const-string v2, "com.htc.opensense.upload.TAG_Y_CENTER_IN_HEIGHT_PERCENT"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 326
    const-string v2, "com.htc.opensense.upload.TAG_W_IN_WIDTH_PERCENT"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getWidth()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 327
    const-string v2, "com.htc.opensense.upload.TAG_H_IN_HEIGHT_PERCENT"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getHeight()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 330
    :try_start_0
    const-string v2, "addPersonToPhoto"

    const-class v3, Lcom/htc/opensense/social/data/Tag;

    invoke-virtual {p1, v2, v3, v1}, Lcom/htc/opensense/social/MediumOp;->addAttachment(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload]: add tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NG !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 335
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->showError(Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;Z)V

    goto :goto_0
.end method

.method private doRemoveTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V
    .locals 5
    .parameter "mOp"
    .parameter "aPhoto"
    .parameter "wfaceTag"

    .prologue
    .line 341
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload][doRemoveTag]: remove tag - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v1, Lcom/htc/opensense/social/data/FaceTag;

    invoke-direct {v1}, Lcom/htc/opensense/social/data/FaceTag;-><init>()V

    .line 344
    .local v1, faceTag:Lcom/htc/opensense/social/data/FaceTag;
    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense/social/data/FaceTag;->id:Ljava/lang/String;

    .line 350
    :try_start_0
    const-string v2, "removePersonFromPhoto"

    const-class v3, Lcom/htc/opensense/social/data/Tag;

    invoke-virtual {p1, v2, v3, v1}, Lcom/htc/opensense/social/MediumOp;->deleteAttachment(Ljava/lang/String;Ljava/lang/Class;Lcom/htc/opensense/social/data/Attachment;)V
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload]: remove tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NG !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 354
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->showError(Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;Z)V

    goto :goto_0
.end method

.method private updateDesAndTitle(Lcom/htc/opensense/social/MediumOp;Landroid/os/Bundle;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V
    .locals 8
    .parameter "mOp"
    .parameter "bundle"
    .parameter "aPhoto"

    .prologue
    .line 216
    const/4 v4, 0x0

    .line 218
    .local v4, updateDescription:Z
    const-string v5, "description"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, strDes:Ljava/lang/String;
    const-string v5, "title"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, strTitle:Ljava/lang/String;
    iget-boolean v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsFacebook:Z

    if-eqz v5, :cond_2

    .line 222
    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    invoke-virtual {p3, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setName(Ljava/lang/String;)V

    .line 225
    const/4 v4, 0x1

    .line 238
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    .local v0, bundleUpdate:Landroid/os/Bundle;
    const-string v5, "title"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v5, "description"

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/htc/opensense/social/MediumOp;->edit(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_1
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload]: update Des/Tital, Name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Des: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v0           #bundleUpdate:Landroid/os/Bundle;
    :cond_1
    return-void

    .line 230
    :cond_2
    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 232
    :cond_3
    invoke-virtual {p3, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setName(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p3, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setDescription(Ljava/lang/String;)V

    .line 234
    const/4 v4, 0x1

    goto :goto_0

    .line 246
    .restart local v0       #bundleUpdate:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 247
    .local v1, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload]: Upload Edit Des/Title NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 249
    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->showError(Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;Z)V

    goto :goto_1
.end method

.method private updateTag(Lcom/htc/opensense/social/MediumOp;Landroid/os/Bundle;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V
    .locals 11
    .parameter "mOp"
    .parameter "bundle"
    .parameter "aPhoto"

    .prologue
    const/high16 v10, 0x40a0

    .line 258
    const-string v8, "tags"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 259
    .local v6, tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v7

    .line 261
    .local v7, tagsArrayOriginal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/album/TagUtils/TagInfo;

    .line 265
    .local v4, indexTag:Lcom/htc/album/TagUtils/TagInfo;
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    iget-object v8, v4, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-direct {v0, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, faceTag:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    iget v8, v4, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    invoke-virtual {v0, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setCenterX(F)V

    .line 267
    iget v8, v4, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {v0, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setCenterY(F)V

    .line 268
    invoke-virtual {v0, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setWidth(F)V

    .line 269
    invoke-virtual {v0, v10}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setHeight(F)V

    .line 270
    iget-object v8, v4, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setText(Ljava/lang/String;)V

    .line 272
    const/4 v5, 0x1

    .line 274
    .local v5, nTagEditStatus:I
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    .line 279
    .local v3, index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 281
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v8

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v8

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    .line 284
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 285
    const/4 v5, 0x0

    .line 305
    .end local v3           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    :cond_2
    :goto_1
    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    .line 307
    invoke-direct {p0, p1, p3, v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->doAddTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V

    goto :goto_0

    .line 293
    .restart local v3       #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    :cond_3
    const/4 v5, 0x2

    .line 295
    invoke-direct {p0, p1, p3, v3}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->doRemoveTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V

    .line 296
    invoke-direct {p0, p1, p3, v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->doAddTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V

    .line 298
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 312
    .end local v0           #faceTag:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v4           #indexTag:Lcom/htc/album/TagUtils/TagInfo;
    .end local v5           #nTagEditStatus:I
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    .line 314
    .restart local v3       #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    invoke-direct {p0, p1, p3, v3}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->doRemoveTag(Lcom/htc/opensense/social/MediumOp;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;)V

    goto :goto_2

    .line 316
    .end local v3           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    :cond_5
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 12
    .parameter "urls"

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mTimestart:J

    .line 151
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "KA>>> [OnlineEditUpdateManager]:  [asyncReqEditUpload]: doInBackground Start"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    if-eqz v5, :cond_0

    .line 170
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 179
    iget-boolean v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsCancel:Z

    if-eqz v5, :cond_1

    .line 209
    .end local v2           #i:I
    :cond_0
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KA>>> [OnlineEditUpdateManager]:  [asyncReqEditUpload]: doInBackground End, Time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mTimestart:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v11}, Ljava/lang/Integer;-><init>(I)V

    return-object v5

    .line 182
    .restart local v2       #i:I
    :cond_1
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 183
    .local v1, bundle:Landroid/os/Bundle;
    const-string v5, "WrapperPhoto"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 185
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 187
    :cond_2
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[asyncReqEditUpload] bundle || aPhoto NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :cond_3
    new-array v4, v11, [Lcom/htc/opensense/social/data/Medium;

    .line 193
    .local v4, medium:[Lcom/htc/opensense/social/data/Medium;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getProfile()Lcom/htc/opensense/social/data/Medium;

    move-result-object v5

    aput-object v5, v4, v8

    .line 194
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    iget-object v5, v5, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v5, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->getMediumOpFast([Lcom/htc/opensense/social/data/Medium;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/MediumOp;

    .line 196
    .local v3, mOp:Lcom/htc/opensense/social/MediumOp;
    if-nez v3, :cond_4

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload] mOp NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_4
    iget-object v5, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KA>>> [OnlineEditUpdateManager]:  [asyncReqEditUpload]: Start Update ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") Tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, v3, v1, v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->updateDesAndTitle(Lcom/htc/opensense/social/MediumOp;Landroid/os/Bundle;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V

    .line 204
    invoke-direct {p0, v3, v1, v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->updateTag(Lcom/htc/opensense/social/MediumOp;Landroid/os/Bundle;Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsCancel:Z

    .line 362
    const-string v0, "123"

    const-string v1, "KA>>> syncTask onCancelled !!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 391
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsCancel:Z

    if-ne v0, v2, :cond_0

    .line 393
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[asyncReqEditUpload]: Cancel update !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$100(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;->onUpdateCancel()V

    .line 396
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsNoRespondExceptioned:Z

    if-ne v0, v2, :cond_1

    .line 398
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$100(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    move-result-object v0

    const/16 v1, 0x4ee9

    invoke-interface {v0, v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;->onUpdateError(I)V

    .line 399
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->onCancelUpdate()V

    .line 417
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsServerExceptioned:Z

    if-eqz v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$100(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    move-result-object v0

    const/16 v1, 0x4eea

    invoke-interface {v0, v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;->onUpdateError(I)V

    .line 404
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->onCancelUpdate()V

    goto :goto_0

    .line 406
    :cond_2
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsExceptioned:Z

    if-ne v2, v0, :cond_3

    .line 408
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$100(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    move-result-object v0

    const/16 v1, 0x4eeb

    invoke-interface {v0, v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;->onUpdateError(I)V

    .line 409
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->onCancelUpdate()V

    goto :goto_0

    .line 413
    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[asyncReqEditUpload]: Success update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->mOnlineEditCallback:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$100(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$OnlineEditupdateCallbackListener;->onUpdateSuccess()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 366
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method protected showError(Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;Z)V
    .locals 4
    .parameter "e"
    .parameter "isMarkException"

    .prologue
    const/4 v3, 0x1

    .line 370
    invoke-virtual {p1}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->getCode()Lcom/htc/opensense/social/ErrorCode;

    move-result-object v0

    .line 372
    .local v0, reason:Lcom/htc/opensense/social/ErrorCode;
    sget-object v1, Lcom/htc/opensense/social/ErrorCode;->SERVER_ERROR:Lcom/htc/opensense/social/ErrorCode;

    if-ne v0, v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload]: SERVER_ERROR"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    if-eqz p2, :cond_0

    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsServerExceptioned:Z

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    sget-object v1, Lcom/htc/opensense/social/ErrorCode;->SERVICE_NOT_AVAILABLE:Lcom/htc/opensense/social/ErrorCode;

    if-ne v0, v1, :cond_2

    .line 376
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload]: SERVICE_NOT_AVAILABLE"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    if-eqz p2, :cond_0

    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsNoRespondExceptioned:Z

    goto :goto_0

    .line 380
    :cond_2
    sget-object v1, Lcom/htc/opensense/social/ErrorCode;->NETWORK_ERROR:Lcom/htc/opensense/social/ErrorCode;

    if-ne v0, v1, :cond_3

    .line 381
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload]: NETWORK_ERROR"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :goto_1
    if-eqz p2, :cond_0

    iput-boolean v3, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->mIsExceptioned:Z

    goto :goto_0

    .line 383
    :cond_3
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager$asyncReqEditUpdate;->this$0:Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;

    #getter for: Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;->access$000(Lcom/htc/album/SocialNetwork/OnlineEditUpdateManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KA>>> [OnlineEditUpdateManager]: [asyncReqEditUpload]: OTHER ERROR"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
