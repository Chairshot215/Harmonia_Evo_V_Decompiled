.class public Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "FullScreenViewAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PinchZoomAnimator"
.end annotation


# static fields
.field private static final BOUNCE_BACK_ZOOMING:I = 0x2

.field private static final INIT:I = 0x0

.field private static final LTAG:Ljava/lang/String; = "PinchZoomAnimator"

.field private static final NORMAL_ZOOMING:I = 0x1


# instance fields
.field private imageZoomCenterRX:F

.field private imageZoomCenterRY:F

.field private interpolationSteps:I

.field private isZoomEnd:Z

.field private itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

.field private state:I

.field private tapX:F

.field private tapY:F

.field private targetZoomFactor:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter "host"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 138
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isZoomEnd:Z

    .line 140
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapX:F

    .line 141
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapY:F

    .line 142
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRX:F

    .line 143
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRY:F

    .line 145
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    .line 146
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    .line 159
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    .line 160
    return-void
.end method


# virtual methods
.method public isOnBounceBack()Z
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 2
    .parameter "cancelReason"

    .prologue
    .line 306
    const-string v0, "PinchZoomAnimator"

    const-string v1, "pinch zoom cancel"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 11
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getPositionX()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    .line 226
    const-string v0, "PinchZoomAnimator"

    const-string v4, "pinch zoom end due to frame not centered."

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    .line 228
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomEnd()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 230
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->firstFrameIndex:I

    if-ne p1, v0, :cond_2

    .line 237
    const-string v0, "PinchZoomAnimator"

    const-string v4, "pinch zoom begin"

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomBegin()V

    .line 242
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    if-nez v0, :cond_4

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isZoomEnd:Z

    .line 294
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isZoomEnd:Z

    if-eqz v0, :cond_8

    .line 296
    const-string v0, "PinchZoomAnimator"

    const-string v4, "pinch zoom end"

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    .line 298
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoomEnd()V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 300
    const/4 v0, 0x0

    goto :goto_0

    .line 246
    :cond_4
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    .line 248
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v8

    .line 250
    .local v8, currentZoomFactor:F
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    .line 252
    .local v1, newZoomFactor:F
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    if-lez v0, :cond_5

    .line 254
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    sub-float/2addr v0, v8

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    add-float v1, v8, v0

    .line 255
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    .line 258
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageWidth()F

    move-result v0

    mul-float v10, v0, v1

    .line 259
    .local v10, displayImageWidth:F
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageHeight()F

    move-result v0

    mul-float v9, v0, v1

    .line 261
    .local v9, displayImageHeight:F
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRX:F

    mul-float/2addr v4, v10

    sub-float v2, v0, v4

    .line 262
    .local v2, displayImageCenterX:F
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapY:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRY:F

    mul-float/2addr v4, v9

    sub-float v3, v0, v4

    .line 264
    .local v3, displayImageCenterY:F
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoom(FFFZZII)V

    goto :goto_1

    .line 266
    .end local v1           #newZoomFactor:F
    .end local v2           #displayImageCenterX:F
    .end local v3           #displayImageCenterY:F
    .end local v8           #currentZoomFactor:F
    .end local v9           #displayImageHeight:F
    .end local v10           #displayImageWidth:F
    :cond_6
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 269
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v8

    .line 271
    .restart local v8       #currentZoomFactor:F
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    .line 273
    .restart local v1       #newZoomFactor:F
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    if-lez v0, :cond_7

    .line 275
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    sub-float/2addr v0, v8

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    add-float v1, v8, v0

    .line 276
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    .line 279
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageWidth()F

    move-result v0

    mul-float v10, v0, v1

    .line 280
    .restart local v10       #displayImageWidth:F
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFitToScreenImageHeight()F

    move-result v0

    mul-float v9, v0, v1

    .line 282
    .restart local v9       #displayImageHeight:F
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapX:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRX:F

    mul-float/2addr v4, v10

    sub-float v2, v0, v4

    .line 283
    .restart local v2       #displayImageCenterX:F
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapY:F

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRY:F

    mul-float/2addr v4, v9

    sub-float v3, v0, v4

    .line 285
    .restart local v3       #displayImageCenterY:F
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    rsub-int/lit8 v6, v6, 0xc

    const/16 v7, 0xc

    invoke-virtual/range {v0 .. v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->doZoom(FFFZZII)V

    .line 287
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    if-gtz v0, :cond_3

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isZoomEnd:Z

    goto/16 :goto_1

    .line 302
    .end local v1           #newZoomFactor:F
    .end local v2           #displayImageCenterX:F
    .end local v3           #displayImageCenterY:F
    .end local v8           #currentZoomFactor:F
    .end local v9           #displayImageHeight:F
    .end local v10           #displayImageWidth:F
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public onScaleBeginIRT(Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "itemFrame"
    .parameter "detector"

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x4000

    .line 166
    const-string v0, "PinchZoomAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleBeginIRT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    .line 169
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getZoomFactor()F

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    .line 171
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFrameWidth()F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapX:F

    .line 172
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->getFrameHeight()F

    move-result v0

    div-float/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapY:F

    .line 174
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapX:F

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateImageRXOnViewportPoint(F)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRX:F

    .line 175
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapY:F

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->calculateImageRYOnViewportPoint(F)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRY:F

    .line 177
    const-string v0, "PinchZoomAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoom info: F"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " V:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->tapY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " I:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->imageZoomCenterRY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->isZoomEnd:Z

    .line 181
    return v4
.end method

.method public onScaleEndIRT(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->state:I

    .line 209
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->adjustZoomFactor(F)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    .line 210
    const/16 v0, 0xc

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    goto :goto_0
.end method

.method public onScaleIRT(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    const/4 v4, 0x1

    .line 186
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    if-nez v1, :cond_0

    .line 201
    :goto_0
    return v4

    .line 189
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 190
    .local v0, scaleFactor:F
    const-string v1, "PinchZoomAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScaleIRT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    const-string v1, "PinchZoomAnimator"

    const-string v2, "[HtcAlbum][FullScreenViewAnimation][PinchZoomAnimator][onScaleIRT]scaleFactor NaN, fix to 1.0"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/high16 v0, 0x3f80

    .line 197
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    .line 198
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->itemFrame:Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItemFrame;->adjustZoomFactorExtra(F)F

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->targetZoomFactor:F

    .line 199
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewAnimation$PinchZoomAnimator;->interpolationSteps:I

    goto :goto_0
.end method
