.class Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;
.super Lcom/jme3/asset/AndroidImageInfo;
.source "DrawingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/exploreactivity/DrawingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformingImageInfo"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field final mFlipVertical:Z

.field final synthetic this$0:Lcom/google/android/finsky/exploreactivity/DrawingUtils;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter
    .parameter "bitmap"
    .parameter "flipVertical"

    .prologue
    .line 653
    iput-object p1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;->this$0:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    .line 654
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jme3/asset/AndroidImageInfo;-><init>(Lcom/jme3/asset/AssetInfo;)V

    .line 655
    iput-object p2, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 656
    iput-boolean p3, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;->mFlipVertical:Z

    .line 657
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/graphics/Bitmap;ZLcom/google/android/finsky/exploreactivity/DrawingUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 649
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;-><init>(Lcom/google/android/finsky/exploreactivity/DrawingUtils;Landroid/graphics/Bitmap;Z)V

    return-void
.end method


# virtual methods
.method protected loadBitmap()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 661
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;->mFlipVertical:Z

    if-eqz v0, :cond_0

    .line 664
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 665
    .local v6, flipMat:Landroid/graphics/Matrix;
    const/high16 v0, 0x3f80

    const/high16 v1, -0x4080

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 666
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;->this$0:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->transformBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 668
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;->this$0:Lcom/google/android/finsky/exploreactivity/DrawingUtils;

    iget-object v1, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/exploreactivity/DrawingUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 672
    .end local v6           #flipMat:Landroid/graphics/Matrix;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 673
    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/DrawingUtils$TransformingImageInfo;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
