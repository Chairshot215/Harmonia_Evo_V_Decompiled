.class Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GalleryImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/GalleryImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FastBitmapDrawable"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field final synthetic this$0:Lcom/htc/opensense/widget/GalleryImageView;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/widget/GalleryImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter "b"

    .prologue
    .line 555
    iput-object p1, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->this$0:Lcom/htc/opensense/widget/GalleryImageView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 556
    invoke-virtual {p0, p2}, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 557
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->this$0:Lcom/htc/opensense/widget/GalleryImageView;

    #calls: Lcom/htc/opensense/widget/GalleryImageView;->getBitmapDrawDes()Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/htc/opensense/widget/GalleryImageView;->access$000(Lcom/htc/opensense/widget/GalleryImageView;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->this$0:Lcom/htc/opensense/widget/GalleryImageView;

    #calls: Lcom/htc/opensense/widget/GalleryImageView;->getBitmapDrawDes()Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/htc/opensense/widget/GalleryImageView;->access$000(Lcom/htc/opensense/widget/GalleryImageView;)Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 579
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->mBitmapHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 583
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 588
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 560
    iput-object p1, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 561
    iget-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->mBitmapWidth:I

    .line 563
    iget-object v0, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->mBitmapHeight:I

    .line 568
    :goto_0
    return-void

    .line 565
    :cond_0
    iput v1, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->mBitmapWidth:I

    .line 566
    iput v1, p0, Lcom/htc/opensense/widget/GalleryImageView$FastBitmapDrawable;->mBitmapHeight:I

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 592
    return-void
.end method
