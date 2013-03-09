.class public Ljp/co/canonits/android/emojidisplayview/EmojiGifView;
.super Landroid/view/View;


# static fields
.field private static j:Ljp/co/canonits/android/emojidisplayview/e;


# instance fields
.field private a:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:I

.field private e:J

.field private f:I

.field private g:Z

.field private h:Ljava/io/InputStream;

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljp/co/canonits/android/emojidisplayview/e;

    invoke-direct {v0}, Ljp/co/canonits/android/emojidisplayview/e;-><init>()V

    sput-object v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->j:Ljp/co/canonits/android/emojidisplayview/e;

    invoke-virtual {v0}, Ljp/co/canonits/android/emojidisplayview/e;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->g:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->i:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->g:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->i:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->g:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;I)V
    .locals 0

    iput p1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->c:I

    return-void
.end method

.method static synthetic a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;J)V
    .locals 0

    iput-wide p1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->e:J

    return-void
.end method

.method static synthetic a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;)V
    .locals 0

    iput-object p1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    return-void
.end method

.method static synthetic a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->g:Z

    return-void
.end method

.method static synthetic b(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->h:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic b(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;I)V
    .locals 0

    iput p1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->d:I

    return-void
.end method

.method static synthetic c(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)I
    .locals 1

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->c:I

    return v0
.end method

.method static synthetic d(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)I
    .locals 1

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->d:I

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->getWidth()I

    move-result v0

    iget-object v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->getHeight()I

    move-result v1

    iget-object v2, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->b:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v2, v0, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->e:J

    iget-object v4, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    iget v5, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->f:I

    invoke-virtual {v4, v5}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->getDelay(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    iget-wide v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->e:J

    iget-object v2, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    iget v3, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->f:I

    invoke-virtual {v2, v3}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->getDelay(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->e:J

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->f:I

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->f:I

    iget-object v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    invoke-virtual {v1}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->getFrameCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->f:I

    :cond_3
    iget-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    iget v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->f:I

    invoke-virtual {v0, v1}, Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->invalidate()V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    const-wide/high16 v3, 0x3ff8

    iget v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->c:I

    int-to-double v0, v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iget v1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->d:I

    int-to-double v1, v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->setMeasuredDimension(II)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->a:Ljp/co/canonits/android/emojidisplayview/EmojiAnimationGifDecoder;

    iput-object v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 1

    iput-object p1, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->h:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->release()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->g:Z

    const/4 v0, 0x0

    iput v0, p0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->f:I

    invoke-static {p0}, Ljp/co/canonits/android/emojidisplayview/e;->a(Ljp/co/canonits/android/emojidisplayview/EmojiGifView;)V

    sget-object v0, Ljp/co/canonits/android/emojidisplayview/EmojiGifView;->j:Ljp/co/canonits/android/emojidisplayview/e;

    invoke-virtual {v0}, Ljp/co/canonits/android/emojidisplayview/e;->run()V

    return-void
.end method
