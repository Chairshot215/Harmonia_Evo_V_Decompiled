.class final Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "FastBackgroundDrawble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/FastBackgroundDrawble;
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
    .line 500
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 494
    const/16 v0, 0x77

    iput v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mGravity:I

    .line 495
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 498
    const/16 v0, 0xa0

    iput v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTargetDensity:I

    .line 501
    iput-object p1, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 502
    return-void
.end method

.method constructor <init>(Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;)V
    .locals 2
    .parameter "bitmapState"

    .prologue
    .line 505
    iget-object v0, p1, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    .line 506
    iget v0, p1, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mChangingConfigurations:I

    iput v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mChangingConfigurations:I

    .line 507
    iget v0, p1, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mGravity:I

    iput v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mGravity:I

    .line 508
    iget-object v0, p1, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 509
    iget-object v0, p1, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 510
    iget v0, p1, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTargetDensity:I

    iput v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTargetDensity:I

    .line 511
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 512
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 526
    iget v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 516
    new-instance v0, Lcom/htc/opensense/widget/FastBackgroundDrawble;

    invoke-direct {v0, p0, v1, v1}, Lcom/htc/opensense/widget/FastBackgroundDrawble;-><init>(Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;Landroid/content/res/Resources;Lcom/htc/opensense/widget/FastBackgroundDrawble$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"

    .prologue
    .line 521
    new-instance v0, Lcom/htc/opensense/widget/FastBackgroundDrawble;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/opensense/widget/FastBackgroundDrawble;-><init>(Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;Landroid/content/res/Resources;Lcom/htc/opensense/widget/FastBackgroundDrawble$1;)V

    return-object v0
.end method
