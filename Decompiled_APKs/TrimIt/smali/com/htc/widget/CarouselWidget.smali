.class public Lcom/htc/widget/CarouselWidget;
.super Lcom/htc/widget/Gallery;
.source "CarouselWidget.java"

# interfaces
.implements Lcom/htc/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/htc/widget/AdapterView$OnItemClickListener;
.implements Lcom/htc/widget/DragSource;
.implements Lcom/htc/widget/DropTarget;
.implements Lcom/htc/widget/DragScroller;


# static fields
.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "CarouselWidget"


# instance fields
.field final LEFT_SCROLL_SPEED:D

.field final RIGHT_SCROLL_SPEED:D

.field final SCROLL_REGION:I

.field private backgroundBound:Z

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundEnable:Z

.field mAdapter:Lcom/htc/widget/BinAdapter;

.field private mCancelAnimation:Z

.field mCarouselHost:Lcom/htc/widget/CarouselHost;

.field private mColor:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerVerticalOffset:I

.field mDragId:J

.field private mDragItemPos:I

.field private mDragItemView:Landroid/view/View;

.field private mDragMode:I

.field private mDragMode3layout:Z

.field mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

.field private mIndicatorView:Landroid/widget/ImageView;

.field private mIsDrop:Z

.field private mIsInit:Z

.field private mIsRemove:Z

.field private mIsSuccessful:Z

.field private mMemoryMode:Z

.field mOrientation:I

.field private mOriginalWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPoolFocusWidth:I

.field private mRectLeft:I

.field private mRectRight:I

.field mReorderUri:Landroid/net/Uri;

.field private mShowIndicator:Z

.field mTarget:Lcom/htc/widget/DropTarget;

.field mToPos:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private r:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/high16 v3, 0x3fe0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1}, Lcom/htc/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 40
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->SCROLL_REGION:I

    .line 41
    iput-wide v3, p0, Lcom/htc/widget/CarouselWidget;->LEFT_SCROLL_SPEED:D

    .line 42
    iput-wide v3, p0, Lcom/htc/widget/CarouselWidget;->RIGHT_SCROLL_SPEED:D

    .line 47
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mIsInit:Z

    .line 65
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    .line 68
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mMemoryMode:Z

    .line 236
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    .line 772
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->mOrientation:I

    .line 797
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    .line 982
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode3layout:Z

    .line 983
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mCancelAnimation:Z

    .line 1000
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->backgroundBound:Z

    .line 1001
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->backgroundEnable:Z

    .line 1003
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselWidget;->gInit(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/high16 v3, 0x3fe0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->SCROLL_REGION:I

    .line 41
    iput-wide v3, p0, Lcom/htc/widget/CarouselWidget;->LEFT_SCROLL_SPEED:D

    .line 42
    iput-wide v3, p0, Lcom/htc/widget/CarouselWidget;->RIGHT_SCROLL_SPEED:D

    .line 47
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mIsInit:Z

    .line 65
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    .line 68
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mMemoryMode:Z

    .line 236
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    .line 772
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->mOrientation:I

    .line 797
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    .line 982
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode3layout:Z

    .line 983
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mCancelAnimation:Z

    .line 1000
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->backgroundBound:Z

    .line 1001
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->backgroundEnable:Z

    .line 1003
    iput-object v2, p0, Lcom/htc/widget/CarouselWidget;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselWidget;->gInit(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method private createGreenIndicator()V
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mShowIndicator:Z

    .line 651
    return-void
.end method

.method private doTranslateAnimation(IIZ)V
    .locals 3
    .parameter "from"
    .parameter "to"
    .parameter "isRequiredFill"

    .prologue
    .line 448
    if-le p1, p2, :cond_0

    .line 449
    move v0, p1

    .line 450
    .local v0, temp:I
    move p1, p2

    .line 451
    move p2, v0

    .line 453
    add-int/lit8 p1, p1, -0x1

    .line 454
    add-int/lit8 p2, p2, -0x1

    .line 456
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, p3}, Lcom/htc/widget/CarouselWidget;->partialFling(IIIZ)V

    .line 464
    .end local v0           #temp:I
    :goto_0
    iput p1, p0, Lcom/htc/widget/CarouselWidget;->mReorderFrom:I

    .line 465
    iput p2, p0, Lcom/htc/widget/CarouselWidget;->mReorderTo:I

    .line 466
    return-void

    .line 460
    :cond_0
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v1, p2, v2, p3}, Lcom/htc/widget/CarouselWidget;->partialFling(IIIZ)V

    goto :goto_0
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v11

    if-gtz v11, :cond_1

    .line 300
    :cond_0
    return-void

    .line 248
    :cond_1
    const/4 v10, -0x1

    .line 249
    .local v10, x:I
    const/4 v9, 0x0

    .line 250
    .local v9, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v8

    .line 251
    .local v8, shrinkedPos:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getExpandedPosition()I

    move-result v1

    .line 252
    .local v1, expandedPos:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getReducedPosition()I

    move-result v7

    .line 253
    .local v7, reducedPos:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v5

    .line 254
    .local v5, indicatorIndex:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getChildCount()I

    move-result v0

    .line 255
    .local v0, count:I
    const/4 v4, 0x1

    .line 256
    .local v4, index:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v11

    invoke-interface {v11}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 258
    :cond_2
    sget v11, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-gt v0, v11, :cond_5

    .line 259
    const/4 v10, -0x1

    .line 260
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 261
    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v11

    sub-int/2addr v11, v10

    const/4 v12, 0x4

    if-le v11, v12, :cond_3

    .line 262
    int-to-float v11, v10

    iget v12, p0, Lcom/htc/widget/CarouselWidget;->mDividerVerticalOffset:I

    int-to-float v12, v12

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 263
    iget-object v11, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 264
    neg-int v11, v10

    int-to-float v11, v11

    iget v12, p0, Lcom/htc/widget/CarouselWidget;->mDividerVerticalOffset:I

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 265
    add-int/lit8 v4, v4, 0x1

    .line 267
    :cond_3
    invoke-direct {p0, v10}, Lcom/htc/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 268
    invoke-direct {p0, p1, v10}, Lcom/htc/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 269
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_0

    .line 272
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    .line 273
    .local v2, firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v6

    .line 274
    .local v6, lastVisPos:I
    move v3, v2

    .local v3, i:I
    :goto_1
    if-gt v3, v6, :cond_6

    .line 275
    if-eq v3, v8, :cond_7

    if-eq v3, v1, :cond_7

    if-eq v3, v7, :cond_7

    .line 276
    sub-int v11, v3, v2

    invoke-virtual {p0, v11}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 277
    if-eqz v9, :cond_7

    .line 282
    :cond_6
    if-eqz v9, :cond_0

    .line 283
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 284
    :goto_2
    if-ltz v10, :cond_8

    .line 285
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v11

    sub-int/2addr v10, v11

    goto :goto_2

    .line 274
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 288
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 289
    if-eqz v10, :cond_9

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v11

    if-eq v10, v11, :cond_9

    .line 290
    int-to-float v11, v10

    iget v12, p0, Lcom/htc/widget/CarouselWidget;->mDividerVerticalOffset:I

    int-to-float v12, v12

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 291
    iget-object v11, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 292
    neg-int v11, v10

    int-to-float v11, v11

    iget v12, p0, Lcom/htc/widget/CarouselWidget;->mDividerVerticalOffset:I

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 294
    :cond_9
    invoke-direct {p0, v10}, Lcom/htc/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 295
    invoke-direct {p0, p1, v10}, Lcom/htc/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 296
    :cond_a
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_3
.end method

.method private drawRect(Landroid/graphics/Canvas;I)V
    .locals 8
    .parameter "canvas"
    .parameter "x"

    .prologue
    const/4 v7, 0x0

    .line 304
    iget-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mShowIndicator:Z

    if-eqz v1, :cond_0

    .line 305
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p2

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDividerVerticalOffset:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v4

    add-int/2addr v4, p2

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/htc/widget/CarouselWidget;->mPoolFocusWidth:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/htc/widget/CarouselWidget;->r:Landroid/graphics/RectF;

    .line 306
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/CarouselWidget;->mPoolFocusWidth:I

    sub-int/2addr v3, v4

    invoke-direct {v0, p2, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 307
    .local v0, rr:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 309
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/htc/widget/CarouselWidget;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 311
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/htc/widget/CarouselWidget;->mPoolFocusWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 312
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->r:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v7, v7, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 313
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->invalidate()V

    .line 315
    .end local v0           #rr:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private findInsertedPosition(Landroid/view/ViewGroup;IIII)I
    .locals 17
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v8

    .line 643
    :cond_0
    :goto_0
    return v8

    .line 545
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 546
    .local v3, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v15

    add-int v13, p2, v15

    .line 548
    .local v13, scrolledX:I
    if-gtz v3, :cond_2

    .line 549
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/CarouselWidget;->mRectRight:I

    .line 551
    const/4 v8, 0x1

    goto :goto_0

    .line 554
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v14

    .line 555
    .local v14, shrinkedPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getExpandedPosition()I

    move-result v5

    .line 556
    .local v5, expandedPos:I
    const/4 v4, 0x0

    .line 557
    .local v4, dataCount:I
    const/4 v9, 0x0

    .line 558
    .local v9, isAdd:Z
    const/4 v10, 0x0

    .line 559
    .local v10, isLast:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    .line 560
    .local v1, adapter:Landroid/widget/Adapter;
    if-eqz v1, :cond_3

    .line 561
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    .line 562
    if-le v14, v4, :cond_4

    const/4 v9, 0x1

    .line 565
    :cond_3
    :goto_1
    add-int/lit8 v12, v3, -0x1

    .line 566
    .local v12, last_pos:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    if-lt v13, v15, :cond_7

    .line 567
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 568
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getRight()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/CarouselWidget;->mRectRight:I

    .line 570
    if-eqz v9, :cond_5

    .line 571
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/TaskInfo;

    iget v15, v15, Lcom/htc/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v8, v15, 0x1

    goto :goto_0

    .line 562
    .end local v2           #child:Landroid/view/View;
    .end local v12           #last_pos:I
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 572
    .restart local v2       #child:Landroid/view/View;
    .restart local v12       #last_pos:I
    :cond_5
    if-eqz v10, :cond_6

    .line 573
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/TaskInfo;

    iget v15, v15, Lcom/htc/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v8, v15, 0x1

    goto :goto_0

    .line 575
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/TaskInfo;

    iget v8, v15, Lcom/htc/widget/TaskInfo;->taskOrder:I

    goto :goto_0

    .line 579
    .end local v2           #child:Landroid/view/View;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v6

    .line 580
    .local v6, firstVisPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v11

    .line 581
    .local v11, lastVisPos:I
    move v7, v6

    .local v7, i:I
    :goto_2
    if-gt v7, v11, :cond_10

    .line 582
    sub-int v15, v7, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 583
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    .line 584
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/CarouselWidget;->mRectRight:I

    .line 585
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v15

    if-gt v13, v15, :cond_f

    .line 586
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/TaskInfo;

    iget v8, v15, Lcom/htc/widget/TaskInfo;->taskOrder:I

    .line 588
    .local v8, index:I
    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 590
    if-eqz v9, :cond_9

    .line 591
    if-ne v7, v5, :cond_8

    .line 592
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    if-le v13, v15, :cond_0

    .line 595
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    .line 596
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 598
    :cond_8
    if-le v7, v5, :cond_0

    .line 599
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 604
    :cond_9
    if-ne v7, v5, :cond_a

    if-ge v5, v14, :cond_a

    .line 605
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    if-le v13, v15, :cond_0

    .line 608
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    .line 609
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 611
    :cond_a
    if-ne v7, v5, :cond_b

    .line 612
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    if-gt v13, v15, :cond_0

    .line 613
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0

    .line 617
    :cond_b
    if-ge v7, v5, :cond_c

    if-le v7, v14, :cond_c

    .line 618
    const/4 v15, 0x1

    if-le v8, v15, :cond_0

    .line 619
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0

    .line 623
    :cond_c
    if-ge v7, v5, :cond_d

    if-lt v7, v14, :cond_0

    .line 625
    :cond_d
    if-le v7, v5, :cond_e

    if-gt v7, v14, :cond_0

    .line 627
    :cond_e
    if-le v7, v5, :cond_0

    if-ge v7, v14, :cond_0

    .line 628
    if-ge v8, v4, :cond_0

    .line 629
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 581
    .end local v8           #index:I
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 639
    .end local v2           #child:Landroid/view/View;
    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 640
    .restart local v2       #child:Landroid/view/View;
    if-eqz v9, :cond_11

    .line 641
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/TaskInfo;

    iget v15, v15, Lcom/htc/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v8, v15, 0x1

    goto/16 :goto_0

    .line 643
    :cond_11
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/TaskInfo;

    iget v8, v15, Lcom/htc/widget/TaskInfo;->taskOrder:I

    goto/16 :goto_0
.end method

.method private gInit(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDragger:Lcom/htc/widget/DragController;

    .line 99
    iput-boolean v3, p0, Lcom/htc/widget/CarouselWidget;->mMemoryMode:Z

    .line 100
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->mState:I

    .line 101
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->initFlags()V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080af9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 104
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "app_selection_highlight"

    const v3, 0x20a0030

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->mColor:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20d0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->mPoolFocusWidth:I

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->mOrientation:I

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "common_app_bkg_down"

    const v2, 0x20807c4

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/CarouselWidget;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    return-void
.end method

.method private getLocationFromPos(I[I)V
    .locals 5
    .parameter "pos"
    .parameter "loc"

    .prologue
    const/4 v4, 0x0

    .line 469
    invoke-virtual {p0, v4}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 470
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 472
    aget v1, p2, v4

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, p2, v4

    .line 474
    return-void
.end method

.method private initMember()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 138
    iget-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mIsInit:Z

    if-ne v1, v2, :cond_0

    .line 149
    :goto_0
    return-void

    .line 142
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 144
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "There should be AT LEAST ONE element in the TAB."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/CarouselWidget;->mOriginalWidth:I

    .line 148
    iput-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->mIsInit:Z

    goto :goto_0
.end method

.method private isDrawRect(I)Z
    .locals 3
    .parameter "x"

    .prologue
    const/4 v0, 0x1

    .line 318
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 324
    :goto_0
    return v0

    .line 320
    :cond_0
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    if-ge p1, v1, :cond_1

    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    .line 321
    iput p1, p0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    goto :goto_0

    .line 324
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveIndicator(II)V
    .locals 6
    .parameter "scrolledX"
    .parameter "overlap_pos"

    .prologue
    .line 662
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 663
    .local v1, loc2:[I
    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselWidget;->getLocationInWindow([I)V

    .line 664
    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getPaddingTop()I

    move-result v5

    add-int v3, v4, v5

    .line 666
    .local v3, y:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, p2, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 669
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 670
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v4

    if-eq v4, p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v2

    .line 672
    .local v2, shrinkedPos:I
    if-gt p2, v2, :cond_1

    .line 673
    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 674
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 675
    invoke-virtual {p0, p2}, Lcom/htc/widget/CarouselWidget;->setIndicatorIndex(I)V

    .line 681
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->startWaveRunnable()V

    .line 704
    .end local v2           #shrinkedPos:I
    :cond_0
    :goto_1
    return-void

    .line 677
    .restart local v2       #shrinkedPos:I
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 678
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 679
    invoke-virtual {p0, p2}, Lcom/htc/widget/CarouselWidget;->setIndicatorIndex(I)V

    goto :goto_0

    .line 684
    .end local v2           #shrinkedPos:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne p2, v4, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, p2, v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v4}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 686
    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v4

    if-eq v4, p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v2

    .line 689
    .restart local v2       #shrinkedPos:I
    if-gt p2, v2, :cond_3

    .line 690
    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 691
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 692
    invoke-virtual {p0, p2}, Lcom/htc/widget/CarouselWidget;->setIndicatorIndex(I)V

    .line 698
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->startWaveRunnable()V

    goto :goto_1

    .line 694
    :cond_3
    add-int/lit8 v4, p2, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 695
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 696
    invoke-virtual {p0, p2}, Lcom/htc/widget/CarouselWidget;->setIndicatorIndex(I)V

    goto :goto_2
.end method

.method private removeIndicator()V
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mShowIndicator:Z

    .line 737
    return-void
.end method

.method private startReduceCountAnimation()V
    .locals 3

    .prologue
    .line 986
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->setDragBinGridView(Z)V

    .line 987
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v0

    .line 988
    .local v0, orgWidth:I
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->setDragBinGridView(Z)V

    .line 989
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v1

    .line 990
    .local v1, targetWidth:I
    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/CarouselWidget;->startWidthAnimation(II)V

    .line 991
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 747
    const/4 v0, 0x1

    return v0
.end method

.method cancelAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 994
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mCancelAnimation:Z

    .line 995
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode3layout:Z

    .line 996
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mShowIndicator:Z

    .line 997
    invoke-super {p0}, Lcom/htc/widget/Gallery;->cancelAnimation()V

    .line 998
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 877
    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispatchSetSelected(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->dispatchSetSelected(Z)V

    return-void
.end method

.method doAnimationForDifferentTarget(Lcom/htc/widget/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 393
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    .line 394
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    iput-object v0, p0, Lcom/htc/widget/CarouselWidget;->mAdapter:Lcom/htc/widget/BinAdapter;

    .line 395
    iput-object p1, p0, Lcom/htc/widget/CarouselWidget;->mTarget:Lcom/htc/widget/DropTarget;

    .line 401
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->startWaveRunnable()V

    .line 403
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 331
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->backgroundEnable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 332
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->backgroundBound:Z

    if-nez v0, :cond_2

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->backgroundBound:Z

    .line 334
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 338
    :cond_3
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->draw(Landroid/graphics/Canvas;)V

    .line 340
    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsDrop:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsRemove:Z

    if-eqz v0, :cond_4

    .line 341
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDragger:Lcom/htc/widget/DragController;

    check-cast v0, Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->removeIndicator()V

    .line 342
    iput-boolean v3, p0, Lcom/htc/widget/CarouselWidget;->mIsRemove:Z

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 347
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselWidget;->drawDivider(Landroid/graphics/Canvas;)V

    .line 351
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_6

    .line 352
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 355
    :cond_6
    return-void

    .line 348
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    sget v1, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-gt v0, v1, :cond_5

    .line 349
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselWidget;->drawDivider(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public enableSecondBackground(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1007
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->backgroundBound:Z

    .line 1008
    iput-boolean p1, p0, Lcom/htc/widget/CarouselWidget;->backgroundEnable:Z

    .line 1009
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1011
    .local v0, context:Landroid/content/Context;
    iget-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->backgroundEnable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1012
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_app_bkg_down"

    const v3, 0x20807c4

    invoke-static {v0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/CarouselWidget;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1014
    :cond_0
    return-void
.end method

.method public bridge synthetic forceStopPartialFling()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Lcom/htc/widget/Gallery;->forceStopPartialFling()V

    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getStateWidget()I
    .locals 1

    .prologue
    .line 940
    iget v0, p0, Lcom/htc/widget/CarouselWidget;->mState:I

    return v0
.end method

.method public getWidgetHeight()I
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method initFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsDrop:Z

    .line 131
    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsRemove:Z

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsSuccessful:Z

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    .line 134
    return-void
.end method

.method initLayout()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 72
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 73
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20500b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 75
    .local v0, height:I
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, v0, v2

    iput v2, p0, Lcom/htc/widget/CarouselWidget;->mDividerVerticalOffset:I

    .line 80
    :cond_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 83
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x50

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    const/high16 v2, 0x300

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->setScrollBarStyle(I)V

    .line 89
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, -0x1

    const v4, 0x2080504

    const-string v5, "common_slide_bar"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/widget/CarouselSkinUtil;->getDrawable(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/widget/CarouselWidget;->setSpacing(I)V

    .line 92
    invoke-virtual {p0, v6}, Lcom/htc/widget/CarouselWidget;->setFocusable(Z)V

    .line 93
    invoke-virtual {p0, v6}, Lcom/htc/widget/CarouselWidget;->setFocusableInTouchMode(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->forceLayout()V

    .line 95
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/widget/FastScroller;->isDragging()Z

    move-result v0

    .line 948
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 3
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 153
    const-string v0, "CarouselWidget"

    const-string v1, "onLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mDragMode3layout:Z

    if-eqz v0, :cond_0

    .line 156
    iput-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->mDragMode3layout:Z

    .line 157
    invoke-direct {p0}, Lcom/htc/widget/CarouselWidget;->startReduceCountAnimation()V

    .line 159
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/Gallery;->layout(IZ)V

    .line 161
    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsDrop:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsRemove:Z

    if-nez v0, :cond_1

    .line 162
    iput-boolean v2, p0, Lcom/htc/widget/CarouselWidget;->mIsDrop:Z

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsRemove:Z

    .line 165
    :cond_1
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x1

    .line 408
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/BinAdapter;

    .line 410
    .local v13, adapter:Lcom/htc/widget/BinAdapter;
    invoke-virtual {v13}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    .line 411
    .local v0, handle:Lcom/htc/content/NotifyingAsyncQueryHandler;
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-ne v1, v14, :cond_2

    .line 412
    if-eqz v0, :cond_1

    .line 413
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 414
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "is_host"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 415
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/htc/widget/CarouselWidget;->mToPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 419
    iput-boolean v14, p0, Lcom/htc/widget/CarouselWidget;->mIsDrop:Z

    .line 442
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->realign()V

    .line 444
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    .line 445
    return-void

    .line 417
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :cond_2
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 421
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 422
    .restart local v4       #values:Landroid/content/ContentValues;
    const-string v1, "is_host"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    const-string v1, "task_order"

    iget v2, p0, Lcom/htc/widget/CarouselWidget;->mToPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    if-eqz v0, :cond_3

    .line 425
    const/16 v7, 0x3ea

    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mToPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/widget/CarouselWidget;->mDragId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v0

    move-object v10, v4

    move-object v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 429
    iput-boolean v14, p0, Lcom/htc/widget/CarouselWidget;->mIsDrop:Z

    goto :goto_0

    .line 427
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_4
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 431
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mTarget:Lcom/htc/widget/DropTarget;

    instance-of v1, v1, Lcom/htc/widget/BinGridView;

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mDragger:Lcom/htc/widget/DragController;

    check-cast v1, Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->setNextTab()V

    .line 434
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mTarget:Lcom/htc/widget/DropTarget;

    check-cast v1, Lcom/htc/widget/BinGridView;

    invoke-virtual {v1}, Lcom/htc/widget/BinGridView;->addtoDB()V

    .line 436
    iget-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mCancelAnimation:Z

    if-nez v1, :cond_0

    .line 437
    iput-boolean v14, p0, Lcom/htc/widget/CarouselWidget;->mDragMode3layout:Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 775
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 777
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/htc/widget/CarouselWidget;->mOrientation:I

    if-eq v1, v2, :cond_1

    .line 781
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselWidget;->setOrientationChangedFlag(Z)V

    .line 782
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 783
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "common_app_bkg_down"

    const v3, 0x20807c4

    invoke-static {v0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/CarouselWidget;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 787
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->backgroundBound:Z

    .line 791
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/widget/CarouselWidget;->mOrientation:I

    .line 793
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->initFlags()V

    .line 794
    return-void
.end method

.method public bridge synthetic onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDragEnter(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/htc/widget/CarouselWidget;->initMember()V

    .line 658
    invoke-direct {p0}, Lcom/htc/widget/CarouselWidget;->createGreenIndicator()V

    .line 659
    return-void
.end method

.method public onDragExit(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/htc/widget/CarouselWidget;->removeIndicator()V

    .line 743
    return-void
.end method

.method public onDragOver(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 12
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 712
    move-object v0, p0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/CarouselWidget;->findInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v10

    .line 713
    .local v10, pos:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getScrollX()I

    move-result v0

    add-int v11, p2, v0

    .line 715
    .local v11, scrolledX:I
    invoke-direct {p0, v11, v10}, Lcom/htc/widget/CarouselWidget;->moveIndicator(II)V

    .line 719
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLeft()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    if-ge p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    sget v1, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-le v0, v1, :cond_1

    .line 720
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->scrollRight()V

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getRight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    if-le p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    sget v1, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-le v0, v1, :cond_0

    .line 722
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v7

    .line 723
    .local v7, firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 724
    .local v8, lastPos:I
    sub-int v0, v8, v7

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 725
    .local v9, lastVisView:Landroid/view/View;
    if-eqz v9, :cond_2

    .line 726
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 727
    .local v6, anchor:I
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le v6, v0, :cond_0

    .line 730
    .end local v6           #anchor:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->scrollLeft()V

    goto :goto_0
.end method

.method public onDrop(Lcom/htc/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->initFlags()V

    move-object v0, p0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 479
    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/CarouselWidget;->findInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v10

    .local v10, pos:I
    move-object/from16 v8, p6

    .line 480
    check-cast v8, Lcom/htc/widget/TaskInfo;

    .line 481
    .local v8, info:Lcom/htc/widget/TaskInfo;
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/BinAdapter;

    .line 482
    .local v7, adapter:Lcom/htc/widget/BinAdapter;
    invoke-virtual {v7}, Lcom/htc/widget/BinAdapter;->getHandler()Lcom/htc/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    .line 483
    .local v0, handle:Lcom/htc/content/NotifyingAsyncQueryHandler;
    invoke-virtual {v7}, Lcom/htc/widget/BinAdapter;->getUri()Landroid/net/Uri;

    move-result-object v11

    .line 484
    .local v11, uri:Landroid/net/Uri;
    iput-object v7, p0, Lcom/htc/widget/CarouselWidget;->mAdapter:Lcom/htc/widget/BinAdapter;

    .line 485
    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 487
    .local v9, loc:[I
    check-cast p1, Lcom/htc/widget/DropTarget;

    .end local p1
    if-eq p0, p1, :cond_1

    .line 488
    iput-object v11, p0, Lcom/htc/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    .line 489
    iput v10, p0, Lcom/htc/widget/CarouselWidget;->mToPos:I

    .line 490
    iget-wide v1, v8, Lcom/htc/widget/TaskInfo;->_id:J

    iput-wide v1, p0, Lcom/htc/widget/CarouselWidget;->mDragId:J

    .line 491
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    .line 493
    invoke-direct {p0, v10, v9}, Lcom/htc/widget/CarouselWidget;->getLocationFromPos(I[I)V

    .line 494
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mDragger:Lcom/htc/widget/DragController;

    check-cast v1, Lcom/htc/widget/CarouselHost;

    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v5, 0x1

    aget v5, v9, v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Lcom/htc/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    .line 497
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->onAnimationEnd()V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 506
    .local v3, reorderUri:Landroid/net/Uri;
    const-string v1, "reorder_task"

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 508
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v12, v8, Lcom/htc/widget/TaskInfo;->_id:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "from"

    iget v5, p0, Lcom/htc/widget/CarouselWidget;->mDragItemPos:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "to"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "gId"

    const-string v5, "gId"

    invoke-virtual {v11, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 514
    iput-object v3, p0, Lcom/htc/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    .line 515
    iput v10, p0, Lcom/htc/widget/CarouselWidget;->mToPos:I

    .line 516
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    .line 518
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mDragItemPos:I

    if-eq v1, v10, :cond_2

    .line 519
    invoke-direct {p0, v10, v9}, Lcom/htc/widget/CarouselWidget;->getLocationFromPos(I[I)V

    .line 520
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mDragger:Lcom/htc/widget/DragController;

    check-cast v1, Lcom/htc/widget/CarouselHost;

    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v5, 0x1

    aget v5, v9, v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Lcom/htc/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    .line 523
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->onAnimationEnd()V

    .line 526
    :cond_2
    if-eqz v0, :cond_3

    .line 527
    iget v1, p0, Lcom/htc/widget/CarouselWidget;->mDragItemPos:I

    if-ne v1, v10, :cond_0

    .line 528
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 529
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "is_host"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 530
    const/16 v1, 0x3e8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 531
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mDragger:Lcom/htc/widget/DragController;

    check-cast v1, Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->removeIndicator()V

    goto/16 :goto_0

    .line 534
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDropAnimationEnd(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mIsSuccessful:Z

    if-nez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDragger:Lcom/htc/widget/DragController;

    check-cast v0, Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselHost;->removeIndicator()V

    .line 368
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    .line 370
    :cond_1
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 5
    .parameter "target"
    .parameter "success"

    .prologue
    const/4 v4, 0x0

    .line 377
    iput-boolean p2, p0, Lcom/htc/widget/CarouselWidget;->mIsSuccessful:Z

    .line 378
    if-nez p2, :cond_1

    .line 379
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 380
    .local v0, loc:[I
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 381
    iget-object v1, p0, Lcom/htc/widget/CarouselWidget;->mDragger:Lcom/htc/widget/DragController;

    check-cast v1, Lcom/htc/widget/CarouselHost;

    aget v2, v0, v4

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    .line 383
    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x20c01bc

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 390
    .end local v0           #loc:[I
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 387
    .restart local p1
    :cond_1
    check-cast p1, Lcom/htc/widget/DragSource;

    .end local p1
    if-eq p1, p0, :cond_2

    .line 388
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0, p0}, Lcom/htc/widget/CarouselWidget;->setOnItemLongClickListener(Lcom/htc/widget/AdapterView$OnItemLongClickListener;)V

    .line 169
    invoke-virtual {p0, p0}, Lcom/htc/widget/CarouselWidget;->setOnItemClickListener(Lcom/htc/widget/AdapterView$OnItemClickListener;)V

    .line 170
    return-void
.end method

.method public bridge synthetic onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 815
    .local p1, parent:Lcom/htc/widget/AdapterView;,"Lcom/htc/widget/AdapterView<*>;"
    iget v2, p0, Lcom/htc/widget/CarouselWidget;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 831
    :goto_0
    return-void

    .line 817
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/TaskInfo;

    .line 818
    .local v0, info:Lcom/htc/widget/TaskInfo;
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    iget-object v3, v0, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 821
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .line 822
    .local v1, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v2, "system_server"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "tab_index"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "tab_index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 825
    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 826
    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    goto :goto_0

    .line 815
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onItemLongClick(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/AdapterView;,"Lcom/htc/widget/AdapterView<*>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 177
    if-nez p2, :cond_0

    .line 178
    const-string v0, "CarouselWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item long click: NULL~!! position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 210
    :goto_0
    return v0

    .line 181
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 182
    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 186
    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mMemoryMode:Z

    if-nez v0, :cond_3

    .line 190
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->openDrawer()V

    move v0, v1

    .line 192
    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/TaskInfo;

    iget v0, v0, Lcom/htc/widget/TaskInfo;->taskOrder:I

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->mDragItemPos:I

    .line 196
    iput-object p2, p0, Lcom/htc/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->mRectLeft:I

    .line 199
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/CarouselWidget;->mRectRight:I

    .line 200
    iget v0, p0, Lcom/htc/widget/CarouselWidget;->mDragItemPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselWidget;->setShrinkedPosition(I)V

    .line 201
    iget v0, p0, Lcom/htc/widget/CarouselWidget;->mDragItemPos:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 202
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->requestLayout()V

    .line 204
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->initFlags()V

    .line 205
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDragger:Lcom/htc/widget/DragController;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, p2, p0, v3, v2}, Lcom/htc/widget/DragController;->startDrag(Landroid/view/View;Lcom/htc/widget/DragSource;Ljava/lang/Object;I)V

    .line 206
    const-string v0, "CarouselWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item long click: position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0}, Lcom/htc/widget/CarouselWidget;->initMember()V

    move v0, v1

    .line 210
    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keycode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 885
    sparse-switch p1, :sswitch_data_0

    .line 922
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v2, :cond_3

    .line 924
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 926
    .local v0, content:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 928
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    .line 929
    .local v1, handle:Z
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 935
    .end local v0           #content:Landroid/view/View;
    .end local v1           #handle:Z
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 888
    :sswitch_1
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 890
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v2, :cond_1

    .line 891
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/widget/FastScroller;->movePrevious()Z

    .line 894
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 902
    :sswitch_2
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 904
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v2, :cond_2

    .line 905
    iget-object v2, p0, Lcom/htc/widget/CarouselWidget;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/widget/FastScroller;->moveNext()Z

    .line 909
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 911
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 935
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/htc/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 885
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v1, 0x0

    .line 1018
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1021
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/Gallery;->onSizeChanged(IIII)V

    .line 1022
    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method openDrawer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/CarouselWidget;->mMemoryMode:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselSlidingDrawer;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselSlidingDrawer;->open()V

    .line 219
    iput-boolean v1, p0, Lcom/htc/widget/CarouselWidget;->mCancelAnimation:Z

    .line 220
    invoke-virtual {p0, v1}, Lcom/htc/widget/CarouselWidget;->setOrientationChangedFlag(Z)V

    .line 223
    :cond_0
    return-void
.end method

.method public bridge synthetic partialFling(III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/Gallery;->partialFling(III)V

    return-void
.end method

.method public bridge synthetic partialFling(IIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/Gallery;->partialFling(IIIZ)V

    return-void
.end method

.method realign()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 954
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    sget v4, Lcom/htc/widget/AbsSpinner;->MAX_AVERAGE_COUNT:I

    if-le v3, v4, :cond_0

    .line 960
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v0

    .line 961
    .local v0, firstVisPos:I
    const/4 v1, -0x1

    .line 963
    .local v1, lastPos:I
    const/4 v2, 0x0

    .line 964
    .local v2, lastView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 965
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 966
    sub-int v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 968
    :cond_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 969
    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 970
    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mToPos:I

    add-int/lit8 v4, v1, 0x2

    if-ne v3, v4, :cond_0

    .line 972
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/widget/CarouselWidget;->scrollBy(I)V

    goto :goto_0

    .line 974
    :cond_3
    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_4

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v5, :cond_4

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 975
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/widget/CarouselWidget;->scrollBy(I)V

    goto :goto_0

    .line 977
    :cond_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_6

    iget v3, p0, Lcom/htc/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v5, :cond_0

    .line 978
    :cond_6
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0
.end method

.method public bridge synthetic scrollBy(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->scrollBy(I)V

    return-void
.end method

.method public scrollLeft()V
    .locals 4

    .prologue
    .line 755
    const-string v0, "CarouselWidget"

    const-string v1, "scrollLeft()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    neg-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/widget/Gallery;->scrollBy(I)V

    .line 759
    return-void
.end method

.method public scrollRight()V
    .locals 4

    .prologue
    .line 766
    const-string v0, "CarouselWidget"

    const-string v1, "scrollRight()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/widget/Gallery;->scrollBy(I)V

    .line 770
    return-void
.end method

.method public bridge synthetic setAnimationDuration(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->setAnimationDuration(I)V

    return-void
.end method

.method public bridge synthetic setCallbackDuringFling(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->setCallbackDuringFling(Z)V

    return-void
.end method

.method public bridge synthetic setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->setCallbackOnUnselectedItemClick(Z)V

    return-void
.end method

.method setCarouselHost(Lcom/htc/widget/CarouselHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 811
    iput-object p1, p0, Lcom/htc/widget/CarouselWidget;->mCarouselHost:Lcom/htc/widget/CarouselHost;

    .line 812
    return-void
.end method

.method setCountText(ILjava/lang/String;)V
    .locals 5
    .parameter "index"
    .parameter "text"

    .prologue
    .line 840
    const-string v2, "CarouselWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCountText: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 842
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 843
    .local v0, child:Landroid/widget/FrameLayout;
    const v2, 0x20200c1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 845
    .local v1, count:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 846
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/htc/widget/CarouselWidget;->setCountTextVisibility(II)V

    .line 851
    .end local v0           #child:Landroid/widget/FrameLayout;
    .end local v1           #count:Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 848
    .restart local v0       #child:Landroid/widget/FrameLayout;
    .restart local v1       #count:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setCountTextVisibility(II)V
    .locals 4
    .parameter "index"
    .parameter "visibility"

    .prologue
    .line 854
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 855
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 856
    .local v0, child:Landroid/widget/FrameLayout;
    const v2, 0x20200c1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 858
    .local v1, count:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 859
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 864
    .end local v0           #child:Landroid/widget/FrameLayout;
    .end local v1           #count:Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 861
    .restart local v0       #child:Landroid/widget/FrameLayout;
    .restart local v1       #count:Landroid/widget/TextView;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method setCurrentTabUtil(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 800
    if-gez p1, :cond_0

    .line 808
    :goto_0
    return-void

    .line 803
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/CarouselWidget;->calibrateThumb(I)V

    .line 806
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->requestLayout()V

    goto :goto_0
.end method

.method setDragger(Lcom/htc/widget/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/htc/widget/CarouselWidget;->mDragger:Lcom/htc/widget/DragController;

    .line 227
    return-void
.end method

.method setDrawer(Lcom/htc/widget/CarouselSlidingDrawer;)V
    .locals 0
    .parameter "drawer"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/htc/widget/CarouselWidget;->mDrawer:Lcom/htc/widget/CarouselSlidingDrawer;

    .line 231
    return-void
.end method

.method setEditorMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 867
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mFastScroller:Lcom/htc/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/htc/widget/CarouselWidget;->mFastScroller:Lcom/htc/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/widget/FastScroller;->setEditorMode(Z)V

    .line 871
    :cond_0
    return-void
.end method

.method public bridge synthetic setGravity(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->setGravity(I)V

    return-void
.end method

.method setMemoryMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/htc/widget/CarouselWidget;->mMemoryMode:Z

    .line 174
    return-void
.end method

.method public bridge synthetic setSpacing(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->setSpacing(I)V

    return-void
.end method

.method setStateMode(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 834
    iput p1, p0, Lcom/htc/widget/CarouselWidget;->mState:I

    .line 835
    invoke-virtual {p0}, Lcom/htc/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/BinAdapter;

    .line 836
    .local v0, adapter:Lcom/htc/widget/BinAdapter;
    invoke-virtual {v0, p1}, Lcom/htc/widget/BinAdapter;->setStateMode(I)V

    .line 837
    return-void
.end method

.method public bridge synthetic setUnselectedAlpha(F)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->setUnselectedAlpha(F)V

    return-void
.end method

.method public bridge synthetic showContextMenu()Z
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/htc/widget/Gallery;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/htc/widget/Gallery;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
