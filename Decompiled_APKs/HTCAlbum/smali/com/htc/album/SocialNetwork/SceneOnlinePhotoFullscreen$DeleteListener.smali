.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteListener"
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->mIsCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    return-void
.end method


# virtual methods
.method public onDeleteCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->mIsCanceled:Z

    .line 149
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDeleteAll:Z
    invoke-static {v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$402(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)Z

    .line 150
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z
    invoke-static {v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$302(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)Z

    .line 152
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$600(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 153
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 154
    const-string v1, "SceneOnlinePhotoFullscreen"

    const-string v2, "Activity is null"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 157
    :cond_0
    new-instance v1, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$2;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$2;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDeleteEnd(Z)V
    .locals 5
    .parameter "isDeleteAll"

    .prologue
    .line 119
    iget-boolean v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->mIsCanceled:Z

    if-eqz v3, :cond_0

    .line 144
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 123
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 124
    const-string v3, "SceneOnlinePhotoFullscreen"

    const-string v4, "Activity is null"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v1

    check-cast v1, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    .line 128
    .local v1, adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;
    move v2, p1

    .line 129
    .local v2, fIsDeleteAll:Z
    new-instance v3, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Z)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDeleteStart()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onDismissDeleteAll()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method
