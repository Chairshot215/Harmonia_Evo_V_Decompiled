.class Lcom/htc/opensense/widget/ImageViewTouchBase$5;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/ImageViewTouchBase;->zoomAnimationByFrame(FIIIIIIFI)V
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

.field final synthetic val$cx:I

.field final synthetic val$cx2:I

.field final synthetic val$cy:I

.field final synthetic val$cy2:I

.field final synthetic val$stepFlow:I

.field final synthetic val$zoomRatio:F


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/ImageViewTouchBase;IIIIIFFII)V
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
    .parameter

    .prologue
    .line 2054
    iput-object p1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iput p2, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$cx2:I

    iput p3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$cx:I

    iput p4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$stepFlow:I

    iput p5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$cy2:I

    iput p6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$cy:I

    iput p7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$currScale:F

    iput p8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$zoomRatio:F

    iput p9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$atx:I

    iput p10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$aty:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 2056
    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v11, v11, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v11, v11, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v11, v11, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v11, v11, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2058
    :cond_0
    const-string v11, "ImageViewTouchBase"

    const-string v12, "base matrix or supply matrix or bitmap is recycled, may be it already back to previous view?"

    invoke-static {v11, v12}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    :goto_0
    return-void

    .line 2065
    :cond_1
    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    invoke-static {v11}, Lcom/htc/opensense/widget/ImageViewTouchBase;->access$008(Lcom/htc/opensense/widget/ImageViewTouchBase;)I

    .line 2067
    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v12, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v12, v12, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v12}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v11

    float-to-int v2, v11

    .line 2068
    .local v2, baseTransX:I
    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v12, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v12, v12, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v12}, Lcom/htc/opensense/widget/ImageViewTouchBase;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v11

    float-to-int v3, v11

    .line 2070
    .local v3, baseTransY:I
    iget v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$cx2:I

    iget v12, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$cx:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    #getter for: Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static {v12}, Lcom/htc/opensense/widget/ImageViewTouchBase;->access$000(Lcom/htc/opensense/widget/ImageViewTouchBase;)I

    move-result v12

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$stepFlow:I

    div-int v9, v11, v12

    .line 2071
    .local v9, x:I
    iget v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$cy2:I

    iget v12, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$cy:I

    sub-int/2addr v11, v12

    iget-object v12, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    #getter for: Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static {v12}, Lcom/htc/opensense/widget/ImageViewTouchBase;->access$000(Lcom/htc/opensense/widget/ImageViewTouchBase;)I

    move-result v12

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$stepFlow:I

    div-int v10, v11, v12

    .line 2072
    .local v10, y:I
    iget v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$currScale:F

    iget v12, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$zoomRatio:F

    iget v13, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$currScale:F

    sub-float/2addr v12, v13

    iget-object v13, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    #getter for: Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static {v13}, Lcom/htc/opensense/widget/ImageViewTouchBase;->access$000(Lcom/htc/opensense/widget/ImageViewTouchBase;)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    iget v13, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$stepFlow:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    add-float v4, v11, v12

    .line 2074
    .local v4, finalScale:F
    int-to-float v11, v2

    mul-float v0, v11, v4

    .line 2075
    .local v0, afterScaleX:F
    int-to-float v11, v3

    mul-float v1, v11, v4

    .line 2076
    .local v1, afterScaleY:F
    sub-int v11, v2, v9

    int-to-float v5, v11

    .line 2077
    .local v5, finalx:F
    sub-int v11, v3, v10

    int-to-float v6, v11

    .line 2078
    .local v6, finaly:F
    sub-float v11, v5, v0

    neg-float v7, v11

    .line 2079
    .local v7, suppx:F
    sub-float v11, v6, v1

    neg-float v8, v11

    .line 2081
    .local v8, suppy:F
    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v11, v11, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    .line 2082
    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v11, v11, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2083
    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget-object v11, v11, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    neg-float v12, v7

    neg-float v13, v8

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2085
    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    invoke-virtual {v11}, Lcom/htc/opensense/widget/ImageViewTouchBase;->updateImageMatrix()V

    .line 2086
    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    #getter for: Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static {v11}, Lcom/htc/opensense/widget/ImageViewTouchBase;->access$000(Lcom/htc/opensense/widget/ImageViewTouchBase;)I

    move-result v11

    iget v12, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$stepFlow:I

    if-ge v11, v12, :cond_2

    .line 2087
    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    invoke-virtual {v11, p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2089
    :cond_2
    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    const/4 v12, 0x0

    #setter for: Lcom/htc/opensense/widget/ImageViewTouchBase;->mZoomStep:I
    invoke-static {v11, v12}, Lcom/htc/opensense/widget/ImageViewTouchBase;->access$002(Lcom/htc/opensense/widget/ImageViewTouchBase;I)I

    .line 2090
    iget-object v11, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->this$0:Lcom/htc/opensense/widget/ImageViewTouchBase;

    iget v12, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$atx:I

    int-to-float v12, v12

    iget v13, p0, Lcom/htc/opensense/widget/ImageViewTouchBase$5;->val$aty:I

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Lcom/htc/opensense/widget/ImageViewTouchBase;->afterZoomAnimation(FF)V

    goto/16 :goto_0
.end method
