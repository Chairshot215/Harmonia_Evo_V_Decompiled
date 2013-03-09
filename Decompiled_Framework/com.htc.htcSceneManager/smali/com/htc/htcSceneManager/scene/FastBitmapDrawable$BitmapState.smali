.class final Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "FastBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcSceneManager/scene/FastBitmapDrawable;
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

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/16 v0, 0x77

    iput v0, p0, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mGravity:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0xa0

    iput v0, p0, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mTargetDensity:I

    iput-object p1, p0, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method constructor <init>(Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;)V
    .locals 2

    iget-object v0, p1, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    iget v0, p1, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mChangingConfigurations:I

    iput v0, p0, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mChangingConfigurations:I

    iget v0, p1, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mGravity:I

    iput v0, p0, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mGravity:I

    iget-object v0, p1, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iget-object v0, p1, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iget v0, p1, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mTargetDensity:I

    iput v0, p0, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mTargetDensity:I

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable;

    invoke-direct {v0, p0, v1, v1}, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable;-><init>(Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;Landroid/content/res/Resources;Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/htcSceneManager/scene/FastBitmapDrawable;-><init>(Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$BitmapState;Landroid/content/res/Resources;Lcom/htc/htcSceneManager/scene/FastBitmapDrawable$1;)V

    return-object v0
.end method
