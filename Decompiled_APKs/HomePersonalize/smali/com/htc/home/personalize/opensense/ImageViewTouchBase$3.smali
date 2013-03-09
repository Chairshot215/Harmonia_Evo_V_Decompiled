.class Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->smartZoom(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/opensense/ImageViewTouchBase;

.field final synthetic val$atX:F

.field final synthetic val$atY:F

.field final synthetic val$durationMs:F

.field final synthetic val$incrementPerMs:F

.field final synthetic val$oldScale:F

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/opensense/ImageViewTouchBase;FJFFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1220
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->this$0:Lcom/htc/home/personalize/opensense/ImageViewTouchBase;

    iput p2, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->val$durationMs:F

    iput-wide p3, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->val$startTime:J

    iput p5, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->val$oldScale:F

    iput p6, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->val$incrementPerMs:F

    iput p7, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->val$atX:F

    iput p8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->val$atY:F

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 1222
    iget-object v8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->this$0:Lcom/htc/home/personalize/opensense/ImageViewTouchBase;

    iget-object v8, v8, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v8, :cond_1

    .line 1269
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1227
    .local v5, now:J
    iget v8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->val$durationMs:F

    iget-wide v9, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->val$startTime:J

    sub-long v9, v5, v9

    long-to-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1228
    .local v1, currentMs:F
    iget v8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->val$oldScale:F

    iget v9, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->val$incrementPerMs:F

    mul-float/2addr v9, v1

    add-float v7, v8, v9

    .line 1229
    .local v7, target:F
    iget-object v8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->this$0:Lcom/htc/home/personalize/opensense/ImageViewTouchBase;

    invoke-virtual {v8}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->getScale()F

    move-result v0

    .line 1230
    .local v0, curScale:F
    div-float v2, v7, v0

    .line 1231
    .local v2, deltaScale:F
    iget v3, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->val$atX:F

    .line 1232
    .local v3, nX:F
    iget v4, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->val$atY:F

    .line 1234
    .local v4, nY:F
    iget v8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->val$oldScale:F

    cmpl-float v8, v0, v8

    if-nez v8, :cond_2

    .line 1236
    iget-object v8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->this$0:Lcom/htc/home/personalize/opensense/ImageViewTouchBase;

    invoke-virtual {v8}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->beginZoomAnimation()V

    .line 1246
    :cond_2
    iget-object v8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->this$0:Lcom/htc/home/personalize/opensense/ImageViewTouchBase;

    iget-object v8, v8, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v2, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1255
    iget-object v8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->this$0:Lcom/htc/home/personalize/opensense/ImageViewTouchBase;

    const/4 v9, 0x0

    invoke-virtual {v8, v11, v11, v9}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->center(ZZZ)V

    .line 1262
    iget v8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->val$durationMs:F

    cmpg-float v8, v1, v8

    if-gez v8, :cond_3

    .line 1263
    iget-object v8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->this$0:Lcom/htc/home/personalize/opensense/ImageViewTouchBase;

    iget-object v8, v8, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    if-eqz v8, :cond_0

    .line 1264
    iget-object v8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->this$0:Lcom/htc/home/personalize/opensense/ImageViewTouchBase;

    iget-object v8, v8, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1267
    :cond_3
    iget-object v8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->this$0:Lcom/htc/home/personalize/opensense/ImageViewTouchBase;

    iget v9, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->val$atX:F

    iget v10, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase$3;->val$atY:F

    invoke-virtual {v8, v9, v10}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->afterZoomAnimation(FF)V

    goto :goto_0
.end method
