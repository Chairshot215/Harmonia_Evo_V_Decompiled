.class public Lcom/android/browser/view/PieMenu;
.super Landroid/widget/FrameLayout;
.source "PieMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/view/PieMenu$PieView;,
        Lcom/android/browser/view/PieMenu$PieController;
    }
.end annotation


# static fields
.field private static final MAX_LEVELS:I = 0x5


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCenter:Landroid/graphics/Point;

.field private mController:Lcom/android/browser/view/PieMenu$PieController;

.field private mCounts:[I

.field mCurrentItem:Lcom/android/browser/view/PieItem;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/view/PieItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLevels:I

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mOpen:Z

.field private mPieView:Lcom/android/browser/view/PieMenu$PieView;

.field private mRadius:I

.field private mRadiusInc:I

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mSlop:I

.field private mTouchOffset:I

.field private mUseBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    .line 118
    invoke-direct {p0, p1}, Lcom/android/browser/view/PieMenu;->init(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/browser/view/PieMenu;->init(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/browser/view/PieMenu;->init(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method private deselect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 409
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/view/PieItem;->setSelected(Z)V

    .line 412
    :cond_0
    iput-object v2, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    .line 413
    iput-object v2, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    .line 414
    return-void
.end method

.method private drawItem(Landroid/graphics/Canvas;Lcom/android/browser/view/PieItem;)V
    .locals 7
    .parameter "canvas"
    .parameter "item"

    .prologue
    .line 285
    invoke-virtual {p2}, Lcom/android/browser/view/PieItem;->getOuterRadius()I

    move-result v1

    .line 286
    .local v1, outer:I
    iget-object v5, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v0, v5, v1

    .line 287
    .local v0, left:I
    iget-object v5, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v3, v5, v1

    .line 289
    .local v3, top:I
    invoke-virtual {p2}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v4

    .line 290
    .local v4, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 291
    .local v2, state:I
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 292
    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 293
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 294
    return-void
.end method

.method private drawPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "canvas"
    .parameter "path"
    .parameter "paint"

    .prologue
    .line 297
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 298
    return-void
.end method

.method private findItem(Landroid/graphics/PointF;)Lcom/android/browser/view/PieItem;
    .locals 4
    .parameter "polar"

    .prologue
    .line 441
    iget-object v2, p0, Lcom/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/view/PieItem;

    .line 442
    .local v1, item:Lcom/android/browser/view/PieItem;
    invoke-virtual {v1}, Lcom/android/browser/view/PieItem;->getInnerRadius()I

    move-result v2

    iget v3, p0, Lcom/android/browser/view/PieMenu;->mTouchOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/browser/view/PieItem;->getOuterRadius()I

    move-result v2

    iget v3, p0, Lcom/android/browser/view/PieMenu;->mTouchOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/browser/view/PieItem;->getStartAngle()F

    move-result v2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/browser/view/PieItem;->getStartAngle()F

    move-result v2

    invoke-virtual {v1}, Lcom/android/browser/view/PieItem;->getSweep()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 449
    .end local v1           #item:Lcom/android/browser/view/PieItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDegrees(D)F
    .locals 6
    .parameter "angle"

    .prologue
    .line 248
    const-wide v0, 0x4070e00000000000L

    const-wide v2, 0x4066800000000000L

    mul-double/2addr v2, p1

    const-wide v4, 0x400921fb54442d18L

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private getPolar(FF)Landroid/graphics/PointF;
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 417
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 419
    .local v0, res:Landroid/graphics/PointF;
    const v1, 0x3fc90fdb

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 420
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float p1, v1, p1

    .line 421
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/browser/view/PieMenu;->mSlop:I

    if-ge v1, v2, :cond_0

    .line 422
    neg-float p1, p1

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sub-float p2, v1, p2

    .line 425
    mul-float v1, p1, p1

    mul-float v2, p2, p2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 426
    cmpl-float v1, p2, v3

    if-lez v1, :cond_2

    .line 427
    iget v1, v0, Landroid/graphics/PointF;->y:F

    div-float v1, p1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 431
    :cond_1
    :goto_0
    return-object v0

    .line 428
    :cond_2
    cmpg-float v1, p2, v3

    if-gez v1, :cond_1

    .line 429
    const-wide v1, 0x400921fb54442d18L

    iget v3, v0, Landroid/graphics/PointF;->y:F

    div-float v3, p1, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    .line 123
    iput v2, p0, Lcom/android/browser/view/PieMenu;->mLevels:I

    .line 124
    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/browser/view/PieMenu;->mCounts:[I

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/browser/view/PieMenu;->mRadius:I

    .line 127
    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/browser/view/PieMenu;->mRadiusInc:I

    .line 128
    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/browser/view/PieMenu;->mSlop:I

    .line 129
    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/browser/view/PieMenu;->mTouchOffset:I

    .line 130
    iput-boolean v2, p0, Lcom/android/browser/view/PieMenu;->mOpen:Z

    .line 131
    invoke-virtual {p0, v2}, Lcom/android/browser/view/PieMenu;->setWillNotDraw(Z)V

    .line 132
    invoke-virtual {p0, v2}, Lcom/android/browser/view/PieMenu;->setDrawingCacheEnabled(Z)V

    .line 133
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    .line 134
    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/view/PieMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 135
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/browser/view/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    .line 136
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/browser/view/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    .line 139
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    return-void
.end method

.method private layoutPie()V
    .locals 29

    .prologue
    .line 200
    const v15, 0x3e490fdb

    .line 201
    .local v15, emptyangle:F
    const/16 v24, 0x2

    .line 202
    .local v24, rgap:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/PieMenu;->mRadius:I

    add-int v7, v3, v24

    .line 203
    .local v7, inner:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/PieMenu;->mRadius:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/browser/view/PieMenu;->mRadiusInc:I

    add-int/2addr v3, v4

    sub-int v6, v3, v24

    .line 204
    .local v6, outer:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/PieMenu;->mRadius:I

    move/from16 v23, v0

    .line 205
    .local v23, radius:I
    const/16 v16, 0x1

    .line 206
    .local v16, gap:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/PieMenu;->mLevels:I

    move/from16 v0, v18

    if-ge v0, v3, :cond_3

    .line 207
    add-int/lit8 v21, v18, 0x1

    .line 208
    .local v21, level:I
    const-wide v3, 0x400921fb54442d18L

    const/high16 v5, 0x4000

    mul-float/2addr v5, v15

    float-to-double v11, v5

    sub-double/2addr v3, v11

    double-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/browser/view/PieMenu;->mCounts:[I

    aget v4, v4, v21

    int-to-float v4, v4

    div-float v10, v3, v4

    .line 209
    .local v10, sweep:F
    const/high16 v3, 0x4000

    div-float v3, v10, v3

    add-float v14, v15, v3

    .line 210
    .local v14, angle:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/browser/view/PieItem;

    .line 211
    .local v20, item:Lcom/android/browser/view/PieItem;
    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/view/PieItem;->getLevel()I

    move-result v3

    move/from16 v0, v21

    if-ne v3, v0, :cond_0

    .line 212
    invoke-virtual/range {v20 .. v20}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v25

    .line 213
    .local v25, view:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 215
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .line 216
    .local v26, w:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 217
    .local v17, h:I
    sub-int v3, v6, v7

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    add-int v22, v7, v3

    .line 218
    .local v22, r:I
    move/from16 v0, v22

    int-to-double v3, v0

    float-to-double v11, v14

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v3, v11

    double-to-int v0, v3

    move/from16 v27, v0

    .line 219
    .local v27, x:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move/from16 v0, v22

    int-to-double v4, v0

    float-to-double v11, v14

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v4, v11

    double-to-int v4, v4

    sub-int/2addr v3, v4

    div-int/lit8 v4, v17, 0x2

    sub-int v28, v3, v4

    .line 220
    .local v28, y:I
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/PieMenu;->onTheLeft()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int v3, v3, v27

    div-int/lit8 v4, v26, 0x2

    sub-int v27, v3, v4

    .line 225
    :goto_2
    add-int v3, v27, v26

    add-int v4, v28, v17

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 226
    const/high16 v3, 0x4000

    div-float v3, v10, v3

    sub-float v9, v14, v3

    .line 227
    .local v9, itemstart:F
    float-to-double v3, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/browser/view/PieMenu;->getDegrees(D)F

    move-result v3

    move/from16 v0, v16

    int-to-float v4, v0

    sub-float v4, v3, v4

    add-float v3, v9, v10

    float-to-double v11, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/browser/view/PieMenu;->getDegrees(D)F

    move-result v3

    move/from16 v0, v16

    int-to-float v5, v0

    add-float/2addr v5, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/browser/view/PieMenu;->makeSlice(FFIILandroid/graphics/Point;)Landroid/graphics/Path;

    move-result-object v13

    .local v13, slice:Landroid/graphics/Path;
    move-object/from16 v8, v20

    move v11, v7

    move v12, v6

    .line 230
    invoke-virtual/range {v8 .. v13}, Lcom/android/browser/view/PieItem;->setGeometry(FFIILandroid/graphics/Path;)V

    .line 231
    add-float/2addr v14, v10

    goto/16 :goto_1

    .line 223
    .end local v9           #itemstart:F
    .end local v13           #slice:Landroid/graphics/Path;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v3, v3, v27

    div-int/lit8 v4, v26, 0x2

    sub-int v27, v3, v4

    goto :goto_2

    .line 234
    .end local v17           #h:I
    .end local v20           #item:Lcom/android/browser/view/PieItem;
    .end local v22           #r:I
    .end local v25           #view:Landroid/view/View;
    .end local v26           #w:I
    .end local v27           #x:I
    .end local v28           #y:I
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/PieMenu;->mRadiusInc:I

    add-int/2addr v7, v3

    .line 235
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/PieMenu;->mRadiusInc:I

    add-int/2addr v6, v3

    .line 206
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 237
    .end local v10           #sweep:F
    .end local v14           #angle:F
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v21           #level:I
    :cond_3
    return-void
.end method

.method private layoutPieView(Lcom/android/browser/view/PieMenu$PieView;IIF)V
    .locals 1
    .parameter "pv"
    .parameter "x"
    .parameter "y"
    .parameter "angle"

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/android/browser/view/PieMenu;->onTheLeft()Z

    move-result v0

    invoke-interface {p1, p2, p3, v0, p4}, Lcom/android/browser/view/PieMenu$PieView;->layout(IIZF)V

    .line 387
    return-void
.end method

.method private makeSlice(FFIILandroid/graphics/Point;)Landroid/graphics/Path;
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "outer"
    .parameter "inner"
    .parameter "center"

    .prologue
    .line 301
    new-instance v0, Landroid/graphics/RectF;

    iget v3, p5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p3

    int-to-float v3, v3

    iget v4, p5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, p3

    int-to-float v4, v4

    iget v5, p5, Landroid/graphics/Point;->x:I

    add-int/2addr v5, p3

    int-to-float v5, v5

    iget v6, p5, Landroid/graphics/Point;->y:I

    add-int/2addr v6, p3

    int-to-float v6, v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 304
    .local v0, bb:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p4

    int-to-float v3, v3

    iget v4, p5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, p4

    int-to-float v4, v4

    iget v5, p5, Landroid/graphics/Point;->x:I

    add-int/2addr v5, p4

    int-to-float v5, v5

    iget v6, p5, Landroid/graphics/Point;->y:I

    add-int/2addr v6, p4

    int-to-float v6, v6

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 307
    .local v1, bbi:Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 308
    .local v2, path:Landroid/graphics/Path;
    sub-float v3, p2, p1

    const/4 v4, 0x1

    invoke-virtual {v2, v0, p1, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 309
    sub-float v3, p1, p2

    invoke-virtual {v2, v1, p2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 310
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 311
    return-object v2
.end method

.method private onEnter(Lcom/android/browser/view/PieItem;)V
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    invoke-virtual {v0, v1}, Lcom/android/browser/view/PieItem;->setSelected(Z)V

    .line 399
    :cond_0
    if-eqz p1, :cond_1

    .line 401
    invoke-virtual {p0, v1}, Lcom/android/browser/view/PieMenu;->playSoundEffect(I)V

    .line 402
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/browser/view/PieItem;->setSelected(Z)V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    .line 405
    :cond_1
    iput-object p1, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    .line 406
    return-void
.end method

.method private onTheLeft()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/browser/view/PieMenu;->mSlop:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCenter(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 191
    iget v0, p0, Lcom/android/browser/view/PieMenu;->mSlop:I

    if-ge p1, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 197
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/browser/view/PieMenu;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method private show(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const/4 v1, 0x0

    .line 176
    iput-boolean p1, p0, Lcom/android/browser/view/PieMenu;->mOpen:Z

    .line 177
    iget-boolean v0, p0, Lcom/android/browser/view/PieMenu;->mOpen:Z

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mController:Lcom/android/browser/view/PieMenu$PieController;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mController:Lcom/android/browser/view/PieMenu$PieController;

    invoke-interface {v0}, Lcom/android/browser/view/PieMenu$PieController;->onOpen()Z

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/view/PieMenu;->layoutPie()V

    .line 183
    :cond_1
    if-nez p1, :cond_2

    .line 184
    iput-object v1, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    .line 185
    iput-object v1, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/view/PieMenu;->invalidate()V

    .line 188
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/browser/view/PieItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {p1}, Lcom/android/browser/view/PieItem;->getLevel()I

    move-result v0

    .line 155
    .local v0, l:I
    iget v1, p0, Lcom/android/browser/view/PieMenu;->mLevels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/browser/view/PieMenu;->mLevels:I

    .line 156
    iget-object v1, p0, Lcom/android/browser/view/PieMenu;->mCounts:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 157
    return-void
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 165
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/high16 v12, 0x3f80

    const/high16 v11, -0x4080

    .line 253
    iget-boolean v8, p0, Lcom/android/browser/view/PieMenu;->mOpen:Z

    if-eqz v8, :cond_5

    .line 255
    iget-boolean v8, p0, Lcom/android/browser/view/PieMenu;->mUseBackground:Z

    if-eqz v8, :cond_1

    .line 256
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 257
    .local v7, w:I
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 258
    .local v0, h:I
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int v3, v8, v7

    .line 259
    .local v3, left:I
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mCenter:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    div-int/lit8 v9, v0, 0x2

    sub-int v6, v8, v9

    .line 260
    .local v6, top:I
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    add-int v9, v3, v7

    add-int v10, v6, v0

    invoke-virtual {v8, v3, v6, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 261
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 262
    .local v5, state:I
    invoke-direct {p0}, Lcom/android/browser/view/PieMenu;->onTheLeft()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 263
    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 265
    :cond_0
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 266
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 268
    .end local v0           #h:I
    .end local v3           #left:I
    .end local v5           #state:I
    .end local v6           #top:I
    .end local v7           #w:I
    :cond_1
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/view/PieItem;

    .line 269
    .local v2, item:Lcom/android/browser/view/PieItem;
    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v4, p0, Lcom/android/browser/view/PieMenu;->mSelectedPaint:Landroid/graphics/Paint;

    .line 270
    .local v4, p:Landroid/graphics/Paint;
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 271
    .restart local v5       #state:I
    invoke-direct {p0}, Lcom/android/browser/view/PieMenu;->onTheLeft()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 272
    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 274
    :cond_2
    invoke-virtual {v2}, Lcom/android/browser/view/PieItem;->getPath()Landroid/graphics/Path;

    move-result-object v8

    invoke-direct {p0, p1, v8, v4}, Lcom/android/browser/view/PieMenu;->drawPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 275
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 276
    invoke-direct {p0, p1, v2}, Lcom/android/browser/view/PieMenu;->drawItem(Landroid/graphics/Canvas;Lcom/android/browser/view/PieItem;)V

    goto :goto_0

    .line 269
    .end local v4           #p:Landroid/graphics/Paint;
    .end local v5           #state:I
    :cond_3
    iget-object v4, p0, Lcom/android/browser/view/PieMenu;->mNormalPaint:Landroid/graphics/Paint;

    goto :goto_1

    .line 278
    .end local v2           #item:Lcom/android/browser/view/PieItem;
    :cond_4
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    if-eqz v8, :cond_5

    .line 279
    iget-object v8, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    invoke-interface {v8, p1}, Lcom/android/browser/view/PieMenu$PieView;->draw(Landroid/graphics/Canvas;)V

    .line 282
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "evt"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 319
    .local v7, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 320
    .local v8, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 321
    .local v0, action:I
    if-nez v0, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/android/browser/view/PieMenu;->getWidth()I

    move-result v11

    iget v12, p0, Lcom/android/browser/view/PieMenu;->mSlop:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    cmpl-float v11, v7, v11

    if-gtz v11, :cond_0

    iget v11, p0, Lcom/android/browser/view/PieMenu;->mSlop:I

    int-to-float v11, v11

    cmpg-float v11, v7, v11

    if-gez v11, :cond_1

    .line 323
    :cond_0
    float-to-int v10, v7

    float-to-int v11, v8

    invoke-direct {p0, v10, v11}, Lcom/android/browser/view/PieMenu;->setCenter(II)V

    .line 324
    invoke-direct {p0, v9}, Lcom/android/browser/view/PieMenu;->show(Z)V

    move v10, v9

    .line 382
    :cond_1
    :goto_0
    return v10

    .line 327
    :cond_2
    if-ne v9, v0, :cond_5

    .line 328
    iget-boolean v11, p0, Lcom/android/browser/view/PieMenu;->mOpen:Z

    if-eqz v11, :cond_1

    .line 329
    const/4 v3, 0x0

    .line 330
    .local v3, handled:Z
    iget-object v11, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    if-eqz v11, :cond_3

    .line 331
    iget-object v11, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    invoke-interface {v11, p1}, Lcom/android/browser/view/PieMenu$PieView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 333
    :cond_3
    iget-object v4, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    .line 334
    .local v4, item:Lcom/android/browser/view/PieItem;
    invoke-direct {p0}, Lcom/android/browser/view/PieMenu;->deselect()V

    .line 335
    invoke-direct {p0, v10}, Lcom/android/browser/view/PieMenu;->show(Z)V

    .line 336
    if-nez v3, :cond_4

    if-eqz v4, :cond_4

    .line 337
    invoke-virtual {v4}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->performClick()Z

    :cond_4
    move v10, v9

    .line 339
    goto :goto_0

    .line 341
    .end local v3           #handled:Z
    .end local v4           #item:Lcom/android/browser/view/PieItem;
    :cond_5
    const/4 v9, 0x3

    if-ne v9, v0, :cond_7

    .line 342
    iget-boolean v9, p0, Lcom/android/browser/view/PieMenu;->mOpen:Z

    if-eqz v9, :cond_6

    .line 343
    invoke-direct {p0, v10}, Lcom/android/browser/view/PieMenu;->show(Z)V

    .line 345
    :cond_6
    invoke-direct {p0}, Lcom/android/browser/view/PieMenu;->deselect()V

    goto :goto_0

    .line 347
    :cond_7
    const/4 v9, 0x2

    if-ne v9, v0, :cond_1

    .line 348
    const/4 v3, 0x0

    .line 349
    .restart local v3       #handled:Z
    invoke-direct {p0, v7, v8}, Lcom/android/browser/view/PieMenu;->getPolar(FF)Landroid/graphics/PointF;

    move-result-object v6

    .line 350
    .local v6, polar:Landroid/graphics/PointF;
    iget v9, p0, Lcom/android/browser/view/PieMenu;->mRadius:I

    iget v11, p0, Lcom/android/browser/view/PieMenu;->mLevels:I

    iget v12, p0, Lcom/android/browser/view/PieMenu;->mRadiusInc:I

    mul-int/2addr v11, v12

    add-int/2addr v9, v11

    add-int/lit8 v5, v9, 0x32

    .line 351
    .local v5, maxr:I
    iget-object v9, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    if-eqz v9, :cond_8

    .line 352
    iget-object v9, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    invoke-interface {v9, p1}, Lcom/android/browser/view/PieMenu$PieView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 354
    :cond_8
    if-eqz v3, :cond_9

    .line 355
    invoke-virtual {p0}, Lcom/android/browser/view/PieMenu;->invalidate()V

    goto :goto_0

    .line 358
    :cond_9
    iget v9, v6, Landroid/graphics/PointF;->y:F

    int-to-float v11, v5

    cmpl-float v9, v9, v11

    if-lez v9, :cond_a

    .line 359
    invoke-direct {p0}, Lcom/android/browser/view/PieMenu;->deselect()V

    .line 360
    invoke-direct {p0, v10}, Lcom/android/browser/view/PieMenu;->show(Z)V

    .line 361
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 362
    invoke-virtual {p0}, Lcom/android/browser/view/PieMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/android/browser/view/PieMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 367
    :cond_a
    invoke-direct {p0, v6}, Lcom/android/browser/view/PieMenu;->findItem(Landroid/graphics/PointF;)Lcom/android/browser/view/PieItem;

    move-result-object v4

    .line 368
    .restart local v4       #item:Lcom/android/browser/view/PieItem;
    iget-object v9, p0, Lcom/android/browser/view/PieMenu;->mCurrentItem:Lcom/android/browser/view/PieItem;

    if-eq v9, v4, :cond_1

    .line 369
    invoke-direct {p0, v4}, Lcom/android/browser/view/PieMenu;->onEnter(Lcom/android/browser/view/PieItem;)V

    .line 370
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/android/browser/view/PieItem;->isPieView()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 371
    invoke-virtual {v4}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-direct {p0}, Lcom/android/browser/view/PieMenu;->onTheLeft()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v4}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    :goto_1
    add-int v1, v11, v9

    .line 373
    .local v1, cx:I
    invoke-virtual {v4}, Lcom/android/browser/view/PieItem;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v2

    .line 374
    .local v2, cy:I
    invoke-virtual {v4}, Lcom/android/browser/view/PieItem;->getPieView()Lcom/android/browser/view/PieMenu$PieView;

    move-result-object v9

    iput-object v9, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    .line 375
    iget-object v9, p0, Lcom/android/browser/view/PieMenu;->mPieView:Lcom/android/browser/view/PieMenu$PieView;

    invoke-virtual {v4}, Lcom/android/browser/view/PieItem;->getStartAngle()F

    move-result v11

    invoke-virtual {v4}, Lcom/android/browser/view/PieItem;->getSweep()F

    move-result v12

    add-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    invoke-direct {p0, v9, v1, v2, v11}, Lcom/android/browser/view/PieMenu;->layoutPieView(Lcom/android/browser/view/PieMenu$PieView;IIF)V

    .line 378
    .end local v1           #cx:I
    .end local v2           #cy:I
    :cond_b
    invoke-virtual {p0}, Lcom/android/browser/view/PieMenu;->invalidate()V

    goto/16 :goto_0

    :cond_c
    move v9, v10

    .line 371
    goto :goto_1
.end method

.method public removeItem(Lcom/android/browser/view/PieItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/browser/view/PieMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public setController(Lcom/android/browser/view/PieMenu$PieController;)V
    .locals 0
    .parameter "ctl"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/browser/view/PieMenu;->mController:Lcom/android/browser/view/PieMenu$PieController;

    .line 145
    return-void
.end method

.method public setUseBackground(Z)V
    .locals 0
    .parameter "useBackground"

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/browser/view/PieMenu;->mUseBackground:Z

    .line 149
    return-void
.end method
