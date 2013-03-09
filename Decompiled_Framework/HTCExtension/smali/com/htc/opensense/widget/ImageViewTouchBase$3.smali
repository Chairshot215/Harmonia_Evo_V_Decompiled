.class Lcom/htc/opensense/widget/ImageViewTouchBase$3;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/ImageViewTouchBase;->smartZoom(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

.field final synthetic val$atX:F

.field final synthetic val$atY:F

.field final synthetic val$durationMs:F

.field final synthetic val$incrementPerMs:F

.field final synthetic val$oldScale:F

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/ImageViewTouchBase;FJFFFF)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iput p2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->val$durationMs:F

    iput-wide p3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->val$startTime:J

    iput p5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->val$oldScale:F

    iput p6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->val$incrementPerMs:F

    iput p7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->val$atX:F

    iput p8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->val$atY:F

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x1

    iget-object v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v8, v8, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->val$durationMs:F

    iget-wide v9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->val$startTime:J

    sub-long v9, v5, v9

    long-to-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->val$oldScale:F

    iget v9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->val$incrementPerMs:F

    mul-float/2addr v9, v1

    add-float v7, v8, v9

    iget-object v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getScale()F

    move-result v0

    div-float v2, v7, v0

    iget v3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->val$atX:F

    iget v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->val$atY:F

    iget v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->val$oldScale:F

    cmpl-float v8, v0, v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    invoke-virtual {v8}, Lcom/htc/opensense/widget/ImageViewTouchBase;->beginZoomAnimation()V

    :cond_2
    iget-object v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v8, v8, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v2, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    const/4 v9, 0x0

    invoke-virtual {v8, v11, v11, v9}, Lcom/htc/opensense/widget/ImageViewTouchBase;->center(ZZZ)V

    iget v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->val$durationMs:F

    cmpg-float v8, v1, v8

    if-gez v8, :cond_3

    iget-object v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v8, v8, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v8, v8, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget v9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->val$atX:F

    iget v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$3;->val$atY:F

    invoke-virtual {v8, v9, v10}, Lcom/htc/opensense/widget/ImageViewTouchBase;->afterZoomAnimation(FF)V

    goto :goto_0
.end method
