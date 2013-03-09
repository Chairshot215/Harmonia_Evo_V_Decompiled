.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->onDeleteEnd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

.field final synthetic val$adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

.field final synthetic val$fIsDeleteAll:Z


# direct methods
.method constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;Lcom/htc/album/SocialNetwork/LivePhotoAdapter;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    iput-object p2, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->val$adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    iput-boolean p3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->val$fIsDeleteAll:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 132
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->val$adapter:Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    if-nez v0, :cond_0

    .line 133
    const-string v0, "SceneOnlinePhotoFullscreen"

    const-string v1, "Adapter is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z
    invoke-static {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$302(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)Z

    .line 137
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->val$fIsDeleteAll:Z

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDeleteAll:Z
    invoke-static {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$402(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)Z

    .line 139
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    const/4 v1, 0x0

    #setter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->mIsDelete:Z
    invoke-static {v0, v1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$302(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Z)Z

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener$1;->this$1:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;

    iget-object v0, v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$DeleteListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onRefresh()V
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    goto :goto_0
.end method
