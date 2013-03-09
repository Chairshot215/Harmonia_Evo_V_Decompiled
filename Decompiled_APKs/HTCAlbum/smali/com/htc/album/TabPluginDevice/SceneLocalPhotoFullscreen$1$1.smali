.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->onSideBySideBitmapReady(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 382
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][onSideBySideBitmapReady][run] + "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isActivityPaused:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$1700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][onSideBySideBitmapReady][run]activity paused"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$1800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$1900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    :cond_1
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][onSideBySideBitmapReady][run]displayManager is null or activity is null or activity is finishing"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->val$bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    if-nez v0, :cond_4

    .line 397
    :cond_3
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][onSideBySideBitmapReady][run]bmp is null or interleaveView is null or mainview is null"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_4
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->val$bmp:Landroid/graphics/Bitmap;

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mSideBySideBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2302(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 401
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setupSideBySideBitmap()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    .line 402
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->is3DSWButtonOn()Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2500(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isCurrentItemCanShow3D()Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsAnimating:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveViewReady:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2800(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2900(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mMainView:Lcom/htc/sunny2/view/SView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3000(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->isFullScreenAndZoomed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 404
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][onSideBySideBitmapReady][run] fullscreen, not animating"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][onSideBySideBitmapReady][run]mInterleaveView set visible"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->isCurrentItemVideo()Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 411
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DVideoPlayableIndicatorView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    :cond_5
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setDisplay3DModeOnOff(Z)V
    invoke-static {v0, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)V

    .line 432
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z
    invoke-static {v0, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3502(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z

    .line 433
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->updatePresentationView()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    .line 436
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #setter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mShouldShowPresentationView:Z
    invoke-static {v0, v7}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3502(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)Z

    .line 437
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->updatePresentationView()V
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    .line 440
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][onSideBySideBitmapReady][run] - "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 419
    :cond_7
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][onSideBySideBitmapReady][run] not fullscreen, or animating"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v0, "SceneLocalPhotoFullscreen"

    const-string v1, "[HtcAlbum][SceneLocalPhotoFullscreen][onSideBySideBitmapReady][run]mInterleaveView set invisible"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setBitmap(Landroid/graphics/Bitmap;FFFF)V

    .line 424
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mInterleaveView:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$2100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$ModStereoSurfaceView;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->m3DVideoPlayableIndicatorView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->mIsKeep3DBarrier:Z
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 429
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1$1;->this$1:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->setDisplay3DModeOnOff(Z)V
    invoke-static {v0, v6}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;->access$3300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Z)V

    goto :goto_1
.end method
