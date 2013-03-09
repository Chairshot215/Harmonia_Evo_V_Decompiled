.class public Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;
.super Landroid/graphics/drawable/Drawable;
.source "ScaleFastBitmapDrawble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$1;,
        Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;,
        Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAINT_FLAGS:I = 0x2

.field public static mUsingFastDrawble:J


# instance fields
.field private mApplyGravity:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

.field private mBitmapWidth:I

.field private final mDstRect:Landroid/graphics/Rect;

.field private mMutated:Z

.field private mRebuildShader:Z

.field private mTargetDensity:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mUsingFastDrawble:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mDstRect:Landroid/graphics/Rect;

    .line 125
    new-instance v1, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "res"

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mDstRect:Landroid/graphics/Rect;

    .line 133
    new-instance v1, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    .line 134
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget v1, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mTargetDensity:I

    iput v1, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mTargetDensity:I

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "res"
    .parameter "bitmap"

    .prologue
    .line 153
    new-instance v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    invoke-direct {v0, p2}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, p1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;-><init>(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;Landroid/content/res/Resources;)V

    .line 154
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget v1, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mTargetDensity:I

    iput v1, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mTargetDensity:I

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    .locals 3
    .parameter "res"
    .parameter "is"

    .prologue
    .line 204
    new-instance v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;-><init>(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;Landroid/content/res/Resources;)V

    .line 205
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget v1, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mTargetDensity:I

    iput v1, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mTargetDensity:I

    .line 206
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 207
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

    .line 210
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 3
    .parameter "res"
    .parameter "filepath"

    .prologue
    .line 176
    new-instance v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;-><init>(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;Landroid/content/res/Resources;)V

    .line 177
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget v1, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mTargetDensity:I

    iput v1, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mTargetDensity:I

    .line 178
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 179
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

    .line 182
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    invoke-direct {v0, p1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;-><init>(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;Landroid/content/res/Resources;)V

    .line 146
    return-void
.end method

.method private constructor <init>(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "state"
    .parameter "res"

    .prologue
    .line 570
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mDstRect:Landroid/graphics/Rect;

    .line 571
    iput-object p1, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    .line 572
    if-eqz p2, :cond_0

    .line 573
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mTargetDensity:I

    .line 579
    :goto_0
    iget-object v0, p1, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 580
    return-void

    .line 574
    :cond_0
    if-eqz p1, :cond_1

    .line 575
    iget v0, p1, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mTargetDensity:I

    iput v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mTargetDensity:I

    goto :goto_0

    .line 577
    :cond_1
    const/16 v0, 0xa0

    iput v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mTargetDensity:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;Landroid/content/res/Resources;Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;-><init>(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;-><init>(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;Landroid/content/res/Resources;)V

    .line 194
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 195
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

    .line 198
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "filepath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;-><init>(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;Landroid/content/res/Resources;)V

    .line 166
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 167
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

    .line 170
    :cond_0
    return-void
.end method

.method public static ClearUsingFastDrawble()V
    .locals 2

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mUsingFastDrawble:J

    .line 78
    return-void
.end method

.method public static EnableUsingFastDrawble(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;Z)V
    .locals 4
    .parameter "flag"
    .parameter "bEanble"

    .prologue
    .line 82
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 83
    sget-wide v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mUsingFastDrawble:J

    iget v2, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;->mID:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    sput-wide v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mUsingFastDrawble:J

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    sget-wide v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mUsingFastDrawble:J

    const v2, 0xffff

    iget v3, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;->mID:I

    xor-int/2addr v2, v3

    int-to-long v2, v2

    and-long/2addr v0, v2

    sput-wide v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mUsingFastDrawble:J

    goto :goto_0
.end method

.method private computeBitmapSize()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapWidth:I

    .line 222
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mTargetDensity:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapHeight:I

    .line 223
    return-void
.end method

.method public static isInFlags(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;)Z
    .locals 4
    .parameter "flag"

    .prologue
    .line 93
    sget-wide v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mUsingFastDrawble:J

    iget v2, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;->mID:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmap:Landroid/graphics/Bitmap;

    .line 227
    if-eqz p1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->computeBitmapSize()V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapHeight:I

    iput v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapWidth:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 368
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmap:Landroid/graphics/Bitmap;

    .line 369
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 370
    iget-object v3, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    .line 371
    .local v3, state:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;
    iget-boolean v6, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mRebuildShader:Z

    if-eqz v6, :cond_0

    .line 372
    iget-object v4, v3, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 373
    .local v4, tmx:Landroid/graphics/Shader$TileMode;
    iget-object v5, v3, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 375
    .local v5, tmy:Landroid/graphics/Shader$TileMode;
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    .line 376
    iget-object v6, v3, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 383
    .end local v4           #tmx:Landroid/graphics/Shader$TileMode;
    .end local v5           #tmy:Landroid/graphics/Shader$TileMode;
    :goto_0
    iput-boolean v11, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mRebuildShader:Z

    .line 384
    iget-object v6, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->copyBounds(Landroid/graphics/Rect;)V

    .line 387
    :cond_0
    iget-object v6, v3, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    .line 389
    .local v2, shader:Landroid/graphics/Shader;
    if-nez v2, :cond_7

    .line 390
    iget-boolean v6, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mApplyGravity:Z

    if-eqz v6, :cond_1

    .line 391
    iget v6, v3, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mGravity:I

    iget v7, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapWidth:I

    iget v8, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapHeight:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mDstRect:Landroid/graphics/Rect;

    invoke-static {v6, v7, v8, v9, v10}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 393
    iput-boolean v11, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mApplyGravity:Z

    .line 396
    :cond_1
    sget-wide v6, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mUsingFastDrawble:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    .line 398
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 399
    iget-object v6, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v12, v6, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 422
    .end local v2           #shader:Landroid/graphics/Shader;
    .end local v3           #state:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;
    :cond_2
    :goto_1
    return-void

    .line 378
    .restart local v3       #state:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;
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

    .line 381
    .local v1, s:Landroid/graphics/Shader;
    iget-object v6, v3, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 406
    .end local v1           #s:Landroid/graphics/Shader;
    .restart local v2       #shader:Landroid/graphics/Shader;
    :cond_6
    iget-object v6, v3, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 407
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 408
    iget-object v6, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mDstRect:Landroid/graphics/Rect;

    iget-object v7, v3, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v12, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 414
    :cond_7
    iget-boolean v6, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mApplyGravity:Z

    if-eqz v6, :cond_8

    .line 415
    iget-object v6, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 416
    iput-boolean v11, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mApplyGravity:Z

    .line 419
    :cond_8
    iget-object v6, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mDstRect:Landroid/graphics/Rect;

    iget-object v7, v3, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 347
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget v1, v1, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mChangingConfigurations:I

    .line 528
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget v0, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mGravity:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 4

    .prologue
    const/4 v1, -0x3

    .line 516
    iget-object v2, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget v2, v2, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mGravity:I

    const/16 v3, 0x77

    if-eq v2, v3, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v1

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmap:Landroid/graphics/Bitmap;

    .line 520
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget-object v2, v2, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

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
    .line 213
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

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

    .line 452
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 454
    sget-object v5, Lcom/android/internal/R$styleable;->BitmapDrawable:[I

    invoke-virtual {p1, p3, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 457
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 459
    .local v2, id:I
    if-nez v2, :cond_0

    .line 460
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

    .line 463
    :cond_0
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 464
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 465
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

    .line 468
    :cond_1
    iget-object v5, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iput-object v1, v5, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 469
    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 470
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 472
    iget-object v5, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget-object v3, v5, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    .line 473
    .local v3, paint:Landroid/graphics/Paint;
    const/4 v5, 0x2

    invoke-virtual {v3}, Landroid/graphics/Paint;->isAntiAlias()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 476
    const/4 v5, 0x3

    invoke-virtual {v3}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 479
    const/4 v5, 0x4

    invoke-virtual {v3}, Landroid/graphics/Paint;->isDither()Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 482
    const/16 v5, 0x77

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->setGravity(I)V

    .line 485
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 487
    .local v4, tileMode:I
    if-eq v4, v7, :cond_2

    .line 488
    packed-switch v4, :pswitch_data_0

    .line 501
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 502
    return-void

    .line 490
    :pswitch_0
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v5, v6}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 493
    :pswitch_1
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v5, v6}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 496
    :pswitch_2
    sget-object v5, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v5, v6}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 488
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
    .line 442
    iget-boolean v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 443
    new-instance v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget-object v1, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    invoke-direct {v0, v1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;-><init>(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mMutated:Z

    .line 446
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 353
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mApplyGravity:Z

    .line 355
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 427
    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 1
    .parameter "aa"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 307
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 432
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .parameter "dither"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 317
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 312
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iput p1, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mGravity:I

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mApplyGravity:Z

    .line 303
    return-void
.end method

.method public setTargetDensity(I)V
    .locals 1
    .parameter "density"

    .prologue
    .line 276
    if-nez p1, :cond_0

    const/16 p1, 0xa0

    .end local p1
    :cond_0
    iput p1, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mTargetDensity:I

    .line 278
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->computeBitmapSize()V

    .line 281
    :cond_1
    return-void
.end method

.method public setTargetDensity(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->setTargetDensity(I)V

    .line 247
    return-void
.end method

.method public setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "metrics"

    .prologue
    .line 260
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mTargetDensity:I

    .line 261
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->computeBitmapSize()V

    .line 264
    :cond_0
    return-void
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, p1, v0}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 329
    return-void
.end method

.method public setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 2
    .parameter "xmode"
    .parameter "ymode"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    .line 337
    .local v0, state:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;
    iget-object v1, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    if-ne v1, p1, :cond_0

    iget-object v1, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-eq v1, p2, :cond_1

    .line 339
    :cond_0
    iput-object p1, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 340
    iput-object p2, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 341
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mRebuildShader:Z

    .line 343
    :cond_1
    return-void
.end method

.method public final setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mBitmapState:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;

    iget-object v0, v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$BitmapState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, v0, p1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 333
    return-void
.end method
