.class Lcom/htc/widget/HeaderBarImage$ImageFrameView;
.super Landroid/widget/ImageView;
.source "HeaderBarImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HeaderBarImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageFrameView"
.end annotation


# instance fields
.field private bitmapContent:Landroid/graphics/Bitmap;

.field private bitmapMask:Landroid/graphics/Bitmap;

.field private canvasContent:Landroid/graphics/Canvas;

.field private erasePaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/htc/widget/HeaderBarImage;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HeaderBarImage;Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->this$0:Lcom/htc/widget/HeaderBarImage;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->erasePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->canvasContent:Landroid/graphics/Canvas;

    const v0, 0x2080702

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->setBackgroundResource(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I
    invoke-static {p1}, Lcom/htc/widget/HeaderBarImage;->access$000(Lcom/htc/widget/HeaderBarImage;)I

    move-result v1

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I
    invoke-static {p1}, Lcom/htc/widget/HeaderBarImage;->access$000(Lcom/htc/widget/HeaderBarImage;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->initMaskEnvironment()V

    return-void
.end method

.method private initMaskEnvironment()V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #calls: Lcom/htc/widget/HeaderBarImage;->enableMaskBitmap()Z
    invoke-static {v5}, Lcom/htc/widget/HeaderBarImage;->access$100(Lcom/htc/widget/HeaderBarImage;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->erasePaint:Landroid/graphics/Paint;

    if-nez v5, :cond_2

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->erasePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->erasePaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I
    invoke-static {v5}, Lcom/htc/widget/HeaderBarImage;->access$000(Lcom/htc/widget/HeaderBarImage;)I

    move-result v5

    iget v6, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingRight:I

    sub-int v1, v5, v6

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I
    invoke-static {v5}, Lcom/htc/widget/HeaderBarImage;->access$000(Lcom/htc/widget/HeaderBarImage;)I

    move-result v5

    iget v6, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingBottom:I

    sub-int v0, v5, v6

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2080703

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v8, v8, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I
    invoke-static {v5}, Lcom/htc/widget/HeaderBarImage;->access$000(Lcom/htc/widget/HeaderBarImage;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->this$0:Lcom/htc/widget/HeaderBarImage;

    #getter for: Lcom/htc/widget/HeaderBarImage;->imageFrameSize:I
    invoke-static {v6}, Lcom/htc/widget/HeaderBarImage;->access$000(Lcom/htc/widget/HeaderBarImage;)I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->canvasContent:Landroid/graphics/Canvas;

    if-nez v5, :cond_0

    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->canvasContent:Landroid/graphics/Canvas;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->canvasContent:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->canvasContent:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->canvasContent:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->canvasContent:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->mPaddingTop:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->erasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->initMaskEnvironment()V

    invoke-virtual {p0}, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapMask:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->bitmapContent:Landroid/graphics/Bitmap;

    :cond_1
    iput-object v1, p0, Lcom/htc/widget/HeaderBarImage$ImageFrameView;->canvasContent:Landroid/graphics/Canvas;

    return-void
.end method
