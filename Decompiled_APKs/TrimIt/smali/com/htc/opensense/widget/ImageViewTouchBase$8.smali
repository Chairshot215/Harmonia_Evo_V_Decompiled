.class Lcom/htc/opensense/widget/ImageViewTouchBase$8;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomOutByTime(FIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

.field final synthetic val$atx:I

.field final synthetic val$aty:I

.field final synthetic val$currScale:F

.field final synthetic val$currX:I

.field final synthetic val$currY:I

.field final synthetic val$durationMs:F

.field final synthetic val$startTime:J

.field final synthetic val$zoomRatio:F


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/ImageViewTouchBase;FFJFIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2303
    iput-object p1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iput p2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$currScale:F

    iput p3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$durationMs:F

    iput-wide p4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$startTime:J

    iput p6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$zoomRatio:F

    iput p7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$currX:I

    iput p8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$currY:I

    iput p9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$atx:I

    iput p10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$aty:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 2305
    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v7, v7, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v7, v7, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v7, v7, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v7, :cond_2

    .line 2306
    :cond_0
    const-string v7, "ImageViewTouchBase"

    const-string v8, "base matrix or supply matrix or bitmap is recycled, may be it already back to previous view?"

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    :cond_1
    :goto_0
    return-void

    .line 2311
    :cond_2
    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$currScale:F

    iget-object v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3

    .line 2313
    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/ImageViewTouchBase;->beginZoomAnimation()V

    .line 2316
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2317
    .local v2, now:J
    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$durationMs:F

    iget-wide v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$startTime:J

    sub-long v8, v2, v8

    long-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2319
    .local v0, currentMs:F
    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$currScale:F

    iget v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$zoomRatio:F

    iget v9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$currScale:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$durationMs:F

    div-float v9, v0, v9

    mul-float/2addr v8, v9

    add-float v4, v7, v8

    .line 2320
    .local v4, scale:F
    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$currX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$currX:I

    add-int/lit8 v8, v8, 0x0

    int-to-float v8, v8

    iget v9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$durationMs:F

    div-float v9, v0, v9

    mul-float/2addr v8, v9

    sub-float v5, v7, v8

    .line 2321
    .local v5, x:F
    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$currY:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$currY:I

    add-int/lit8 v8, v8, 0x0

    int-to-float v8, v8

    iget v9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$durationMs:F

    div-float v9, v0, v9

    mul-float/2addr v8, v9

    sub-float v6, v7, v8

    .line 2324
    .local v6, y:F
    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v7, v7, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 2325
    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$durationMs:F

    cmpl-float v7, v0, v7

    if-eqz v7, :cond_4

    .line 2326
    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v7, v7, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2327
    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v7, v7, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2329
    :cond_4
    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/ImageViewTouchBase;->updateImageMatrix()V

    .line 2330
    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 2332
    .local v1, mat:Landroid/graphics/Matrix;
    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$durationMs:F

    cmpg-float v7, v0, v7

    if-gez v7, :cond_5

    .line 2333
    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v7, v7, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    if-eqz v7, :cond_1

    .line 2334
    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v7, v7, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2336
    :cond_5
    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/ImageViewTouchBase;->requestLayout()V

    .line 2337
    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    const/4 v8, 0x0

    #setter for: Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static {v7, v8}, Lcom/htc/opensense/widget/ImageViewTouchBase;->access$002(Lcom/htc/opensense/widget/ImageViewTouchBase;I)I

    .line 2338
    sget-object v7, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;->ZOOM:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;

    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenAnimationView;->OnAnimationEnd(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;)V

    .line 2339
    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$atx:I

    int-to-float v8, v8

    iget v9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$8;->val$aty:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/htc/opensense/widget/ImageViewTouchBase;->afterZoomAnimation(FF)V

    goto/16 :goto_0
.end method
