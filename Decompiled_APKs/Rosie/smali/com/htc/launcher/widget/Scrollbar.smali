.class public Lcom/htc/launcher/widget/Scrollbar;
.super Landroid/widget/FrameLayout;
.source "Scrollbar.java"

# interfaces
.implements Lcom/htc/launcher/Workspace$OnSlideListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/widget/Scrollbar$1;,
        Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Scrollbar"

.field private static isInitialed:Z

.field private static final localLOGV:Z


# instance fields
.field private curveEquation:[F

.field private isLinear:Z

.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mHide:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mThumbBitmap:Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;

.field private mThumbWidth:I

.field private mTrackOffset:I

.field private mTrackWidth:I

.field private x1:I

.field private x2:I

.field private x3:I

.field private y1:I

.field private y2:I

.field private y3:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/widget/Scrollbar;->isInitialed:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/launcher/widget/Scrollbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/launcher/widget/Scrollbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v4, 0x1e

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput v2, p0, Lcom/htc/launcher/widget/Scrollbar;->mTrackOffset:I

    .line 72
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->curveEquation:[F

    .line 74
    iput-boolean v2, p0, Lcom/htc/launcher/widget/Scrollbar;->isLinear:Z

    .line 86
    sget-object v0, Lcom/htc/launcher/R$styleable;->Scrollbar:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 87
    .local v6, a:Landroid/content/res/TypedArray;
    invoke-virtual {v6, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/Scrollbar;->x1:I

    .line 88
    const/4 v0, 0x1

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/Scrollbar;->y1:I

    .line 89
    const/4 v0, 0x2

    const/16 v1, 0xa0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/Scrollbar;->x2:I

    .line 90
    const/4 v0, 0x7

    invoke-virtual {v6, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/Scrollbar;->y2:I

    .line 91
    const/4 v0, 0x4

    const/16 v1, 0x140

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/Scrollbar;->x3:I

    .line 92
    const/4 v0, 0x5

    invoke-virtual {v6, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/Scrollbar;->y3:I

    .line 94
    const/4 v0, 0x6

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mHide:Z

    .line 95
    iget-boolean v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mHide:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/launcher/widget/Scrollbar;->hide()V

    .line 99
    :cond_0
    iget v0, p0, Lcom/htc/launcher/widget/Scrollbar;->x1:I

    iget v1, p0, Lcom/htc/launcher/widget/Scrollbar;->y1:I

    iget v2, p0, Lcom/htc/launcher/widget/Scrollbar;->x2:I

    iget v3, p0, Lcom/htc/launcher/widget/Scrollbar;->y2:I

    iget v4, p0, Lcom/htc/launcher/widget/Scrollbar;->x3:I

    iget v5, p0, Lcom/htc/launcher/widget/Scrollbar;->y3:I

    invoke-static/range {v0 .. v5}, Lcom/htc/launcher/widget/Scrollbar;->solveLinearEquation(IIIIII)[F

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->curveEquation:[F

    .line 100
    invoke-direct {p0}, Lcom/htc/launcher/widget/Scrollbar;->initScrollbar()V

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mAlphaPaint:Landroid/graphics/Paint;

    .line 103
    iget-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mAlphaPaint:Landroid/graphics/Paint;

    const v1, 0x7f080012

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 104
    return-void
.end method

.method public static delta([F)F
    .locals 8
    .parameter "matrix"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 261
    aget v0, p0, v3

    aget v1, p0, v7

    mul-float/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p0, v1

    mul-float/2addr v0, v1

    aget v1, p0, v4

    const/4 v2, 0x5

    aget v2, p0, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p0, v5

    aget v2, p0, v6

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p0, v5

    aget v2, p0, v7

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aget v1, p0, v3

    const/4 v2, 0x5

    aget v2, p0, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    aget v1, p0, v4

    aget v2, p0, v6

    mul-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private getDragImageY(I)F
    .locals 3
    .parameter "x"

    .prologue
    .line 208
    iget v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mThumbWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 209
    iget-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->curveEquation:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/htc/launcher/widget/Scrollbar;->curveEquation:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v2, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/htc/launcher/widget/Scrollbar;->curveEquation:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x4100

    sub-float/2addr v0, v1

    return v0
.end method

.method private getRotateAngle(I)D
    .locals 8
    .parameter "x"

    .prologue
    const/4 v7, 0x2

    const/high16 v1, 0x4000

    const-wide v5, 0x4066800000000000L

    const-wide v3, 0x400921fb54442d18L

    const/4 v2, 0x1

    .line 218
    iget v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mThumbWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 219
    iget v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mOrientation:I

    if-ne v0, v2, :cond_0

    .line 220
    iget-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->curveEquation:[F

    aget v0, v0, v7

    mul-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/htc/launcher/widget/Scrollbar;->curveEquation:[F

    aget v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v5

    div-double/2addr v0, v3

    .line 222
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->curveEquation:[F

    aget v0, v0, v7

    mul-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/htc/launcher/widget/Scrollbar;->curveEquation:[F

    aget v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v5

    div-double/2addr v0, v3

    goto :goto_0
.end method

.method private hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    iget-boolean v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mHide:Z

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0, v1}, Lcom/htc/launcher/widget/Scrollbar;->setEnabled(Z)V

    .line 270
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/launcher/widget/Scrollbar;->setVisibility(I)V

    .line 271
    invoke-virtual {p0, v1}, Lcom/htc/launcher/widget/Scrollbar;->setClickable(Z)V

    .line 272
    invoke-virtual {p0, v1}, Lcom/htc/launcher/widget/Scrollbar;->setFocusable(Z)V

    .line 275
    :cond_0
    return-void
.end method

.method private initScrollbar()V
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/htc/launcher/widget/Scrollbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/launcher/widget/Scrollbar;->mOrientation:I

    .line 142
    invoke-virtual {p0}, Lcom/htc/launcher/widget/Scrollbar;->removeAllViews()V

    .line 145
    new-instance v1, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;-><init>(Lcom/htc/launcher/widget/Scrollbar;Lcom/htc/launcher/widget/Scrollbar$1;)V

    iput-object v1, p0, Lcom/htc/launcher/widget/Scrollbar;->mThumbBitmap:Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;

    .line 147
    iget-object v1, p0, Lcom/htc/launcher/widget/Scrollbar;->mThumbBitmap:Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;

    iget-object v2, p0, Lcom/htc/launcher/widget/Scrollbar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 148
    iget-object v1, p0, Lcom/htc/launcher/widget/Scrollbar;->mThumbBitmap:Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;

    invoke-virtual {v1}, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->getWidth()I

    move-result v0

    .line 150
    .local v0, thumbSize:I
    const/16 v1, 0xa

    iput v1, p0, Lcom/htc/launcher/widget/Scrollbar;->mTrackOffset:I

    .line 151
    iget v1, p0, Lcom/htc/launcher/widget/Scrollbar;->x3:I

    iget v2, p0, Lcom/htc/launcher/widget/Scrollbar;->x1:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/htc/launcher/widget/Scrollbar;->mTrackWidth:I

    .line 152
    iput v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mThumbWidth:I

    .line 153
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/launcher/widget/Scrollbar;->isInitialed:Z

    .line 154
    return-void
.end method

.method private moveThumbToInternal(I)V
    .locals 6
    .parameter "pos"

    .prologue
    const/4 v5, 0x0

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, dragImageTop:F
    const/4 v0, 0x0

    .line 168
    .local v0, angle:F
    iget-object v2, p0, Lcom/htc/launcher/widget/Scrollbar;->mContext:Landroid/content/Context;

    const-string v3, "rosie_scrollbar_curve"

    invoke-static {v2, v3, v5}, Lcom/htc/launcher/custom/CustomResourceUtil;->getIntegerResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/launcher/widget/Scrollbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/launcher/widget/Scrollbar;->mContext:Landroid/content/Context;

    const-string v4, "rosie_scrollbar_curve"

    invoke-static {v3, v4, v5}, Lcom/htc/launcher/custom/CustomResourceUtil;->getIntegerResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 182
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/launcher/widget/Scrollbar;->mThumbBitmap:Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;

    iput v0, v2, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->angle:F

    .line 183
    iget-object v2, p0, Lcom/htc/launcher/widget/Scrollbar;->mThumbBitmap:Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;

    iput v1, v2, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->mTop:F

    .line 184
    iget-object v2, p0, Lcom/htc/launcher/widget/Scrollbar;->mThumbBitmap:Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;

    int-to-float v3, p1

    iput v3, v2, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->mLeft:F

    .line 185
    return-void

    .line 172
    :cond_1
    iget-boolean v2, p0, Lcom/htc/launcher/widget/Scrollbar;->isLinear:Z

    if-nez v2, :cond_0

    .line 177
    iget v2, p0, Lcom/htc/launcher/widget/Scrollbar;->mTrackOffset:I

    neg-int v2, v2

    iget v3, p0, Lcom/htc/launcher/widget/Scrollbar;->mTrackWidth:I

    iget v4, p0, Lcom/htc/launcher/widget/Scrollbar;->mTrackOffset:I

    add-int/2addr v3, v4

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 178
    invoke-direct {p0, p1}, Lcom/htc/launcher/widget/Scrollbar;->getDragImageY(I)F

    move-result v1

    .line 179
    invoke-direct {p0, p1}, Lcom/htc/launcher/widget/Scrollbar;->getRotateAngle(I)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_0
.end method

.method private static solveLinearEquation(IIIIII)[F
    .locals 7
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "x3"
    .parameter "y3"

    .prologue
    .line 232
    const/4 v4, 0x3

    new-array v3, v4, [F

    .line 233
    .local v3, result:[F
    const/16 v4, 0x9

    new-array v2, v4, [F

    const/4 v4, 0x0

    mul-int v5, p0, p0

    int-to-float v5, v5

    aput v5, v2, v4

    const/4 v4, 0x1

    int-to-float v5, p0

    aput v5, v2, v4

    const/4 v4, 0x2

    const/high16 v5, 0x3f80

    aput v5, v2, v4

    const/4 v4, 0x3

    mul-int v5, p2, p2

    int-to-float v5, v5

    aput v5, v2, v4

    const/4 v4, 0x4

    int-to-float v5, p2

    aput v5, v2, v4

    const/4 v4, 0x5

    const/high16 v5, 0x3f80

    aput v5, v2, v4

    const/4 v4, 0x6

    mul-int v5, p4, p4

    int-to-float v5, v5

    aput v5, v2, v4

    const/4 v4, 0x7

    int-to-float v5, p4

    aput v5, v2, v4

    const/16 v4, 0x8

    const/high16 v5, 0x3f80

    aput v5, v2, v4

    .line 234
    .local v2, mother:[F
    const/16 v4, 0x9

    new-array v0, v4, [F

    .line 235
    .local v0, child:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 236
    aget v4, v2, v1

    aput v4, v0, v1

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_0
    const/4 v4, 0x0

    int-to-float v5, p1

    aput v5, v0, v4

    const/4 v4, 0x3

    int-to-float v5, p3

    aput v5, v0, v4

    const/4 v4, 0x6

    int-to-float v5, p5

    aput v5, v0, v4

    .line 239
    const/4 v4, 0x2

    invoke-static {v0}, Lcom/htc/launcher/widget/Scrollbar;->delta([F)F

    move-result v5

    invoke-static {v2}, Lcom/htc/launcher/widget/Scrollbar;->delta([F)F

    move-result v6

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 240
    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 241
    aget v4, v2, v1

    aput v4, v0, v1

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 243
    :cond_1
    const/4 v4, 0x1

    int-to-float v5, p1

    aput v5, v0, v4

    const/4 v4, 0x4

    int-to-float v5, p3

    aput v5, v0, v4

    const/4 v4, 0x7

    int-to-float v5, p5

    aput v5, v0, v4

    .line 244
    const/4 v4, 0x1

    invoke-static {v0}, Lcom/htc/launcher/widget/Scrollbar;->delta([F)F

    move-result v5

    invoke-static {v2}, Lcom/htc/launcher/widget/Scrollbar;->delta([F)F

    move-result v6

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 245
    const/4 v1, 0x0

    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 246
    aget v4, v2, v1

    aput v4, v0, v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 248
    :cond_2
    const/4 v4, 0x2

    int-to-float v5, p1

    aput v5, v0, v4

    const/4 v4, 0x5

    int-to-float v5, p3

    aput v5, v0, v4

    const/16 v4, 0x8

    int-to-float v5, p5

    aput v5, v0, v4

    .line 249
    const/4 v4, 0x0

    invoke-static {v0}, Lcom/htc/launcher/widget/Scrollbar;->delta([F)F

    move-result v5

    invoke-static {v2}, Lcom/htc/launcher/widget/Scrollbar;->delta([F)F

    move-result v6

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 251
    return-object v3
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mHide:Z

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    sget-boolean v0, Lcom/htc/launcher/widget/Scrollbar;->isInitialed:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    .line 113
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mMatrix:Landroid/graphics/Matrix;

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/launcher/widget/Scrollbar;->mThumbBitmap:Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;

    iget v1, v1, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->angle:F

    iget-object v2, p0, Lcom/htc/launcher/widget/Scrollbar;->mThumbBitmap:Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;

    invoke-virtual {v2}, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/htc/launcher/widget/Scrollbar;->mThumbBitmap:Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;

    invoke-virtual {v3}, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->getHeight()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 117
    iget-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/htc/launcher/widget/Scrollbar;->mThumbBitmap:Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;

    invoke-virtual {v1}, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->getLeft()F

    move-result v1

    iget-object v2, p0, Lcom/htc/launcher/widget/Scrollbar;->mThumbBitmap:Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;

    iget v2, v2, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->mTop:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 118
    iget-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mPaint:Landroid/graphics/Paint;

    .line 120
    iget-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mThumbBitmap:Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;

    iget-object v0, v0, Lcom/htc/launcher/widget/Scrollbar$ThumbBitmap;->thumbBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/launcher/widget/Scrollbar;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/htc/launcher/widget/Scrollbar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 123
    iget-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0
.end method

.method public moveThumbTo(F)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 162
    iget v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mTrackWidth:I

    iget v1, p0, Lcom/htc/launcher/widget/Scrollbar;->mTrackOffset:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget v1, p0, Lcom/htc/launcher/widget/Scrollbar;->mTrackOffset:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/launcher/widget/Scrollbar;->moveThumbToInternal(I)V

    .line 163
    return-void
.end method

.method public onFling(III)V
    .locals 0
    .parameter "x"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 330
    return-void
.end method

.method public onScrollTo(FFII)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "scrollRange"
    .parameter "screenWidth"

    .prologue
    .line 324
    int-to-float v1, p3

    div-float v0, p1, v1

    .line 325
    .local v0, pos:F
    invoke-virtual {p0, v0}, Lcom/htc/launcher/widget/Scrollbar;->moveThumbTo(F)V

    .line 327
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;I)V
    .locals 0
    .parameter "ev"
    .parameter "x"

    .prologue
    .line 333
    return-void
.end method

.method public setAxis()V
    .locals 7

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/htc/launcher/widget/Scrollbar;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 313
    .local v6, res:Landroid/content/res/Resources;
    const v0, 0x7f0c003c

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/Scrollbar;->x1:I

    .line 314
    const v0, 0x7f0c003d

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/Scrollbar;->y1:I

    .line 315
    const v0, 0x7f0c003e

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/Scrollbar;->x2:I

    .line 316
    const v0, 0x7f0c003f

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/Scrollbar;->y2:I

    .line 317
    const v0, 0x7f0c0040

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/Scrollbar;->x3:I

    .line 318
    const v0, 0x7f0c0041

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/widget/Scrollbar;->y3:I

    .line 319
    iget v0, p0, Lcom/htc/launcher/widget/Scrollbar;->x1:I

    iget v1, p0, Lcom/htc/launcher/widget/Scrollbar;->y1:I

    iget v2, p0, Lcom/htc/launcher/widget/Scrollbar;->x2:I

    iget v3, p0, Lcom/htc/launcher/widget/Scrollbar;->y2:I

    iget v4, p0, Lcom/htc/launcher/widget/Scrollbar;->x3:I

    iget v5, p0, Lcom/htc/launcher/widget/Scrollbar;->y3:I

    invoke-static/range {v0 .. v5}, Lcom/htc/launcher/widget/Scrollbar;->solveLinearEquation(IIIIII)[F

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/widget/Scrollbar;->curveEquation:[F

    .line 320
    invoke-direct {p0}, Lcom/htc/launcher/widget/Scrollbar;->initScrollbar()V

    .line 321
    return-void
.end method

.method public setHide(Z)V
    .locals 0
    .parameter "hide"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/htc/launcher/widget/Scrollbar;->mHide:Z

    .line 189
    return-void
.end method

.method public setLinear(Z)V
    .locals 0
    .parameter "linear"

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/htc/launcher/widget/Scrollbar;->isLinear:Z

    .line 193
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/htc/launcher/widget/Scrollbar;->mHide:Z

    if-eqz v0, :cond_0

    .line 279
    const/4 v0, 0x4

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 283
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    const-string v0, "Scrollbar: rect=(%d,%d)-(%d,%d), measure=%dx%d, scroll=(%d,%d)."

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/launcher/widget/Scrollbar;->mLeft:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/launcher/widget/Scrollbar;->mTop:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/launcher/widget/Scrollbar;->mRight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/htc/launcher/widget/Scrollbar;->mBottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/htc/launcher/widget/Scrollbar;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/htc/launcher/widget/Scrollbar;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/htc/launcher/widget/Scrollbar;->mScrollX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/htc/launcher/widget/Scrollbar;->mScrollY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
