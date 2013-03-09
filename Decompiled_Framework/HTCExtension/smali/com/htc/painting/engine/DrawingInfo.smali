.class public Lcom/htc/painting/engine/DrawingInfo;
.super Ljava/lang/Object;
.source "DrawingInfo.java"


# static fields
.field static final SCROLL_THRESHOLD:J = 0x32L

.field private static final TAG:Ljava/lang/String; = "DrawingInfo"

.field static final VIEWPORTS_CHANGING:I = 0x1f

.field static final VIEWPORTS_STABLE:I = 0x1e

.field static final VIEWPORTS_UNKNOWN:I = 0x20

.field private static final VIEWPORT_CLEAN:J = -0x1L


# instance fields
.field mDirtyTime:J

.field mDocMatrix:Landroid/graphics/Matrix;

.field mDocMatrixInverse:Landroid/graphics/Matrix;

.field mDocViewPort:Lcom/htc/painting/engine/ViewPort;

.field mSnapshots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/painting/engine/ViewPortSnapShot;",
            ">;"
        }
    .end annotation
.end field

.field mViewportState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mDocViewPort:Lcom/htc/painting/engine/ViewPort;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mDocMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mDocMatrixInverse:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mSnapshots:Ljava/util/HashMap;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mDirtyTime:J

    const/16 v0, 0x20

    iput v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mViewportState:I

    return-void
.end method

.method private updateDocViewPort()V
    .locals 2

    iget-object v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mDocViewPort:Lcom/htc/painting/engine/ViewPort;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mDocMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/painting/engine/DrawingInfo;->mDocViewPort:Lcom/htc/painting/engine/ViewPort;

    invoke-virtual {v1}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mDocMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/painting/engine/DrawingInfo;->mDocMatrixInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getRecordFor(I)Lcom/htc/painting/engine/ViewPortSnapShot;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mSnapshots:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/ViewPortSnapShot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSnapShots()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/painting/engine/ViewPortSnapShot;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mSnapshots:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDocViewPort(Lcom/htc/painting/engine/ViewPort;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/painting/engine/DrawingInfo;->mDocViewPort:Lcom/htc/painting/engine/ViewPort;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mDocMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lcom/htc/painting/engine/ViewPort;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mDocMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/painting/engine/DrawingInfo;->mDocMatrixInverse:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mDocMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0
.end method

.method public declared-synchronized update([Lcom/htc/painting/engine/ViewPortSnapShot;Z)V
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/painting/engine/DrawingInfo;->updateDocViewPort()V

    new-instance v5, Ljava/util/HashMap;

    iget-object v7, p0, Lcom/htc/painting/engine/DrawingInfo;->mSnapshots:Ljava/util/HashMap;

    invoke-direct {v5, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v7, p0, Lcom/htc/painting/engine/DrawingInfo;->mSnapshots:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    iget-wide v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mDirtyTime:J

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_2

    aget-object v6, p1, v2

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/htc/painting/engine/ViewPortSnapShot;->getGroupId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/painting/engine/ViewPortSnapShot;

    if-eqz v4, :cond_1

    invoke-static {v4, v6}, Lcom/htc/painting/engine/ViewPortSnapShot;->contentEqual(Lcom/htc/painting/engine/ViewPortSnapShot;Lcom/htc/painting/engine/ViewPortSnapShot;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/htc/painting/engine/DrawingInfo;->mSnapshots:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/htc/painting/engine/DrawingInfo;->mSnapshots:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v7, v6, Lcom/htc/painting/engine/ViewPortSnapShot;->mCreateTime:J

    cmp-long v7, v0, v7

    if-gez v7, :cond_0

    iget-wide v0, v6, Lcom/htc/painting/engine/ViewPortSnapShot;->mCreateTime:J

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/engine/DrawingInfo;->updateDirtyTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method updateDirtyTime(J)V
    .locals 5

    const/16 v2, 0x1f

    const/16 v4, 0x1e

    iget v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mViewportState:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    iput-wide p1, p0, Lcom/htc/painting/engine/DrawingInfo;->mDirtyTime:J

    iput v4, p0, Lcom/htc/painting/engine/DrawingInfo;->mViewportState:I

    const-string v0, "DrawingInfo"

    const-string v1, "viewports state changed to VIEWPORTS_STABLE"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mDirtyTime:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    iput-wide p1, p0, Lcom/htc/painting/engine/DrawingInfo;->mDirtyTime:J

    iget v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mViewportState:I

    if-eq v0, v2, :cond_0

    iput v2, p0, Lcom/htc/painting/engine/DrawingInfo;->mViewportState:I

    const-string v0, "DrawingInfo"

    const-string v1, "viewports state changed to VIEWPORTS_CHANGING"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/painting/engine/DrawingInfo;->mViewportState:I

    if-eq v0, v4, :cond_0

    iput v4, p0, Lcom/htc/painting/engine/DrawingInfo;->mViewportState:I

    const-string v0, "DrawingInfo"

    const-string v1, "viewports state changed to VIEWPORTS_STABLE"

    invoke-static {v0, v1}, Lcom/htc/painting/util/PaintingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
