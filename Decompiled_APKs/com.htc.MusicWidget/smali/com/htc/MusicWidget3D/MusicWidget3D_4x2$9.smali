.class Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$9;
.super Ljava/lang/Object;
.source "MusicWidget3D_4x2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;


# direct methods
.method constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;)V
    .locals 0
    .parameter

    .prologue
    .line 2287
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$9;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 2289
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$9;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v2, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v2, :cond_1

    .line 2290
    const-string v1, "[MusicWidget3D]"

    const-string v2, "Run Marquee error mMediaPlaybackService == null"

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    :cond_0
    :goto_0
    return-void

    .line 2294
    :cond_1
    const/4 v0, 0x0

    .line 2295
    .local v0, marqueeTimeline:Lcom/htc/fusion/fx/FxTimelineControl;
    const/4 v7, 0x0

    .line 2296
    .local v7, marqueeTimelinSec:Lcom/htc/fusion/fx/FxTimelineControl;
    const/4 v8, 0x0

    .line 2299
    .local v8, marqueeTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :try_start_0
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$9;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v2, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMediaPlaybackService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2300
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$9;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v0, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_Marquee:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 2301
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$9;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v7, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_SecMarquee:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 2302
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$9;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v8, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMarqueeTrackName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2313
    :goto_1
    invoke-virtual {v8}, Lcom/htc/fusion/fx/controls/FxTextLabel;->getLayoutSize()Landroid/graphics/PointF;

    move-result-object v10

    .line 2314
    .local v10, pf:Landroid/graphics/PointF;
    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getSize()Landroid/graphics/PointF;

    move-result-object v9

    .line 2315
    .local v9, p1:Landroid/graphics/PointF;
    iget v2, v10, Landroid/graphics/PointF;->x:F

    iget v3, v9, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 2316
    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2317
    iget v2, v10, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x42c8

    add-float v11, v2, v3

    .line 2318
    .local v11, toRun:F
    invoke-virtual {v7, v11}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 2319
    float-to-int v2, v11

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/fusion/fx/FxTimelineControl;->playFrames(IIIFZ)V

    goto :goto_0

    .line 2304
    .end local v9           #p1:Landroid/graphics/PointF;
    .end local v10           #pf:Landroid/graphics/PointF;
    .end local v11           #toRun:F
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$9;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v0, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_MarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 2305
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$9;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v7, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->m_tl_SecMarqueeDMP:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 2306
    iget-object v2, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$9;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;

    iget-object v8, v2, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;->mMarqueeTrackNameDMP:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2308
    :catch_0
    move-exception v6

    .line 2309
    .local v6, ex:Landroid/os/RemoteException;
    const-string v1, "[MusicWidget3D]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception in mRunMarquee. Ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/MusicWidget3D/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
