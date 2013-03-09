.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoThumbnail.java"

# interfaces
.implements Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteListener"
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;


# direct methods
.method private constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V
    .locals 1
    .parameter

    .prologue
    .line 1550
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->mIsCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1550
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V

    return-void
.end method


# virtual methods
.method public onDeleteCancel()V
    .locals 3

    .prologue
    .line 1591
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->mIsCanceled:Z

    .line 1592
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    const/4 v2, 0x0

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsDeleteAll:Z
    invoke-static {v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$802(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Z)Z

    .line 1593
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$1100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1594
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1595
    const-string v1, "SceneOnlinePhotoThumbnail"

    const-string v2, "Activity is null"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    :goto_0
    return-void

    .line 1598
    :cond_0
    new-instance v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$2;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$2;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDeleteEnd(Z)V
    .locals 5
    .parameter "isDeleteAll"

    .prologue
    .line 1559
    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->mIsCanceled:Z

    if-eqz v3, :cond_0

    .line 1587
    :goto_0
    return-void

    .line 1562
    :cond_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 1563
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 1564
    const-string v3, "SceneOnlinePhotoThumbnail"

    const-string v4, "[onDeleteEnd] Activity is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1567
    :cond_1
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$700(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v1

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 1568
    .local v1, adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    move v2, p1

    .line 1569
    .local v2, fIsDeleteAll:Z
    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Z)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDeleteStart()V
    .locals 0

    .prologue
    .line 1555
    return-void
.end method

.method public onDismissDeleteAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1608
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I
    invoke-static {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$902(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;I)I

    .line 1609
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-virtual {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setPickerMode(I)V

    .line 1610
    return-void
.end method
