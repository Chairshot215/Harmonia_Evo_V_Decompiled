.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->onCreateAnimation(I)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

.field final synthetic val$idx:I

.field final synthetic val$sceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

.field final synthetic val$view:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/sunny2/fullfilmview/FullFilmView;ILcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;->val$view:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iput p3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;->val$idx:I

    iput-object p4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;->val$sceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1248
    const/16 v1, 0x10

    .line 1249
    .local v1, sleepTime:I
    const/16 v2, 0x100

    .line 1250
    .local v2, total:I
    const/4 v0, 0x0

    .line 1252
    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;->val$view:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iget v4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;->val$idx:I

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->queryItemImageTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v3

    if-nez v3, :cond_0

    const/16 v3, 0x101

    if-ge v0, v3, :cond_0

    .line 1254
    const-wide/16 v3, 0x10

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    :goto_1
    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 1258
    :cond_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;->val$sceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationReady()V

    .line 1259
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$7;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$4900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->resumePreparator(Z)V

    .line 1260
    const-string v3, "SceneLocalPhotoFullscreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SceneLocalPhotoFullscreen] [onCreateAnimation] wait texture ready time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    return-void

    .line 1256
    :catch_0
    move-exception v3

    goto :goto_1
.end method
