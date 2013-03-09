.class Lcom/htc/opensense2/widget/ImageViewTouchBase$7;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/widget/ImageViewTouchBase;->zoomOutByFrame(FIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

.field final synthetic val$atx:I

.field final synthetic val$aty:I

.field final synthetic val$currScale:F

.field final synthetic val$currX:I

.field final synthetic val$currY:I

.field final synthetic val$stepFlow:I

.field final synthetic val$zoomRatio:F


# direct methods
.method constructor <init>(Lcom/htc/opensense2/widget/ImageViewTouchBase;FFIIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2234
    iput-object p1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iput p2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$currScale:F

    iput p3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$zoomRatio:F

    iput p4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$stepFlow:I

    iput p5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$currX:I

    iput p6, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$currY:I

    iput p7, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$atx:I

    iput p8, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$aty:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2236
    iget-object v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v3, v3, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v3, v3, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v3, v3, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 2237
    :cond_0
    const-string v3, "ImageViewTouchBase"

    const-string v4, "base matrix or supply matrix or bitmap is recycled, may be it already back to previous view?"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    :cond_1
    :goto_0
    return-void

    .line 2241
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    invoke-static {v3}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->access$008(Lcom/htc/opensense2/widget/ImageViewTouchBase;)I

    .line 2242
    iget v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$currScale:F

    iget v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$zoomRatio:F

    iget v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$currScale:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    #getter for: Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static {v5}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->access$000(Lcom/htc/opensense2/widget/ImageViewTouchBase;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$stepFlow:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float v0, v3, v4

    .line 2243
    .local v0, scale:F
    iget v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$currX:I

    iget v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$currX:I

    add-int/lit8 v4, v4, 0x0

    iget-object v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    #getter for: Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static {v5}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->access$000(Lcom/htc/opensense2/widget/ImageViewTouchBase;)I

    move-result v5

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$stepFlow:I

    div-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v1, v3

    .line 2244
    .local v1, x:F
    iget v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$currY:I

    iget v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$currY:I

    add-int/lit8 v4, v4, 0x0

    iget-object v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    #getter for: Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static {v5}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->access$000(Lcom/htc/opensense2/widget/ImageViewTouchBase;)I

    move-result v5

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$stepFlow:I

    div-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 2247
    .local v2, y:F
    iget-object v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v3, v3, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 2248
    iget-object v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v3, v3, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2249
    iget-object v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v3, v3, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2250
    iget-object v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    invoke-virtual {v3}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->updateImageMatrix()V

    .line 2251
    iget-object v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    #getter for: Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static {v3}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->access$000(Lcom/htc/opensense2/widget/ImageViewTouchBase;)I

    move-result v3

    iget v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$stepFlow:I

    if-ge v3, v4, :cond_3

    .line 2252
    iget-object v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v3, v3, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 2253
    iget-object v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v3, v3, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2255
    :cond_3
    iget-object v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    const/4 v4, 0x0

    #setter for: Lcom/htc/opensense2/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static {v3, v4}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->access$002(Lcom/htc/opensense2/widget/ImageViewTouchBase;I)I

    .line 2256
    iget-object v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget v4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$atx:I

    int-to-float v4, v4

    iget v5, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$7;->val$aty:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->afterZoomAnimation(FF)V

    goto/16 :goto_0
.end method
