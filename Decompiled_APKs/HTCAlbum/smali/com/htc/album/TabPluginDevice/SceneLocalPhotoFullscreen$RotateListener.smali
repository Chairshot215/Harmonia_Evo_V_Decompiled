.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Lcom/htc/album/helper/MenuManager$RotateCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 2938
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2938
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    return-void
.end method


# virtual methods
.method public onRotateBegin(ILcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 1
    .parameter "position"
    .parameter "image"

    .prologue
    .line 2951
    const/4 v0, 0x1

    return v0
.end method

.method public onRotateFinish(ILcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 4
    .parameter "position"
    .parameter "image"

    .prologue
    .line 2964
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][RotateListener][onRotateFinish] + "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$8700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    .line 2966
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;
    if-nez v0, :cond_0

    .line 2987
    :goto_0
    return-void

    .line 2969
    :cond_0
    move v1, p1

    .line 2970
    .local v1, rotated_pos:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$9200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener$1;

    invoke-direct {v3, p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$RotateListener;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2986
    const-string v2, "SceneLocalPhotoFullscreen"

    const-string v3, "[HtcAlbum][SceneLocalPhotoFullscreen][RotateListener][onRotateFinish] - "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
