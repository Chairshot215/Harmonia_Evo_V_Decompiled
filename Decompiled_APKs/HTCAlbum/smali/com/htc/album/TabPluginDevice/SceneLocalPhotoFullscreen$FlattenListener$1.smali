.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener$1;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;->onFlattenEnd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;

.field final synthetic val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field final synthetic val$bSetSelection:Z


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;ZLcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;

    iput-boolean p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener$1;->val$bSetSelection:Z

    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener$1;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 267
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$1000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$1100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$1200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$1300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataSetChanged()V

    .line 274
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->hideControlBars()V
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$1400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    .line 276
    iget-boolean v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener$1;->val$bSetSelection:Z

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$1500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v2

    check-cast v2, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCollectionInfo()Lcom/htc/album/modules/collection/Collection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/album/modules/collection/Collection;->getFolderType()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, strFolderName:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "com.htc.HTCAlbum.ALL_3DS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.htc.HTCAlbum.MY_FAVORITES"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 289
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener$1;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 290
    .local v0, nPos:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FlattenListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$1600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v2, v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setSelection(I)V

    .line 291
    const-string v2, "SceneLocalPhotoFullscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][SceneLocalPhotoFullscreen][onFlattenEnd]: Get Edit(left/right/to2d)Set Photo to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
