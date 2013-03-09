.class final Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ScaleFastBitmapDrawble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;
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
    .line 535
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 529
    const/16 v0, 0x77

    iput v0, p0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mGravity:I

    .line 530
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 533
    const/16 v0, 0xa0

    iput v0, p0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mTargetDensity:I

    .line 536
    iput-object p1, p0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 537
    return-void
.end method

.method constructor <init>(Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;)V
    .locals 2
    .parameter "bitmapState"

    .prologue
    .line 540
    iget-object v0, p1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    .line 541
    iget v0, p1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mChangingConfigurations:I

    iput v0, p0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mChangingConfigurations:I

    .line 542
    iget v0, p1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mGravity:I

    iput v0, p0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mGravity:I

    .line 543
    iget-object v0, p1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 544
    iget-object v0, p1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 545
    iget v0, p1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mTargetDensity:I

    iput v0, p0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mTargetDensity:I

    .line 546
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 547
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 551
    new-instance v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;

    invoke-direct {v0, p0, v1, v1}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;-><init>(Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;Landroid/content/res/Resources;Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"

    .prologue
    .line 556
    new-instance v0, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble;-><init>(Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$BitmapState;Landroid/content/res/Resources;Lcom/htc/opensense2/widget/ScaleFastBitmapDrawble$1;)V

    return-object v0
.end method
