.class public Lcom/htc/android/mail/widget/MailFrameView;
.super Landroid/widget/ImageView;
.source "MailFrameView.java"


# instance fields
.field private bitmapContent:Landroid/graphics/Bitmap;

.field private bitmapMask:Landroid/graphics/Bitmap;

.field private canvasContent:Landroid/graphics/Canvas;

.field private erasePaint:Landroid/graphics/Paint;

.field private imageFrameSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->erasePaint:Landroid/graphics/Paint;

    .line 28
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    .line 29
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    .line 30
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->canvasContent:Landroid/graphics/Canvas;

    .line 32
    const/16 v0, 0x4a

    iput v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->imageFrameSize:I

    .line 36
    invoke-direct {p0}, Lcom/htc/android/mail/widget/MailFrameView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->erasePaint:Landroid/graphics/Paint;

    .line 28
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    .line 29
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    .line 30
    iput-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->canvasContent:Landroid/graphics/Canvas;

    .line 32
    const/16 v0, 0x4a

    iput v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->imageFrameSize:I

    .line 41
    invoke-direct {p0}, Lcom/htc/android/mail/widget/MailFrameView;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/htc/android/mail/widget/MailFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20d008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->imageFrameSize:I

    .line 48
    const v0, 0x2080702

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailFrameView;->setBackgroundResource(I)V

    .line 49
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/htc/android/mail/widget/MailFrameView;->imageFrameSize:I

    iget v2, p0, Lcom/htc/android/mail/widget/MailFrameView;->imageFrameSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/widget/MailFrameView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-direct {p0}, Lcom/htc/android/mail/widget/MailFrameView;->initMaskEnvironment()V

    .line 51
    return-void
.end method

.method private initMaskEnvironment()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 55
    iget-object v5, p0, Lcom/htc/android/mail/widget/MailFrameView;->erasePaint:Landroid/graphics/Paint;

    if-nez v5, :cond_0

    .line 57
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/htc/android/mail/widget/MailFrameView;->erasePaint:Landroid/graphics/Paint;

    .line 58
    iget-object v5, p0, Lcom/htc/android/mail/widget/MailFrameView;->erasePaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 62
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    .line 64
    iget v5, p0, Lcom/htc/android/mail/widget/MailFrameView;->imageFrameSize:I

    iget v6, p0, Lcom/htc/android/mail/widget/MailFrameView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/android/mail/widget/MailFrameView;->mPaddingRight:I

    sub-int v1, v5, v6

    .line 65
    .local v1, contentWidth:I
    iget v5, p0, Lcom/htc/android/mail/widget/MailFrameView;->imageFrameSize:I

    iget v6, p0, Lcom/htc/android/mail/widget/MailFrameView;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/android/mail/widget/MailFrameView;->mPaddingBottom:I

    sub-int v0, v5, v6

    .line 67
    .local v0, contentHeight:I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 68
    .local v2, tempMaskBitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .local v3, tempMaskCanvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/htc/android/mail/widget/MailFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2080703

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 73
    .local v4, tempMaskDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v8, v8, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 74
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 76
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    .line 77
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    .end local v0           #contentHeight:I
    .end local v1           #contentWidth:I
    .end local v2           #tempMaskBitmap:Landroid/graphics/Bitmap;
    .end local v3           #tempMaskCanvas:Landroid/graphics/Canvas;
    .end local v4           #tempMaskDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v5, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    .line 82
    iget v5, p0, Lcom/htc/android/mail/widget/MailFrameView;->imageFrameSize:I

    iget v6, p0, Lcom/htc/android/mail/widget/MailFrameView;->imageFrameSize:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    .line 84
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/widget/MailFrameView;->canvasContent:Landroid/graphics/Canvas;

    if-nez v5, :cond_3

    .line 85
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/htc/android/mail/widget/MailFrameView;->canvasContent:Landroid/graphics/Canvas;

    .line 86
    :cond_3
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 92
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->canvasContent:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->canvasContent:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 95
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->canvasContent:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 97
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->canvasContent:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/htc/android/mail/widget/MailFrameView;->mPaddingLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/android/mail/widget/MailFrameView;->mPaddingTop:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/android/mail/widget/MailFrameView;->erasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 98
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 109
    invoke-direct {p0}, Lcom/htc/android/mail/widget/MailFrameView;->initMaskEnvironment()V

    .line 110
    invoke-virtual {p0}, Lcom/htc/android/mail/widget/MailFrameView;->invalidate()V

    .line 111
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 119
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    iput-object v1, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 128
    iput-object v1, p0, Lcom/htc/android/mail/widget/MailFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    .line 131
    :cond_1
    iput-object v1, p0, Lcom/htc/android/mail/widget/MailFrameView;->canvasContent:Landroid/graphics/Canvas;

    .line 132
    return-void
.end method
