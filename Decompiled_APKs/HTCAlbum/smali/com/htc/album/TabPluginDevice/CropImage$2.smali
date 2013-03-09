.class Lcom/htc/album/TabPluginDevice/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFaces:[Landroid/media/FaceDetector$Face;

.field mImageMatrix:Landroid/graphics/Matrix;

.field mNumFaces:I

.field mScale:F

.field mUnion:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/CropImage;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/CropImage;)V
    .locals 1
    .parameter

    .prologue
    .line 1518
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1519
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    .line 1520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mUnion:Landroid/graphics/RectF;

    .line 1522
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mFaces:[Landroid/media/FaceDetector$Face;

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/album/TabPluginDevice/CropImage$2;Landroid/media/FaceDetector$Face;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1518
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/CropImage$2;->handleFace(Landroid/media/FaceDetector$Face;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/album/TabPluginDevice/CropImage$2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1518
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage$2;->makeDefault()V

    return-void
.end method

.method private handleFace(Landroid/media/FaceDetector$Face;)V
    .locals 13
    .parameter "f"

    .prologue
    .line 1526
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    .line 1528
    .local v7, midPoint:Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    iget v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    mul-int/lit8 v10, v1, 0x2

    .line 1529
    .local v10, r:I
    invoke-virtual {p1, v7}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    .line 1530
    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->x:F

    .line 1531
    iget v1, v7, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    mul-float/2addr v1, v4

    iput v1, v7, Landroid/graphics/PointF;->y:F

    .line 1533
    iget v1, v7, Landroid/graphics/PointF;->x:F

    float-to-int v8, v1

    .line 1534
    .local v8, midX:I
    iget v1, v7, Landroid/graphics/PointF;->y:F

    float-to-int v9, v1

    .line 1536
    .local v9, midY:I
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage$2;->makeHighlightView()Lcom/htc/album/TabPluginDevice/HighlightView;

    move-result-object v0

    .line 1538
    .local v0, hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 1539
    .local v11, width:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1541
    .local v6, height:I
    new-instance v2, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v11, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1543
    .local v2, imageRect:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v8

    int-to-float v4, v9

    int-to-float v5, v8

    int-to-float v12, v9

    invoke-direct {v3, v1, v4, v5, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1544
    .local v3, faceRect:Landroid/graphics/RectF;
    neg-int v1, v10

    int-to-float v1, v1

    neg-int v4, v10

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1545
    iget v1, v3, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 1546
    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1548
    :cond_0
    iget v1, v3, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 1549
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1551
    :cond_1
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 1552
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1554
    :cond_2
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    .line 1555
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1557
    :cond_3
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$900(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v5}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 1559
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mUnion:Landroid/graphics/RectF;

    if-nez v1, :cond_5

    .line 1560
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mUnion:Landroid/graphics/RectF;

    .line 1565
    :goto_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->add(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    .line 1566
    return-void

    .line 1557
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 1562
    :cond_5
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mUnion:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method private makeDefault()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 1573
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage$2;->makeHighlightView()Lcom/htc/album/TabPluginDevice/HighlightView;

    move-result-object v0

    .line 1575
    .local v0, hv:Lcom/htc/album/TabPluginDevice/HighlightView;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 1576
    .local v9, width:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 1578
    .local v8, height:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1601
    .local v2, imageRect:Landroid/graphics/Rect;
    move v7, v9

    .line 1602
    .local v7, cropWidth:I
    move v6, v8

    .line 1604
    .local v6, cropHeight:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1605
    int-to-float v1, v9

    int-to-float v4, v8

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v4

    int-to-float v4, v4

    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v12}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v4, v12

    cmpg-float v1, v1, v4

    if-gez v1, :cond_4

    .line 1606
    move v7, v9

    .line 1607
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v1

    mul-int/2addr v1, v9

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v4

    div-int v6, v1, v4

    .line 1629
    :cond_0
    :goto_0
    mul-int/lit8 v1, v7, 0x4

    div-int/lit8 v7, v1, 0x5

    .line 1630
    mul-int/lit8 v1, v6, 0x4

    div-int/lit8 v6, v1, 0x5

    .line 1631
    if-gtz v7, :cond_1

    .line 1632
    const/4 v7, 0x1

    .line 1633
    :cond_1
    if-gtz v6, :cond_2

    .line 1634
    const/4 v6, 0x1

    .line 1636
    :cond_2
    sub-int v1, v9, v7

    div-int/lit8 v10, v1, 0x2

    .line 1637
    .local v10, x:I
    sub-int v1, v8, v6

    div-int/lit8 v11, v1, 0x2

    .line 1639
    .local v11, y:I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v10

    int-to-float v4, v11

    add-int v12, v10, v7

    int-to-float v12, v12

    add-int v13, v11, v6

    int-to-float v13, v13

    invoke-direct {v3, v1, v4, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1640
    .local v3, cropRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mCircleCrop:Z
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$900(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v4

    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v12}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v12}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v12

    if-eqz v12, :cond_3

    const/4 v5, 0x1

    :cond_3
    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 1641
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-virtual {v1, v0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->add(Lcom/htc/album/TabPluginDevice/HighlightView;)V

    .line 1642
    return-void

    .line 1610
    .end local v3           #cropRect:Landroid/graphics/RectF;
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_4
    move v6, v8

    .line 1611
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectX:I
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2300(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v1

    mul-int/2addr v1, v8

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAspectY:I
    invoke-static {v4}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2400(Lcom/htc/album/TabPluginDevice/CropImage;)I

    move-result v4

    div-int v7, v1, v4

    goto :goto_0
.end method

.method private makeHighlightView()Lcom/htc/album/TabPluginDevice/HighlightView;
    .locals 2

    .prologue
    .line 1569
    new-instance v0, Lcom/htc/album/TabPluginDevice/HighlightView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-direct {v0, v1}, Lcom/htc/album/TabPluginDevice/HighlightView;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private prepareBitmap()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1645
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1646
    const/4 v7, 0x0

    .line 1657
    :goto_0
    return-object v7

    .line 1650
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_1

    .line 1651
    const/high16 v0, 0x4380

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    .line 1653
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1654
    .local v5, matrix:Landroid/graphics/Matrix;
    iget v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    iget v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1655
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1657
    .local v7, faceBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1661
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mImageMatrix:Landroid/graphics/Matrix;

    .line 1662
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/CropImage$2;->prepareBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1664
    .local v1, faceBitmap:Landroid/graphics/Bitmap;
    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mScale:F

    .line 1665
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mDoFaceDetection:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2500(Lcom/htc/album/TabPluginDevice/CropImage;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1666
    new-instance v0, Landroid/media/FaceDetector;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mFaces:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    invoke-direct {v0, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 1668
    .local v0, detector:Landroid/media/FaceDetector;
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mFaces:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v0, v1, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v2

    iput v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->mNumFaces:I

    .line 1678
    .end local v0           #detector:Landroid/media/FaceDetector;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mActivityState:S
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2600(Lcom/htc/album/TabPluginDevice/CropImage;)S

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 1706
    :goto_1
    return-void

    .line 1672
    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1673
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1674
    const/4 v1, 0x0

    goto :goto_0

    .line 1681
    :cond_2
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    new-instance v3, Lcom/htc/album/TabPluginDevice/CropImage$2$1;

    invoke-direct {v3, p0}, Lcom/htc/album/TabPluginDevice/CropImage$2$1;-><init>(Lcom/htc/album/TabPluginDevice/CropImage$2;)V

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAddHVRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2702(Lcom/htc/album/TabPluginDevice/CropImage;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1705
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v2, v2, Lcom/htc/album/TabPluginDevice/CropImage;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/CropImage$2;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mAddHVRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2700(Lcom/htc/album/TabPluginDevice/CropImage;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
