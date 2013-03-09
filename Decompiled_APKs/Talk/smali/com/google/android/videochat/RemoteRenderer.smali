.class public Lcom/google/android/videochat/RemoteRenderer;
.super Lcom/google/android/videochat/Renderer;
.source "RemoteRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/videochat/RemoteRenderer$1;,
        Lcom/google/android/videochat/RemoteRenderer$Stats;,
        Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/videochat/Renderer$RendererThreadCallback;

.field private mFirstStatsUpdateTime:J

.field private mHaveSeenFirstFrame:Z

.field private mLastStatsUpdateTime:J

.field private mOutputTextureName:I

.field mStats:Lcom/google/android/videochat/util/CircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/videochat/util/CircularArray",
            "<",
            "Lcom/google/android/videochat/RemoteRenderer$Stats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/videochat/RendererManager;Lcom/google/android/videochat/Renderer$RendererThreadCallback;)V
    .locals 3
    .parameter "rendererManager"
    .parameter "callback"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/videochat/Renderer;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/videochat/util/CircularArray;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Lcom/google/android/videochat/util/CircularArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/videochat/RemoteRenderer;->mStats:Lcom/google/android/videochat/util/CircularArray;

    .line 49
    iput-object p1, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    .line 50
    iput-object p2, p0, Lcom/google/android/videochat/RemoteRenderer;->mCallback:Lcom/google/android/videochat/Renderer$RendererThreadCallback;

    .line 51
    iget-object v0, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/RendererManager;->instantiateRenderer(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererID:I

    .line 52
    const-string v0, "vclib:RemoteRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    invoke-virtual {v0, p0}, Lcom/google/android/videochat/RendererManager;->registerRendererForStats(Lcom/google/android/videochat/Renderer;)V

    .line 54
    return-void
.end method


# virtual methods
.method public drawTexture(Lcom/google/android/videochat/Renderer$DrawInputParams;Lcom/google/android/videochat/Renderer$DrawOutputParams;)V
    .locals 9
    .parameter "inputParams"
    .parameter "outputParams"

    .prologue
    const/4 v8, 0x0

    .line 102
    move-object v0, p2

    check-cast v0, Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;

    .line 103
    .local v0, remoteDrawOutParams:Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;
    iget-object v4, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v5, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererID:I

    invoke-virtual {v4, v5, v8, p2}, Lcom/google/android/videochat/RendererManager;->renderFrame(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 104
    iget-boolean v4, p0, Lcom/google/android/videochat/RemoteRenderer;->mHaveSeenFirstFrame:Z

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lcom/google/android/videochat/RemoteRenderer$RendererFrameOutputData;->updatedTexture:Z

    if-eqz v4, :cond_1

    .line 105
    iget-object v4, p0, Lcom/google/android/videochat/RemoteRenderer;->mCallback:Lcom/google/android/videochat/Renderer$RendererThreadCallback;

    if-eqz v4, :cond_0

    .line 106
    iget-object v4, p0, Lcom/google/android/videochat/RemoteRenderer;->mCallback:Lcom/google/android/videochat/Renderer$RendererThreadCallback;

    invoke-interface {v4}, Lcom/google/android/videochat/Renderer$RendererThreadCallback;->onInitialFrame()V

    .line 108
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/videochat/RemoteRenderer;->mHaveSeenFirstFrame:Z

    .line 110
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 111
    .local v2, timeNow:J
    iget-wide v4, p0, Lcom/google/android/videochat/RemoteRenderer;->mLastStatsUpdateTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 112
    new-instance v1, Lcom/google/android/videochat/RemoteRenderer$Stats;

    invoke-direct {v1, p0, v8}, Lcom/google/android/videochat/RemoteRenderer$Stats;-><init>(Lcom/google/android/videochat/RemoteRenderer;Lcom/google/android/videochat/RemoteRenderer$1;)V

    .line 113
    .local v1, stats:Lcom/google/android/videochat/RemoteRenderer$Stats;
    iput-wide v2, v1, Lcom/google/android/videochat/RemoteRenderer$Stats;->time:J

    .line 114
    iget-object v4, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v5, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererID:I

    const-string v6, "yuv_dropped"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/videochat/RendererManager;->getIntParam(ILjava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/google/android/videochat/RemoteRenderer$Stats;->dropped:I

    .line 116
    iget-object v4, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v5, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererID:I

    const-string v6, "yuv_pushed"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/videochat/RendererManager;->getIntParam(ILjava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/google/android/videochat/RemoteRenderer$Stats;->pushed:I

    .line 118
    iget-object v4, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v5, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererID:I

    const-string v6, "yuv_rendered"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/videochat/RendererManager;->getIntParam(ILjava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/google/android/videochat/RemoteRenderer$Stats;->renderered:I

    .line 120
    iget-object v4, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v5, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererID:I

    const-string v6, "sub_renderedframes"

    invoke-virtual {v4, v5, v6}, Lcom/google/android/videochat/RendererManager;->getIntParam(ILjava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/google/android/videochat/RemoteRenderer$Stats;->rendererCalls:I

    .line 122
    iget-object v5, p0, Lcom/google/android/videochat/RemoteRenderer;->mStats:Lcom/google/android/videochat/util/CircularArray;

    monitor-enter v5

    .line 123
    :try_start_0
    iget-object v4, p0, Lcom/google/android/videochat/RemoteRenderer;->mStats:Lcom/google/android/videochat/util/CircularArray;

    invoke-virtual {v4, v1}, Lcom/google/android/videochat/util/CircularArray;->add(Ljava/lang/Object;)V

    .line 124
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iput-wide v2, p0, Lcom/google/android/videochat/RemoteRenderer;->mLastStatsUpdateTime:J

    .line 127
    .end local v1           #stats:Lcom/google/android/videochat/RemoteRenderer$Stats;
    :cond_2
    return-void

    .line 124
    .restart local v1       #stats:Lcom/google/android/videochat/RemoteRenderer$Stats;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 12
    .parameter "writer"

    .prologue
    .line 58
    const-string v6, "Remote Renderer -- dropped, pushed, new frames renderered, rendered"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    new-instance v4, Lcom/google/android/videochat/RemoteRenderer$Stats;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/google/android/videochat/RemoteRenderer$Stats;-><init>(Lcom/google/android/videochat/RemoteRenderer;Lcom/google/android/videochat/RemoteRenderer$1;)V

    .line 60
    .local v4, previousStats:Lcom/google/android/videochat/RemoteRenderer$Stats;
    iget-wide v6, p0, Lcom/google/android/videochat/RemoteRenderer;->mFirstStatsUpdateTime:J

    iput-wide v6, v4, Lcom/google/android/videochat/RemoteRenderer$Stats;->time:J

    .line 62
    iget-object v7, p0, Lcom/google/android/videochat/RemoteRenderer;->mStats:Lcom/google/android/videochat/util/CircularArray;

    monitor-enter v7

    .line 63
    :try_start_0
    iget-object v6, p0, Lcom/google/android/videochat/RemoteRenderer;->mStats:Lcom/google/android/videochat/util/CircularArray;

    invoke-virtual {v6}, Lcom/google/android/videochat/util/CircularArray;->count()I

    move-result v0

    .line 64
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 65
    iget-object v6, p0, Lcom/google/android/videochat/RemoteRenderer;->mStats:Lcom/google/android/videochat/util/CircularArray;

    invoke-virtual {v6, v3}, Lcom/google/android/videochat/util/CircularArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/videochat/RemoteRenderer$Stats;

    .line 66
    .local v5, stats:Lcom/google/android/videochat/RemoteRenderer$Stats;
    new-instance v1, Ljava/util/Date;

    iget-wide v8, v5, Lcom/google/android/videochat/RemoteRenderer$Stats;->time:J

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 67
    .local v1, date:Ljava/util/Date;
    iget-wide v8, v5, Lcom/google/android/videochat/RemoteRenderer$Stats;->time:J

    iget-wide v10, v4, Lcom/google/android/videochat/RemoteRenderer$Stats;->time:J

    sub-long/2addr v8, v10

    long-to-float v6, v8

    const/high16 v8, 0x447a

    div-float v2, v6, v8

    .line 68
    .local v2, deltaTime:F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " -- "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v5, Lcom/google/android/videochat/RemoteRenderer$Stats;->dropped:I

    iget v9, v4, Lcom/google/android/videochat/RemoteRenderer$Stats;->dropped:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v5, Lcom/google/android/videochat/RemoteRenderer$Stats;->pushed:I

    iget v9, v4, Lcom/google/android/videochat/RemoteRenderer$Stats;->pushed:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v5, Lcom/google/android/videochat/RemoteRenderer$Stats;->renderered:I

    iget v9, v4, Lcom/google/android/videochat/RemoteRenderer$Stats;->renderered:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v5, Lcom/google/android/videochat/RemoteRenderer$Stats;->rendererCalls:I

    iget v9, v4, Lcom/google/android/videochat/RemoteRenderer$Stats;->rendererCalls:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    move-object v4, v5

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    .end local v1           #date:Ljava/util/Date;
    .end local v2           #deltaTime:F
    .end local v5           #stats:Lcom/google/android/videochat/RemoteRenderer$Stats;
    :cond_0
    monitor-exit v7

    .line 76
    return-void

    .line 75
    .end local v0           #count:I
    .end local v3           #i:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public getOutputTextureName()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/videochat/RemoteRenderer;->mOutputTextureName:I

    return v0
.end method

.method public initializeGLContext()V
    .locals 3

    .prologue
    .line 80
    const-string v0, "vclib:RemoteRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeGLContext "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererID:I

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/RendererManager;->initializeGLContext(I)Z

    .line 82
    iget-object v0, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererID:I

    const-string v2, "sub_outtex"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/videochat/RendererManager;->getIntParam(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/videochat/RemoteRenderer;->mOutputTextureName:I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/videochat/RemoteRenderer;->mHaveSeenFirstFrame:Z

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/videochat/RemoteRenderer;->mFirstStatsUpdateTime:J

    iput-wide v0, p0, Lcom/google/android/videochat/RemoteRenderer;->mLastStatsUpdateTime:J

    .line 86
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 95
    const-string v0, "vclib:RemoteRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    invoke-virtual {v0, p0}, Lcom/google/android/videochat/RendererManager;->unregisterRendererForStats(Lcom/google/android/videochat/Renderer;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/RemoteRenderer;->mRendererID:I

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/RendererManager;->releaseRenderer(I)V

    .line 98
    return-void
.end method
