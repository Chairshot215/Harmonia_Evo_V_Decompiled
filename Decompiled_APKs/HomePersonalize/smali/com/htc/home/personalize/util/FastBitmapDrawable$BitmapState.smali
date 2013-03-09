.class final Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "FastBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/util/FastBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BitmapState"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mChangingConfigurations:I

.field mGravity:I

.field mPaint:Landroid/graphics/Paint;

.field mTargetDensity:I

.field mTileModeX:Landroid/graphics/Shader$TileMode;

.field mTileModeY:Landroid/graphics/Shader$TileMode;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 498
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 492
    const/16 v0, 0x77

    iput v0, p0, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mGravity:I

    .line 493
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 496
    const/16 v0, 0xa0

    iput v0, p0, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mTargetDensity:I

    .line 499
    iput-object p1, p0, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 500
    return-void
.end method

.method constructor <init>(Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;)V
    .locals 2
    .parameter "bitmapState"

    .prologue
    .line 503
    iget-object v0, p1, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    .line 504
    iget v0, p1, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mChangingConfigurations:I

    iput v0, p0, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mChangingConfigurations:I

    .line 505
    iget v0, p1, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mGravity:I

    iput v0, p0, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mGravity:I

    .line 506
    iget-object v0, p1, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 507
    iget-object v0, p1, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 508
    iget v0, p1, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mTargetDensity:I

    iput v0, p0, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mTargetDensity:I

    .line 509
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 510
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 514
    new-instance v0, Lcom/htc/home/personalize/util/FastBitmapDrawable;

    invoke-direct {v0, p0, v1, v1}, Lcom/htc/home/personalize/util/FastBitmapDrawable;-><init>(Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;Landroid/content/res/Resources;Lcom/htc/home/personalize/util/FastBitmapDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"

    .prologue
    .line 519
    new-instance v0, Lcom/htc/home/personalize/util/FastBitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/home/personalize/util/FastBitmapDrawable;-><init>(Lcom/htc/home/personalize/util/FastBitmapDrawable$BitmapState;Landroid/content/res/Resources;Lcom/htc/home/personalize/util/FastBitmapDrawable$1;)V

    return-object v0
.end method
