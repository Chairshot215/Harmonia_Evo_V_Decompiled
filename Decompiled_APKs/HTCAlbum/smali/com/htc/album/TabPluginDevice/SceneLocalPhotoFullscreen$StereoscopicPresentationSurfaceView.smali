.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;
.super Landroid/view/SurfaceView;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StereoscopicPresentationSurfaceView"
.end annotation


# instance fields
.field canvas:Landroid/graphics/Canvas;

.field mHolder:Landroid/view/SurfaceHolder;

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 3761
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    .line 3762
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 3763
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][StereoscopicPresentationSurfaceView]Constructor + "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3764
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 3765
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 3766
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3767
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][StereoscopicPresentationSurfaceView]Constructor - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3768
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    .line 3772
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][StereoscopicPresentationSurfaceView][surfaceChanged] + "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3776
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z
    invoke-static {v1, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3502(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z

    .line 3777
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->updatePresentationView()V
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    .line 3780
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3787
    :goto_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z
    invoke-static {v1, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3502(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z

    .line 3788
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->updatePresentationView()V
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    .line 3791
    const-wide/16 v1, 0xc8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3798
    :goto_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z
    invoke-static {v1, v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3502(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z

    .line 3799
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$StereoscopicPresentationSurfaceView;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->updatePresentationView()V
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    .line 3800
    const-string v1, "SceneLocalPhotoFullscreen"

    const-string v2, "[HtcAlbum][SceneLocalPhotoFullscreen][StereoscopicPresentationSurfaceView][surfaceChanged] - "

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3801
    return-void

    .line 3782
    :catch_0
    move-exception v0

    .line 3785
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 3793
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 3796
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 3805
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][StereoscopicPresentationSurfaceView][surfaceCreated]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3806
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 3810
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][StereoscopicPresentationSurfaceView][surfaceDestroyed]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3811
    return-void
.end method
