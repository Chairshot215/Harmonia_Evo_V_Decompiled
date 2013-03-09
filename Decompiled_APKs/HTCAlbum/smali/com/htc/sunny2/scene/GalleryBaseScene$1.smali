.class Lcom/htc/sunny2/scene/GalleryBaseScene$1;
.super Ljava/lang/Object;
.source "GalleryBaseScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/scene/GalleryBaseScene;->onDestroyAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/scene/GalleryBaseScene;

.field final synthetic val$leaveAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

.field final synthetic val$leaveView:Lcom/htc/sunny2/view/SView;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/scene/GalleryBaseScene;Lcom/htc/sunny2/view/SView;Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene$1;,"Lcom/htc/sunny2/scene/GalleryBaseScene.1;"
    iput-object p1, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->this$0:Lcom/htc/sunny2/scene/GalleryBaseScene;

    iput-object p2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveView:Lcom/htc/sunny2/view/SView;

    iput-object p3, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 131
    .local p0, this:Lcom/htc/sunny2/scene/GalleryBaseScene$1;,"Lcom/htc/sunny2/scene/GalleryBaseScene.1;"
    invoke-static {}, Lcom/htc/sunny2/scene/GalleryBaseScene;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDestroyAdapter] Start to wait: leaveView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveView:Lcom/htc/sunny2/view/SView;

    instance-of v0, v0, Lcom/htc/sunny2/widget/gridview/GridView;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->checkSetMediaListComplete_block()V

    .line 139
    :cond_0
    :goto_0
    invoke-static {}, Lcom/htc/sunny2/scene/GalleryBaseScene;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDestroyAdapter] Start to release: leaveAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onUnloadData()V

    .line 143
    :cond_1
    return-void

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveView:Lcom/htc/sunny2/view/SView;

    instance-of v0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/htc/sunny2/scene/GalleryBaseScene$1;->val$leaveView:Lcom/htc/sunny2/view/SView;

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->checkSetMediaListComplete_block()V

    goto :goto_0
.end method
