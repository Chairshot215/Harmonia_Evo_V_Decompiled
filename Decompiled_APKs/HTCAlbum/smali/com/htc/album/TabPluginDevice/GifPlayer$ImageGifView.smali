.class Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;
.super Landroid/widget/ImageView;
.source "GifPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/GifPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageGifView"
.end annotation


# instance fields
.field private mShowIndicator:Z

.field private mVideoIndicator:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/GifPlayer;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 425
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->this$0:Lcom/htc/album/TabPluginDevice/GifPlayer;

    .line 426
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 421
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020022

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->mVideoIndicator:Landroid/graphics/Bitmap;

    .line 422
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->mShowIndicator:Z

    .line 427
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->mShowIndicator:Z

    .line 428
    return-void
.end method

.method private drawVideoIndicator(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->mVideoIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->mVideoIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->mVideoIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->mVideoIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 433
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 434
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->mShowIndicator:Z

    if-eqz v0, :cond_0

    .line 435
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->drawVideoIndicator(Landroid/graphics/Canvas;)V

    .line 436
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->mVideoIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->mVideoIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->mVideoIndicator:Landroid/graphics/Bitmap;

    .line 460
    :cond_0
    return-void
.end method

.method public showIndicator(Z)V
    .locals 0
    .parameter "bShow"

    .prologue
    .line 450
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/GifPlayer$ImageGifView;->mShowIndicator:Z

    .line 451
    return-void
.end method
