.class public Lcom/htc/launcher/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/Rect;

.field private mFillParent:Z

.field private mSrcRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    iput-boolean v2, p0, Lcom/htc/launcher/FastBitmapDrawable;->mFillParent:Z

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 34
    iput-object p1, p0, Lcom/htc/launcher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/htc/launcher/FastBitmapDrawable;->setBounds(IIII)V

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 4
    .parameter "b"
    .parameter "fillParent"

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    iput-boolean v3, p0, Lcom/htc/launcher/FastBitmapDrawable;->mFillParent:Z

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 40
    iput-object p1, p0, Lcom/htc/launcher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 41
    iput-boolean p2, p0, Lcom/htc/launcher/FastBitmapDrawable;->mFillParent:Z

    .line 43
    iget-boolean v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mFillParent:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/launcher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/launcher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/htc/launcher/FastBitmapDrawable;->setBounds(IIII)V

    .line 47
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 50
    iget-boolean v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mFillParent:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 52
    iget-object v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/launcher/FastBitmapDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/htc/launcher/FastBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDstRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mFillParent:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/launcher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 70
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 74
    return-void
.end method
