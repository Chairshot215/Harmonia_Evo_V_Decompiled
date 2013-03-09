.class public Lcom/google/android/voicesearch/actioneditor/SoundIndicator;
.super Landroid/widget/ImageView;
.source "SoundIndicator.java"


# instance fields
.field private mDrawFrame:Ljava/lang/Runnable;

.field private mGlow:Landroid/graphics/drawable/BitmapDrawable;

.field private mHandler:Landroid/os/Handler;

.field private volatile mLevel:F

.field private mPaint:Landroid/graphics/Paint;

.field private mSize:F

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mPaint:Landroid/graphics/Paint;

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    .line 58
    new-instance v1, Lcom/google/android/voicesearch/actioneditor/SoundIndicator$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator$1;-><init>(Lcom/google/android/voicesearch/actioneditor/SoundIndicator;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mDrawFrame:Ljava/lang/Runnable;

    .line 73
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mHandler:Landroid/os/Handler;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mSize:F

    .line 77
    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mStrokeWidth:F

    .line 79
    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mGlow:Landroid/graphics/drawable/BitmapDrawable;

    .line 80
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->setGlowBounds(II)V

    .line 82
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f080011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/actioneditor/SoundIndicator;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mDrawFrame:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/actioneditor/SoundIndicator;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setGlowBounds(II)V
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mGlow:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 91
    .local v1, glowWidth:I
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mGlow:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 93
    .local v0, glowHeight:I
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mGlow:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v3, Landroid/graphics/Rect;

    div-int/lit8 v4, p1, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v5, p2, 0x2

    div-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v6, p1, 0x2

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    div-int/lit8 v7, p2, 0x2

    div-int/lit8 v8, v0, 0x2

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 98
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/high16 v9, 0x4000

    .line 108
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->getWidth()I

    move-result v3

    .line 111
    .local v3, width:I
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->getHeight()I

    move-result v1

    .line 113
    .local v1, height:I
    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mGlow:Landroid/graphics/drawable/BitmapDrawable;

    iget v5, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    float-to-double v5, v5

    const-wide/high16 v7, 0x3fe0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    const-wide v7, 0x406fe00000000000L

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 114
    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mGlow:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    const/16 v0, 0xc

    .line 118
    .local v0, alphaConstant:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    int-to-float v4, v2

    iget v5, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    const/high16 v6, 0x4120

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 119
    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mPaint:Landroid/graphics/Paint;

    mul-int v5, v0, v2

    add-int/lit8 v5, v5, 0x7f

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 120
    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mSize:F

    iget v7, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mStrokeWidth:F

    int-to-float v8, v2

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v6, v9

    iget v7, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mStrokeWidth:F

    div-float/2addr v7, v9

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->setGlowBounds(II)V

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 104
    return-void
.end method

.method public setRmsdB(F)V
    .locals 3
    .parameter "rmsdB"

    .prologue
    .line 127
    const/high16 v1, 0x40e0

    sub-float v1, p1, v1

    const/high16 v2, 0x41a0

    div-float v0, v1, v2

    .line 128
    .local v0, level:F
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 130
    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 131
    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    sub-float v1, v0, v1

    const v2, 0x3f666666

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    sub-float v1, v0, v1

    const v2, 0x3ecccccd

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mLevel:F

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SoundIndicator;->mDrawFrame:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method
