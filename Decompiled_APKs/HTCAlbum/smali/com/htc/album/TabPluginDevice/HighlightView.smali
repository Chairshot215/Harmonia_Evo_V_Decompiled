.class public Lcom/htc/album/TabPluginDevice/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;
    }
.end annotation


# static fields
.field public static final GROW_BOTTOM_EDGE:I = 0x10

.field public static final GROW_LEFT_EDGE:I = 0x2

.field public static final GROW_NONE:I = 0x1

.field public static final GROW_RIGHT_EDGE:I = 0x4

.field public static final GROW_TOP_EDGE:I = 0x8

.field public static final MOVE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "CropImage"


# instance fields
.field mCircle:Z

.field mContext:Landroid/view/View;

.field mCropRect:Landroid/graphics/RectF;

.field mDrawRect:Landroid/graphics/Rect;

.field mFocusPaint:Landroid/graphics/Paint;

.field mHidden:Z

.field mImageRect:Landroid/graphics/RectF;

.field mInitialAspectRatio:F

.field mIsFocused:Z

.field mMaintainAspectRatio:Z

.field mMatrix:Landroid/graphics/Matrix;

.field mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

.field mMotionMode:I

.field mNoFocusPaint:Landroid/graphics/Paint;

.field mOutlinePaint:Landroid/graphics/Paint;

.field mPath:Landroid/graphics/Path;

.field mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

.field mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

.field mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

.field mViewDrawingRect:Landroid/graphics/Rect;

.field mbOversize:Z

.field mfAspectImage:F

.field mfAspectScreen:F

.field mfHeightBoundary:F

.field mfWidthBoundary:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x4080

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mViewDrawingRect:Landroid/graphics/Rect;

    .line 319
    iput v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectScreen:F

    .line 320
    iput v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectImage:F

    .line 321
    iput v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    .line 322
    iput v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfHeightBoundary:F

    .line 323
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mbOversize:Z

    .line 624
    sget-object v0, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->None:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    .line 631
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMaintainAspectRatio:Z

    .line 633
    iput-boolean v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCircle:Z

    .line 638
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    .line 639
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    .line 640
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 55
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    .line 56
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    .line 57
    return-void
.end method

.method private computeLayout()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 549
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 550
    .local v0, r:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 551
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private initHighlightView()V
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    .line 64
    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    .line 69
    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    .line 70
    return-void
.end method

.method private shift(Landroid/graphics/RectF;FF)V
    .locals 1
    .parameter "r"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 310
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 311
    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 312
    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 313
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 314
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mHidden:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Path;->reset()V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->hasFocus()Z

    move-result v21

    if-nez v21, :cond_2

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_CropFrame(Landroid/content/Context;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 99
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mViewDrawingRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 100
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCircle:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->getPaddingLeft()F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->getPaddingRight()F

    move-result v23

    add-float v22, v22, v23

    sub-float v14, v21, v22

    .line 102
    .local v14, width:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->getPaddingTop()F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->getPaddingBottom()F

    move-result v23

    add-float v22, v22, v23

    sub-float v8, v21, v22

    .line 103
    .local v8, height:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->getPaddingLeft()F

    move-result v23

    add-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v23, v14, v23

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->getPaddingTop()F

    move-result v24

    add-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v24, v8, v24

    add-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v24, v14, v24

    sget-object v25, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_CropFrame(Landroid/content/Context;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    .end local v8           #height:F
    .end local v14           #width:F
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mViewDrawingRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->hasFocus()Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Grow:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCircle:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 138
    .local v14, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 140
    .local v8, height:I
    const-wide v21, 0x3fe921fb54442d18L

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4000

    div-double v23, v23, v25

    mul-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->round(D)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v6, v0

    .line 141
    .local v6, d:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    add-int v21, v21, v6

    div-int/lit8 v22, v14, 0x2

    sub-int v17, v21, v22

    .line 142
    .local v17, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    sub-int v21, v21, v6

    div-int/lit8 v22, v8, 0x2

    sub-int v19, v21, v22

    .line 143
    .local v19, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    add-int v22, v22, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    add-int v23, v23, v19

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 115
    .end local v6           #d:I
    .end local v8           #height:I
    .end local v14           #width:I
    .end local v17           #x:I
    .end local v19           #y:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mPath:Landroid/graphics/Path;

    move-object/from16 v21, v0

    new-instance v22, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/htc/album/Customizable/CustSkinnable;->getColor_CropFrame(Landroid/content/Context;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 125
    :catch_0
    move-exception v7

    .line 127
    .local v7, e:Ljava/lang/Exception;
    const-string v21, "CropImage"

    const-string v22, "CropView don\'t support GPU rendering"

    invoke-static/range {v21 .. v22}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 130
    .end local v7           #e:Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    goto/16 :goto_3

    .line 173
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int/lit8 v11, v21, 0x1

    .line 174
    .local v11, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    add-int/lit8 v12, v21, 0x1

    .line 175
    .local v12, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int/lit8 v13, v21, 0x4

    .line 176
    .local v13, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int/lit8 v5, v21, 0x3

    .line 178
    .local v5, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    div-int/lit8 v16, v21, 0x2

    .line 179
    .local v16, widthWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    div-int/lit8 v15, v21, 0x2

    .line 180
    .local v15, widthHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    div-int/lit8 v9, v21, 0x2

    .line 181
    .local v9, heightHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    div-int/lit8 v10, v21, 0x2

    .line 183
    .local v10, heightWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    add-int v18, v21, v22

    .line 184
    .local v18, xMiddle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    add-int v20, v21, v22

    .line 186
    .local v20, yMiddle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    sub-int v22, v11, v16

    sub-int v23, v20, v15

    add-int v24, v11, v16

    add-int v25, v20, v15

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    sub-int v22, v12, v16

    sub-int v23, v20, v15

    add-int v24, v12, v16

    add-int v25, v20, v15

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    sub-int v22, v18, v10

    sub-int v23, v13, v9

    add-int v24, v18, v10

    add-int v25, v13, v9

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    sub-int v22, v18, v10

    sub-int v23, v5, v9

    add-int v24, v18, v10

    add-int v25, v5, v9

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 545
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHit(FF)I
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v6

    .line 222
    .local v6, r:Landroid/graphics/Rect;
    const/high16 v5, 0x41a0

    .line 223
    .local v5, hysteresis:F
    const/4 v8, 0x1

    .line 225
    .local v8, retval:I
    iget-boolean v10, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCircle:Z

    if-eqz v10, :cond_6

    .line 226
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    sub-float v1, p1, v10

    .line 227
    .local v1, distX:F
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    sub-float v2, p2, v10

    .line 228
    .local v2, distY:F
    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v3, v10

    .line 229
    .local v3, distanceFromCenter:I
    iget-object v10, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->getPaddingLeft()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    div-int/lit8 v7, v10, 0x2

    .line 230
    .local v7, radius:I
    sub-int v0, v3, v7

    .line 231
    .local v0, delta:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_4

    .line 232
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 233
    const/4 v10, 0x0

    cmpg-float v10, v2, v10

    if-gez v10, :cond_1

    .line 234
    const/16 v8, 0x8

    .line 265
    .end local v0           #delta:I
    .end local v1           #distX:F
    .end local v2           #distY:F
    .end local v3           #distanceFromCenter:I
    .end local v7           #radius:I
    :cond_0
    :goto_0
    return v8

    .line 236
    .restart local v0       #delta:I
    .restart local v1       #distX:F
    .restart local v2       #distY:F
    .restart local v3       #distanceFromCenter:I
    .restart local v7       #radius:I
    :cond_1
    const/16 v8, 0x10

    goto :goto_0

    .line 238
    :cond_2
    const/4 v10, 0x0

    cmpg-float v10, v1, v10

    if-gez v10, :cond_3

    .line 239
    const/4 v8, 0x2

    goto :goto_0

    .line 241
    :cond_3
    const/4 v8, 0x4

    goto :goto_0

    .line 243
    :cond_4
    if-ge v3, v7, :cond_5

    .line 244
    const/16 v8, 0x20

    goto :goto_0

    .line 246
    :cond_5
    const/4 v8, 0x1

    goto :goto_0

    .line 250
    .end local v0           #delta:I
    .end local v1           #distX:F
    .end local v2           #distY:F
    .end local v3           #distanceFromCenter:I
    .end local v7           #radius:I
    :cond_6
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    sub-float/2addr v10, v11

    cmpl-float v10, p2, v10

    if-ltz v10, :cond_b

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    add-float/2addr v10, v11

    cmpg-float v10, p2, v10

    if-gez v10, :cond_b

    const/4 v9, 0x1

    .line 251
    .local v9, verticalCheck:Z
    :goto_1
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    sub-float/2addr v10, v11

    cmpl-float v10, p1, v10

    if-ltz v10, :cond_c

    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    add-float/2addr v10, v11

    cmpg-float v10, p1, v10

    if-gez v10, :cond_c

    const/4 v4, 0x1

    .line 253
    .local v4, horizCheck:Z
    :goto_2
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    if-eqz v9, :cond_7

    .line 254
    or-int/lit8 v8, v8, 0x2

    .line 255
    :cond_7
    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    if-eqz v9, :cond_8

    .line 256
    or-int/lit8 v8, v8, 0x4

    .line 257
    :cond_8
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9

    if-eqz v4, :cond_9

    .line 258
    or-int/lit8 v8, v8, 0x8

    .line 259
    :cond_9
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_a

    if-eqz v4, :cond_a

    .line 260
    or-int/lit8 v8, v8, 0x10

    .line 262
    :cond_a
    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    float-to-int v10, p1

    float-to-int v11, p2

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 263
    const/16 v8, 0x20

    goto/16 :goto_0

    .line 250
    .end local v4           #horizCheck:Z
    .end local v9           #verticalCheck:Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_1

    .line 251
    .restart local v9       #verticalCheck:Z
    :cond_c
    const/4 v4, 0x0

    goto :goto_2
.end method

.method getInsetWhenOverHeight(F)F
    .locals 5
    .parameter "fHeight"

    .prologue
    .line 407
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    instance-of v3, v3, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    if-eqz v3, :cond_0

    .line 408
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    check-cast v0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    .line 409
    .local v0, cropImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;
    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v2

    .line 411
    .local v2, fScale:F
    mul-float v1, p1, v2

    .line 415
    .local v1, fRealHeight:F
    iget v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfHeightBoundary:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    .line 416
    iget v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfHeightBoundary:F

    sub-float v3, v1, v3

    const/high16 v4, 0x4000

    mul-float/2addr v4, v2

    div-float/2addr v3, v4

    .line 420
    .end local v0           #cropImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;
    .end local v1           #fRealHeight:F
    .end local v2           #fScale:F
    :goto_0
    return v3

    :cond_0
    const/high16 v3, -0x4080

    goto :goto_0
.end method

.method getInsetWhenOverWidth(F)F
    .locals 5
    .parameter "fWidth"

    .prologue
    .line 390
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    instance-of v3, v3, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    if-eqz v3, :cond_0

    .line 391
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    check-cast v0, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    .line 392
    .local v0, cropImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;
    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v2

    .line 394
    .local v2, fScale:F
    mul-float v1, p1, v2

    .line 398
    .local v1, fRealWidth:F
    iget v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    .line 399
    iget v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    sub-float v3, v1, v3

    const/high16 v4, 0x4000

    mul-float/2addr v4, v2

    div-float/2addr v3, v4

    .line 403
    .end local v0           #cropImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;
    .end local v1           #fRealWidth:F
    .end local v2           #fScale:F
    :goto_0
    return v3

    :cond_0
    const/high16 v3, -0x4080

    goto :goto_0
.end method

.method public getMode()Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    return-object v0
.end method

.method getPaddingBottom()F
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method getPaddingLeft()F
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method getPaddingRight()F
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method getPaddingTop()F
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method growBy(FF)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/high16 v10, 0x4000

    const/4 v9, 0x0

    .line 426
    iget-boolean v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v7, :cond_0

    .line 427
    cmpl-float v7, p1, v9

    if-eqz v7, :cond_e

    .line 428
    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v7

    .line 434
    :cond_0
    :goto_0
    new-instance v5, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v5, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 435
    .local v5, r:Landroid/graphics/RectF;
    cmpl-float v7, p1, v9

    if-lez v7, :cond_1

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float v8, v10, p1

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    .line 436
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v7, v8

    div-float v1, v7, v10

    .line 437
    .local v1, adjustment:F
    move p1, v1

    .line 438
    iget-boolean v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v7, :cond_1

    .line 439
    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v7

    .line 441
    .end local v1           #adjustment:F
    :cond_1
    cmpl-float v7, p2, v9

    if-lez v7, :cond_2

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float v8, v10, p2

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 442
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v8

    sub-float/2addr v7, v8

    div-float v1, v7, v10

    .line 443
    .restart local v1       #adjustment:F
    move p2, v1

    .line 444
    iget-boolean v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v7, :cond_2

    .line 445
    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v7

    .line 448
    .end local v1           #adjustment:F
    :cond_2
    neg-float v7, p1

    neg-float v8, p2

    invoke-virtual {v5, v7, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 452
    const/high16 v0, 0x41c8

    .line 454
    .local v0, MIN_SIZE:F
    const/high16 v6, 0x41c8

    .line 455
    .local v6, widthCap:F
    const/high16 v4, 0x41c8

    .line 457
    .local v4, heightCap:F
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    .line 458
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 461
    :cond_3
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_4

    .line 462
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 465
    :cond_4
    iget-boolean v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v7, :cond_5

    .line 466
    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-lez v7, :cond_f

    .line 467
    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    div-float v4, v6, v7

    .line 473
    :cond_5
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpg-float v7, v7, v6

    if-gez v7, :cond_6

    .line 474
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float v7, v6, v7

    neg-float v7, v7

    div-float/2addr v7, v10

    invoke-virtual {v5, v7, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 477
    :cond_6
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpg-float v7, v7, v4

    if-gez v7, :cond_7

    .line 478
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float v7, v4, v7

    neg-float v7, v7

    div-float/2addr v7, v10

    invoke-virtual {v5, v9, v7}, Landroid/graphics/RectF;->inset(FF)V

    .line 481
    :cond_7
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/HighlightView;->getInsetWhenOverWidth(F)F

    move-result v2

    .line 482
    .local v2, fInsetX:F
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/album/TabPluginDevice/HighlightView;->getInsetWhenOverHeight(F)F

    move-result v3

    .line 483
    .local v3, fInsetY:F
    iget-boolean v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_8

    .line 484
    cmpl-float v7, v2, v9

    if-lez v7, :cond_10

    cmpl-float v7, v2, v3

    if-ltz v7, :cond_10

    .line 485
    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    div-float v3, v2, v7

    .line 491
    :cond_8
    :goto_2
    cmpl-float v7, v2, v9

    if-gtz v7, :cond_9

    cmpl-float v7, v3, v9

    if-lez v7, :cond_a

    .line 492
    :cond_9
    invoke-virtual {v5, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 495
    :cond_a
    cmpl-float v7, v2, v9

    if-gez v7, :cond_b

    cmpl-float v7, v3, v9

    if-ltz v7, :cond_11

    .line 496
    :cond_b
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mbOversize:Z

    .line 507
    :goto_3
    iget v7, v5, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_12

    .line 508
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget v8, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    invoke-direct {p0, v5, v7, v9}, Lcom/htc/album/TabPluginDevice/HighlightView;->shift(Landroid/graphics/RectF;FF)V

    .line 512
    :cond_c
    :goto_4
    iget v7, v5, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_13

    .line 513
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget v8, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v7, v8

    invoke-direct {p0, v5, v9, v7}, Lcom/htc/album/TabPluginDevice/HighlightView;->shift(Landroid/graphics/RectF;FF)V

    .line 539
    :cond_d
    :goto_5
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 540
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 541
    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 542
    return-void

    .line 429
    .end local v0           #MIN_SIZE:F
    .end local v2           #fInsetX:F
    .end local v3           #fInsetY:F
    .end local v4           #heightCap:F
    .end local v5           #r:Landroid/graphics/RectF;
    .end local v6           #widthCap:F
    :cond_e
    cmpl-float v7, p2, v9

    if-eqz v7, :cond_0

    .line 430
    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v7

    goto/16 :goto_0

    .line 469
    .restart local v0       #MIN_SIZE:F
    .restart local v4       #heightCap:F
    .restart local v5       #r:Landroid/graphics/RectF;
    .restart local v6       #widthCap:F
    :cond_f
    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    mul-float v6, v4, v7

    goto/16 :goto_1

    .line 487
    .restart local v2       #fInsetX:F
    .restart local v3       #fInsetY:F
    :cond_10
    cmpl-float v7, v3, v9

    if-lez v7, :cond_8

    cmpl-float v7, v3, v2

    if-lez v7, :cond_8

    .line 488
    iget v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    mul-float v2, v3, v7

    goto :goto_2

    .line 498
    :cond_11
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mbOversize:Z

    goto :goto_3

    .line 509
    :cond_12
    iget v7, v5, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_c

    .line 510
    iget v7, v5, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v8

    neg-float v7, v7

    invoke-direct {p0, v5, v7, v9}, Lcom/htc/album/TabPluginDevice/HighlightView;->shift(Landroid/graphics/RectF;FF)V

    goto :goto_4

    .line 514
    :cond_13
    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_d

    .line 515
    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    neg-float v7, v7

    invoke-direct {p0, v5, v9, v7}, Lcom/htc/album/TabPluginDevice/HighlightView;->shift(Landroid/graphics/RectF;FF)V

    goto :goto_5
.end method

.method handleMotion(IFF)V
    .locals 7
    .parameter "edge"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 269
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    .line 270
    .local v0, r:Landroid/graphics/Rect;
    if-ne p1, v4, :cond_0

    .line 289
    :goto_0
    return-void

    .line 272
    :cond_0
    const/16 v5, 0x20

    if-ne p1, v5, :cond_1

    .line 273
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, p3

    invoke-virtual {p0, v3, v4}, Lcom/htc/album/TabPluginDevice/HighlightView;->moveBy(FF)V

    goto :goto_0

    .line 276
    :cond_1
    and-int/lit8 v5, p1, 0x6

    if-nez v5, :cond_2

    .line 277
    const/4 p2, 0x0

    .line 279
    :cond_2
    and-int/lit8 v5, p1, 0x18

    if-nez v5, :cond_3

    .line 280
    const/4 p3, 0x0

    .line 282
    :cond_3
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v1, p2, v5

    .line 283
    .local v1, xDelta:F
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, p3, v5

    .line 284
    .local v2, yDelta:F
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_4

    move v5, v3

    :goto_1
    int-to-float v5, v5

    mul-float/2addr v5, v1

    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_5

    :goto_2
    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p0, v5, v3}, Lcom/htc/album/TabPluginDevice/HighlightView;->growBy(FF)V

    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mIsFocused:Z

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 556
    return-void
.end method

.method public modify(IJ)V
    .locals 7
    .parameter "keyCode"
    .parameter "repeatCount"

    .prologue
    const v6, 0x3c23d70a

    const/4 v5, 0x0

    .line 586
    const v3, 0x3dcccccd

    long-to-float v4, p2

    mul-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 587
    .local v0, factor:F
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v0, v3

    .line 588
    .local v2, widthUnits:F
    move v1, v2

    .line 590
    .local v1, heightUnits:F
    packed-switch p1, :pswitch_data_0

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 593
    :pswitch_0
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v4, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Move:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-ne v3, v4, :cond_1

    .line 594
    neg-float v3, v2

    invoke-virtual {p0, v3, v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->moveBy(FF)V

    goto :goto_0

    .line 595
    :cond_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v4, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Grow:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-ne v3, v4, :cond_0

    .line 596
    neg-float v3, v2

    invoke-virtual {p0, v3, v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->growBy(FF)V

    goto :goto_0

    .line 600
    :pswitch_1
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v4, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Move:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-ne v3, v4, :cond_2

    .line 601
    invoke-virtual {p0, v2, v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->moveBy(FF)V

    goto :goto_0

    .line 602
    :cond_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v4, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Grow:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-ne v3, v4, :cond_0

    .line 603
    invoke-virtual {p0, v2, v5}, Lcom/htc/album/TabPluginDevice/HighlightView;->growBy(FF)V

    goto :goto_0

    .line 607
    :pswitch_2
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v4, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Move:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-ne v3, v4, :cond_3

    .line 608
    neg-float v3, v1

    invoke-virtual {p0, v5, v3}, Lcom/htc/album/TabPluginDevice/HighlightView;->moveBy(FF)V

    goto :goto_0

    .line 609
    :cond_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v4, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Grow:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-ne v3, v4, :cond_0

    .line 610
    neg-float v3, v1

    invoke-virtual {p0, v5, v3}, Lcom/htc/album/TabPluginDevice/HighlightView;->growBy(FF)V

    goto :goto_0

    .line 614
    :pswitch_3
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v4, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Move:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-ne v3, v4, :cond_4

    .line 615
    invoke-virtual {p0, v5, v1}, Lcom/htc/album/TabPluginDevice/HighlightView;->moveBy(FF)V

    goto :goto_0

    .line 616
    :cond_4
    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    sget-object v4, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->Grow:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-ne v3, v4, :cond_0

    .line 617
    invoke-virtual {p0, v5, v1}, Lcom/htc/album/TabPluginDevice/HighlightView;->growBy(FF)V

    goto :goto_0

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method moveBy(FF)V
    .locals 7
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/16 v6, -0xa

    const/4 v5, 0x0

    .line 292
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 294
    .local v0, invalRect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 295
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 299
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 303
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 304
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 305
    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 306
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 307
    return-void
.end method

.method public setFocus(Z)V
    .locals 0
    .parameter "f"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mIsFocused:Z

    .line 81
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mHidden:Z

    .line 85
    return-void
.end method

.method public setMode(Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_0

    .line 215
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    .line 216
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 218
    :cond_0
    return-void
.end method

.method public setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .locals 5
    .parameter "m"
    .parameter "imageRect"
    .parameter "cropRect"
    .parameter "circle"
    .parameter "maintainAspectRatio"

    .prologue
    const/16 v4, 0x7d

    const/16 v3, 0x32

    .line 560
    if-eqz p4, :cond_0

    .line 561
    const/4 p5, 0x1

    .line 562
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    .line 564
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    .line 565
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    .line 566
    iput-boolean p5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMaintainAspectRatio:Z

    .line 567
    iput-boolean p4, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCircle:Z

    .line 569
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mInitialAspectRatio:F

    .line 570
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 573
    const/high16 v0, 0x4040

    .line 574
    .local v0, StrokeWidth:F
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 575
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 576
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 577
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 578
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 580
    sget-object v1, Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;->None:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    iput-object v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mMode:Lcom/htc/album/TabPluginDevice/HighlightView$ModifyMode;

    .line 581
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/HighlightView;->initHighlightView()V

    .line 582
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 645
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    .line 646
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    .line 651
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    .line 652
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    .line 653
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    .line 654
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 655
    return-void
.end method

.method updateBoundary()V
    .locals 9

    .prologue
    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 327
    const/4 v4, 0x0

    .line 328
    .local v4, fScreenWidth:F
    const/4 v3, 0x0

    .line 330
    .local v3, fScreenHeight:F
    const/4 v2, 0x0

    .line 332
    .local v2, fOutlineSize:F
    const/4 v1, 0x0

    .line 333
    .local v1, fImageWidth:F
    const/4 v0, 0x0

    .line 335
    .local v0, fImageHeight:F
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_0

    .line 336
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    .line 339
    :cond_0
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 340
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v8, v2

    sub-float v4, v5, v6

    .line 341
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v8, v2

    sub-float v3, v5, v6

    .line 346
    :cond_1
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    if-eqz v5, :cond_2

    .line 347
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 348
    iget-object v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 351
    :cond_2
    cmpg-float v5, v3, v7

    if-lez v5, :cond_3

    cmpg-float v5, v4, v7

    if-lez v5, :cond_3

    cmpg-float v5, v0, v7

    if-lez v5, :cond_3

    cmpg-float v5, v1, v7

    if-gtz v5, :cond_4

    .line 387
    :cond_3
    :goto_0
    return-void

    .line 355
    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mbOversize:Z

    .line 357
    div-float v5, v4, v3

    iput v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectScreen:F

    .line 358
    div-float v5, v1, v0

    iput v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectImage:F

    .line 360
    iget v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectImage:F

    iget v6, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectScreen:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    .line 362
    cmpl-float v5, v0, v3

    if-lez v5, :cond_5

    .line 363
    iput v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfHeightBoundary:F

    .line 368
    :goto_1
    iget v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfHeightBoundary:F

    iget v6, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectScreen:F

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    goto :goto_0

    .line 366
    :cond_5
    iput v3, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfHeightBoundary:F

    goto :goto_1

    .line 369
    :cond_6
    iget v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectImage:F

    iget v6, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectScreen:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    .line 371
    cmpl-float v5, v1, v4

    if-lez v5, :cond_7

    .line 372
    iput v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    .line 377
    :goto_2
    iget v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    iget v6, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfAspectScreen:F

    div-float/2addr v5, v6

    iput v5, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfHeightBoundary:F

    goto :goto_0

    .line 375
    :cond_7
    iput v4, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    goto :goto_2

    .line 380
    :cond_8
    cmpl-float v5, v1, v4

    if-lez v5, :cond_9

    .line 381
    iput v1, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    .line 383
    :cond_9
    cmpl-float v5, v0, v3

    if-lez v5, :cond_3

    .line 384
    iput v0, p0, Lcom/htc/album/TabPluginDevice/HighlightView;->mfWidthBoundary:F

    goto :goto_0
.end method
