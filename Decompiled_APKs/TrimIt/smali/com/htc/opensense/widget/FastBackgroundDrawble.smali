.class public Lcom/htc/opensense/widget/FastBackgroundDrawble;
.super Landroid/graphics/drawable/Drawable;
.source "FastBackgroundDrawble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/FastBackgroundDrawble$1;,
        Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAINT_FLAGS:I = 0x2

.field public static mbUsingFastDrawble:Z


# instance fields
.field private mApplyGravity:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

.field private mBitmapWidth:I

.field private final mDstRect:Landroid/graphics/Rect;

.field private mMutated:Z

.field private mRebuildShader:Z

.field private mTargetDensity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mbUsingFastDrawble:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mDstRect:Landroid/graphics/Rect;

    .line 84
    new-instance v1, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "res"

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mDstRect:Landroid/graphics/Rect;

    .line 92
    new-instance v1, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    .line 93
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget v1, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mTargetDensity:I

    iput v1, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTargetDensity:I

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "res"
    .parameter "bitmap"

    .prologue
    .line 112
    new-instance v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    invoke-direct {v0, p2}, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, p1}, Lcom/htc/opensense/widget/FastBackgroundDrawble;-><init>(Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;Landroid/content/res/Resources;)V

    .line 113
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget v1, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mTargetDensity:I

    iput v1, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTargetDensity:I

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    .locals 3
    .parameter "res"
    .parameter "is"

    .prologue
    .line 163
    new-instance v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/opensense/widget/FastBackgroundDrawble;-><init>(Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;Landroid/content/res/Resources;)V

    .line 164
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget v1, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mTargetDensity:I

    iput v1, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTargetDensity:I

    .line 165
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 166
    const-string v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 3
    .parameter "res"
    .parameter "filepath"

    .prologue
    .line 135
    new-instance v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/opensense/widget/FastBackgroundDrawble;-><init>(Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;Landroid/content/res/Resources;)V

    .line 136
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget v1, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mTargetDensity:I

    iput v1, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTargetDensity:I

    .line 137
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 138
    const-string v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    invoke-direct {v0, p1}, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/opensense/widget/FastBackgroundDrawble;-><init>(Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;Landroid/content/res/Resources;)V

    .line 105
    return-void
.end method

.method private constructor <init>(Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "state"
    .parameter "res"

    .prologue
    .line 530
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mDstRect:Landroid/graphics/Rect;

    .line 531
    iput-object p1, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    .line 532
    if-eqz p2, :cond_0

    .line 533
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mTargetDensity:I

    .line 539
    :goto_0
    iget-object v0, p1, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/FastBackgroundDrawble;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 540
    return-void

    .line 534
    :cond_0
    if-eqz p1, :cond_1

    .line 535
    iget v0, p1, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTargetDensity:I

    iput v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mTargetDensity:I

    goto :goto_0

    .line 537
    :cond_1
    const/16 v0, 0xa0

    iput v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mTargetDensity:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;Landroid/content/res/Resources;Lcom/htc/opensense/widget/FastBackgroundDrawble$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/FastBackgroundDrawble;-><init>(Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/opensense/widget/FastBackgroundDrawble;-><init>(Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;Landroid/content/res/Resources;)V

    .line 153
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 154
    const-string v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "filepath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    new-instance v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/opensense/widget/FastBackgroundDrawble;-><init>(Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;Landroid/content/res/Resources;)V

    .line 125
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 126
    const-string v0, "BitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BitmapDrawable cannot decode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method

.method private computeBitmapSize()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapWidth:I

    .line 181
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapHeight:I

    .line 182
    return-void
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmap:Landroid/graphics/Bitmap;

    .line 186
    if-eqz p1, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/htc/opensense/widget/FastBackgroundDrawble;->computeBitmapSize()V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapHeight:I

    iput v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapWidth:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 327
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmap:Landroid/graphics/Bitmap;

    .line 328
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 329
    iget-object v3, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    .line 330
    .local v3, state:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;
    iget-boolean v6, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mRebuildShader:Z

    if-eqz v6, :cond_0

    .line 331
    iget-object v4, v3, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 332
    .local v4, tmx:Landroid/graphics/Shader$TileMode;
    iget-object v5, v3, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 334
    .local v5, tmy:Landroid/graphics/Shader$TileMode;
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    .line 335
    iget-object v6, v3, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 342
    .end local v4           #tmx:Landroid/graphics/Shader$TileMode;
    .end local v5           #tmy:Landroid/graphics/Shader$TileMode;
    :goto_0
    iput-boolean v12, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mRebuildShader:Z

    .line 343
    iget-object v6, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/FastBackgroundDrawble;->copyBounds(Landroid/graphics/Rect;)V

    .line 346
    :cond_0
    iget-object v6, v3, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    .line 348
    .local v2, shader:Landroid/graphics/Shader;
    if-nez v2, :cond_7

    .line 349
    iget-boolean v6, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mApplyGravity:Z

    if-eqz v6, :cond_1

    .line 350
    iget v6, v3, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mGravity:I

    iget v7, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapWidth:I

    iget v8, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapHeight:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FastBackgroundDrawble;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mDstRect:Landroid/graphics/Rect;

    invoke-static {v6, v7, v8, v9, v10}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 352
    iput-boolean v12, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mApplyGravity:Z

    .line 357
    :cond_1
    sget-boolean v6, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mbUsingFastDrawble:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 359
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 360
    iget-object v6, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v11, v6, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 382
    .end local v2           #shader:Landroid/graphics/Shader;
    .end local v3           #state:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;
    :cond_2
    :goto_1
    return-void

    .line 337
    .restart local v3       #state:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;
    .restart local v4       #tmx:Landroid/graphics/Shader$TileMode;
    .restart local v5       #tmy:Landroid/graphics/Shader$TileMode;
    :cond_3
    new-instance v1, Landroid/graphics/BitmapShader;

    if-nez v4, :cond_4

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .end local v4           #tmx:Landroid/graphics/Shader$TileMode;
    :cond_4
    if-nez v5, :cond_5

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .end local v5           #tmy:Landroid/graphics/Shader$TileMode;
    :cond_5
    invoke-direct {v1, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 340
    .local v1, s:Landroid/graphics/Shader;
    iget-object v6, v3, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 367
    .end local v1           #s:Landroid/graphics/Shader;
    .restart local v2       #shader:Landroid/graphics/Shader;
    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 368
    iget-object v6, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mDstRect:Landroid/graphics/Rect;

    iget-object v7, v3, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 374
    :cond_7
    iget-boolean v6, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mApplyGravity:Z

    if-eqz v6, :cond_8

    .line 375
    iget-object v6, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FastBackgroundDrawble;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 376
    iput-boolean v12, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mApplyGravity:Z

    .line 379
    :cond_8
    iget-object v6, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mDstRect:Landroid/graphics/Rect;

    iget-object v7, v3, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 306
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget v1, v1, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mChangingConfigurations:I

    .line 488
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget v0, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mGravity:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    const/4 v1, -0x3

    .line 476
    iget-object v2, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget v2, v2, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mGravity:I

    const/16 v3, 0x77

    if-eq v2, v3, :cond_1

    .line 480
    :cond_0
    :goto_0
    return v1

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmap:Landroid/graphics/Bitmap;

    .line 480
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget-object v2, v2, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    if-lt v2, v3, :cond_0

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 412
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 414
    sget-object v5, Lcom/android/internal/R$styleable;->BitmapDrawable:[I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 417
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 419
    .local v2, id:I
    if-nez v2, :cond_0

    .line 420
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": <bitmap> requires a valid src attribute"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 423
    :cond_0
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 424
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 425
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": <bitmap> requires a valid src attribute"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 428
    :cond_1
    iget-object v5, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iput-object v1, v5, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 429
    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/FastBackgroundDrawble;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 430
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/FastBackgroundDrawble;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 432
    iget-object v5, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget-object v3, v5, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 433
    .local v3, paint:Landroid/graphics/Paint;
    const/4 v5, 0x2

    invoke-virtual {v3}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 436
    const/4 v5, 0x3

    invoke-virtual {v3}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 439
    const/4 v5, 0x4

    invoke-virtual {v3}, Landroid/graphics/Paint;->isDither()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 442
    const/16 v5, 0x77

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/FastBackgroundDrawble;->setGravity(I)V

    .line 445
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 447
    .local v4, tileMode:I
    if-eq v4, v7, :cond_2

    .line 448
    packed-switch v4, :pswitch_data_0

    .line 461
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 462
    return-void

    .line 450
    :pswitch_0
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v5, v6}, Lcom/htc/opensense/widget/FastBackgroundDrawble;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 453
    :pswitch_1
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v5, v6}, Lcom/htc/opensense/widget/FastBackgroundDrawble;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 456
    :pswitch_2
    sget-object v5, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v5, v6}, Lcom/htc/opensense/widget/FastBackgroundDrawble;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 402
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 403
    new-instance v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget-object v1, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;-><init>(Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mMutated:Z

    .line 406
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mApplyGravity:Z

    .line 314
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 387
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .parameter "aa"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 266
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 392
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .parameter "dither"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 276
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 271
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iput p1, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mGravity:I

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mApplyGravity:Z

    .line 262
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .parameter "density"

    .prologue
    .line 235
    if-nez p1, :cond_0

    const/16 p1, 0xa0

    .end local p1
    :cond_0
    iput p1, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mTargetDensity:I

    .line 237
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/htc/opensense/widget/FastBackgroundDrawble;->computeBitmapSize()V

    .line 240
    :cond_1
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/FastBackgroundDrawble;->setTargetDensity(I)V

    .line 206
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "metrics"

    .prologue
    .line 219
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mTargetDensity:I

    .line 220
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/htc/opensense/widget/FastBackgroundDrawble;->computeBitmapSize()V

    .line 223
    :cond_0
    return-void
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/widget/FastBackgroundDrawble;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 288
    return-void
.end method

.method public setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 2
    .parameter "xmode"
    .parameter "ymode"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    .line 296
    .local v0, state:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;
    iget-object v1, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    if-ne v1, p1, :cond_0

    iget-object v1, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-eq v1, p2, :cond_1

    .line 298
    :cond_0
    iput-object p1, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 299
    iput-object p2, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 300
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mRebuildShader:Z

    .line 302
    :cond_1
    return-void
.end method

.method public final setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/opensense/widget/FastBackgroundDrawble;->mBitmapState:Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/FastBackgroundDrawble$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v0, p1}, Lcom/htc/opensense/widget/FastBackgroundDrawble;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 292
    return-void
.end method
