.class public Lcom/htc/home/personalize/widget/PhotoAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoAdapter.java"


# instance fields
.field private mPhotoBitmaps:[Landroid/graphics/Bitmap;

.field private mViewTouch:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mPhotoBitmaps:[Landroid/graphics/Bitmap;

    .line 36
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mViewTouch:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->clear()V

    .line 109
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mPhotoBitmaps:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mPhotoBitmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mPhotoBitmaps:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mPhotoBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 73
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 83
    check-cast p2, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    .end local p2
    iput-object p2, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mViewTouch:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    .line 84
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mPhotoBitmaps:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mViewTouch:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    .line 97
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mPhotoBitmaps:[Landroid/graphics/Bitmap;

    aget-object v7, v0, p1

    .line 89
    .local v7, bmp:Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    .line 90
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mViewTouch:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mViewTouch:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    const-string v1, "image/jpeg"

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setImageInfo(Ljava/lang/String;IIIZZ)V

    .line 96
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mViewTouch:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    invoke-virtual {v0, v7, v8, v8}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 97
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mViewTouch:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 101
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mPhotoBitmaps:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mViewTouch:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    iget-object v1, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mPhotoBitmaps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, v3, v3}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_0
.end method

.method public setPhotoBitmaps([Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/home/personalize/widget/PhotoAdapter;->mPhotoBitmaps:[Landroid/graphics/Bitmap;

    .line 40
    return-void
.end method
