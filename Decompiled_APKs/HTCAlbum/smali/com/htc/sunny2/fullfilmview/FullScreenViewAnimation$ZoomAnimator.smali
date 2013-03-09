.class public Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "FullScreenViewAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoomAnimator"
.end annotation


# static fields
.field private static final LTAG:Ljava/lang/String; = "ZoomAnimator"


# instance fields
.field centerXBegin:F

.field centerXEnd:F

.field centerYBegin:F

.field centerYEnd:F

.field frameDuration:J

.field isZooming:Z

.field private itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

.field zoomFactorBegin:F

.field zoomFactorEnd:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;FFFFFF)V
    .locals 4
    .parameter "host"
    .parameter "name"
    .parameter "itemFrame"
    .parameter "zoomFactorBegin"
    .parameter "centerXBegin"
    .parameter "centerYBegin"
    .parameter "zoomFactorEnd"
    .parameter "centerXEnd"
    .parameter "centerYEnd"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 29
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->frameDuration:J

    .line 31
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorBegin:F

    .line 32
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXBegin:F

    .line 33
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYBegin:F

    .line 35
    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorEnd:F

    .line 36
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXEnd:F

    .line 37
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYEnd:F

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->isZooming:Z

    .line 47
    iput-object p3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 49
    iput p4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorBegin:F

    .line 50
    iput p5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXBegin:F

    .line 51
    iput p6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYBegin:F

    .line 53
    iput p7, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorEnd:F

    .line 54
    iput p8, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXEnd:F

    .line 55
    iput p9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYEnd:F

    .line 56
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 2
    .parameter "cancelReason"

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->isZooming:Z

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->isZooming:Z

    .line 120
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomEnd()V

    .line 121
    const-string v0, "ZoomAnimator"

    const-string v1, "zoom end due to cancel"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 11
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "ZoomAnimator"

    const-string v4, "null itemFrame"

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    .line 72
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->firstFrameIndex:I

    if-ne p1, v0, :cond_1

    .line 74
    const-string v0, "ZoomAnimator"

    const-string v4, "zoom begin"

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomBegin()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->isZooming:Z

    .line 81
    :cond_1
    const/high16 v1, 0x3f80

    .line 82
    .local v1, zoomFactor:F
    const/4 v2, 0x0

    .line 83
    .local v2, displayImageCenterX:F
    const/4 v3, 0x0

    .line 85
    .local v3, displayImageCenterY:F
    int-to-long v4, p1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->firstFrameIndex:I

    int-to-long v6, v0

    iget-wide v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->frameDuration:J

    add-long/2addr v6, v9

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 87
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorEnd:F

    .line 88
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXEnd:F

    .line 89
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYEnd:F

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoom(FFFZZII)V

    .line 103
    int-to-long v4, p1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->firstFrameIndex:I

    int-to-long v6, v0

    iget-wide v9, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->frameDuration:J

    add-long/2addr v6, v9

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->isZooming:Z

    .line 106
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomEnd()V

    .line 107
    const-string v0, "ZoomAnimator"

    const-string v4, "zoom end"

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->firstFrameIndex:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-wide v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->frameDuration:J

    long-to-float v4, v4

    div-float v8, v0, v4

    .line 94
    .local v8, t:F
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorBegin:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorEnd:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->zoomFactorBegin:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    add-float v1, v0, v4

    .line 95
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXBegin:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXEnd:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerXBegin:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    add-float v2, v0, v4

    .line 96
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYBegin:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYEnd:F

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$ZoomAnimator;->centerYBegin:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v8

    add-float v3, v0, v4

    goto :goto_1

    .line 112
    .end local v8           #t:F
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
