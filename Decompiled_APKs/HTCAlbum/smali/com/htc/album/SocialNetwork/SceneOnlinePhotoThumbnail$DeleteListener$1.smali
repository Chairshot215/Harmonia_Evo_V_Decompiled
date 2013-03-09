.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoThumbnail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->onDeleteEnd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

.field final synthetic val$adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

.field final synthetic val$fIsDeleteAll:Z


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    iput-object p2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->val$adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iput-boolean p3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->val$fIsDeleteAll:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1572
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->val$adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    if-nez v0, :cond_0

    .line 1573
    const-string v0, "SceneOnlinePhotoThumbnail"

    const-string v1, "[onDeleteEnd] Adapter is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    :goto_0
    return-void

    .line 1577
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->val$fIsDeleteAll:Z

    if-eqz v0, :cond_1

    .line 1578
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    const/4 v1, 0x1

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mIsDeleteAll:Z
    invoke-static {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$802(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Z)Z

    .line 1581
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->mCurrentPickerMode:I
    invoke-static {v0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$902(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;I)I

    .line 1582
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-virtual {v0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->setPickerMode(I)V

    .line 1584
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->onRefresh(I)V
    invoke-static {v0, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$1000(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;I)V

    goto :goto_0
.end method
