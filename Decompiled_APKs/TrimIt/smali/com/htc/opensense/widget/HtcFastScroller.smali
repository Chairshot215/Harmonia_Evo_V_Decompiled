.class public Lcom/htc/opensense/widget/HtcFastScroller;
.super Ljava/lang/Object;
.source "HtcFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcGridView2"

.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2

.field static sSymbol:Ljava/lang/String;


# instance fields
.field private POST_BLADE:Z

.field draw2_flag:Z

.field private lastIndex:I

.field private mChangedBounds:Z

.field private mContext:Landroid/content/Context;

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field private mList:Lcom/htc/opensense/widget/HtcGridView2;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mListOffset:I

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayFading:Z

.field private mOverlayH:I

.field private final mOverlayMarginTop:I

.field private final mOverlayPadding:I

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlaySize:I

.field private mOverlayTextMargin:I

.field private mOverlayTextSize:I

.field private mOverlayW:I

.field private mOverlayY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintShadow:Landroid/graphics/Paint;

.field protected mResOverlay:I

.field protected mResThumb:I

.field private mScrollCompleted:Z

.field private mScrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbH:I

.field private mThumbW:I

.field private mThumbY:I

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "#"

    sput-object v0, Lcom/htc/opensense/widget/HtcFastScroller;->sSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/widget/HtcGridView2;)V
    .locals 2
    .parameter "context"
    .parameter "listView"

    .prologue
    const/16 v1, 0xa

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x68

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlaySize:I

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    .line 80
    const v0, 0x20804f8

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mResThumb:I

    .line 81
    const v0, 0x20804f7

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mResOverlay:I

    .line 91
    iput v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayPadding:I

    .line 92
    iput v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayMarginTop:I

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->draw2_flag:Z

    .line 347
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->lastIndex:I

    .line 97
    iput-object p2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    .line 98
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcFastScroller;->init(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method static synthetic access$002(Lcom/htc/opensense/widget/HtcFastScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->POST_BLADE:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/opensense/widget/HtcFastScroller;)Lcom/htc/opensense/widget/HtcGridView2;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    return-object v0
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 633
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 634
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v0, v8}, Lcom/htc/opensense/widget/HtcGridView2;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 636
    :cond_0
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 637
    return-void
.end method

.method private getSections()V
    .locals 4

    .prologue
    .line 484
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    .line 485
    .local v0, adapter:Landroid/widget/Adapter;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 486
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 487
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mListOffset:I

    .line 488
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 491
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_0
    instance-of v1, v0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 492
    check-cast v1, Landroid/widget/BaseAdapter;

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 493
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_2

    .line 494
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 502
    :cond_1
    :goto_0
    return-void

    .line 499
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, " "

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 192
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mContext:Landroid/content/Context;

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 196
    .local v0, res:Landroid/content/res/Resources;
    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mResThumb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/HtcFastScroller;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mResOverlay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/HtcFastScroller;->useOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    iput-boolean v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollCompleted:Z

    .line 202
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFastScroller;->getSections()V

    .line 205
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    .line 209
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 210
    new-instance v1, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    invoke-direct {v1, p0}, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;-><init>(Lcom/htc/opensense/widget/HtcFastScroller;)V

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    .line 211
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    .line 212
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 213
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 214
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 220
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    .line 225
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iput v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    .line 228
    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayFading:Z

    .line 229
    return-void
.end method

.method private resetOverlayPos()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->getWidth()I

    move-result v0

    .line 162
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 164
    return-void
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    .line 152
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->getWidth()I

    move-result v0

    .line 154
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 155
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 156
    return-void
.end method

.method private scrollTo(F)V
    .locals 23
    .parameter "position"

    .prologue
    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/opensense/widget/HtcGridView2;->getCount()I

    move-result v2

    .line 506
    .local v2, count:I
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollCompleted:Z

    .line 507
    const/high16 v19, 0x3f80

    int-to-float v0, v2

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x4100

    div-float v6, v19, v20

    .line 508
    .local v6, fThreshold:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 510
    .local v16, sections:[Ljava/lang/Object;
    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    .line 511
    move-object/from16 v0, v16

    array-length v8, v0

    .line 512
    .local v8, nSections:I
    int-to-float v0, v8

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v14, v0

    .line 513
    .local v14, section:I
    if-lt v14, v8, :cond_0

    .line 514
    add-int/lit8 v14, v8, -0x1

    .line 516
    :cond_0
    move v3, v14

    .line 517
    .local v3, exactSection:I
    move v15, v14

    .line 518
    .local v15, sectionIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 525
    .local v7, index:I
    move v9, v2

    .line 526
    .local v9, nextIndex:I
    move v12, v7

    .line 527
    .local v12, prevIndex:I
    move v13, v14

    .line 528
    .local v13, prevSection:I
    add-int/lit8 v11, v14, 0x1

    .line 530
    .local v11, nextSection:I
    add-int/lit8 v19, v8, -0x1

    move/from16 v0, v19

    if-ge v14, v0, :cond_1

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    add-int/lit8 v20, v14, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 535
    :cond_1
    if-ne v9, v7, :cond_3

    .line 537
    :cond_2
    if-lez v14, :cond_3

    .line 538
    add-int/lit8 v14, v14, -0x1

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    .line 540
    if-eq v12, v7, :cond_2

    .line 541
    move v13, v14

    .line 542
    move v15, v14

    .line 552
    :cond_3
    add-int/lit8 v10, v11, 0x1

    .line 554
    .local v10, nextNextSection:I
    :goto_0
    if-ge v10, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v9, :cond_4

    .line 555
    add-int/lit8 v10, v10, 0x1

    .line 556
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 561
    :cond_4
    int-to-float v0, v13

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    div-float v5, v19, v20

    .line 562
    .local v5, fPrev:F
    int-to-float v0, v11

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    div-float v4, v19, v20

    .line 563
    .local v4, fNext:F
    if-ne v13, v3, :cond_8

    sub-float v19, p1, v5

    cmpg-float v19, v19, v6

    if-gez v19, :cond_8

    .line 564
    move v7, v12

    .line 574
    :cond_5
    :goto_1
    add-int/lit8 v19, v2, -0x1

    move/from16 v0, v19

    if-le v7, v0, :cond_6

    add-int/lit8 v7, v2, -0x1

    .line 576
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v7

    invoke-virtual/range {v19 .. v20}, Lcom/htc/opensense/widget/HtcGridView2;->setSelection(I)V

    .line 584
    .end local v3           #exactSection:I
    .end local v4           #fNext:F
    .end local v5           #fPrev:F
    .end local v8           #nSections:I
    .end local v9           #nextIndex:I
    .end local v10           #nextNextSection:I
    .end local v11           #nextSection:I
    .end local v12           #prevIndex:I
    .end local v13           #prevSection:I
    .end local v14           #section:I
    :goto_2
    if-ltz v15, :cond_d

    .line 586
    const/16 v18, 0x0

    .line 587
    .local v18, time:Ljava/lang/Long;
    const/16 v17, 0x0

    .line 588
    .local v17, text:Ljava/lang/String;
    aget-object v19, v16, v15

    if-eqz v19, :cond_b

    .line 589
    aget-object v19, v16, v15

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 590
    aget-object v18, v16, v15

    .end local v18           #time:Ljava/lang/Long;
    check-cast v18, Ljava/lang/Long;

    .line 595
    .restart local v18       #time:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v19

    new-instance v20, Ljava/util/Date;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    invoke-direct/range {v20 .. v22}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .end local v17           #text:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    .line 605
    .restart local v17       #text:Ljava/lang/String;
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    :cond_7
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v15, v0, :cond_c

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/HtcFastScroller;->mDrawOverlay:Z

    .line 629
    .end local v17           #text:Ljava/lang/String;
    .end local v18           #time:Ljava/lang/Long;
    :goto_5
    return-void

    .line 567
    .restart local v3       #exactSection:I
    .restart local v4       #fNext:F
    .restart local v5       #fPrev:F
    .restart local v8       #nSections:I
    .restart local v9       #nextIndex:I
    .restart local v10       #nextNextSection:I
    .restart local v11       #nextSection:I
    .restart local v12       #prevIndex:I
    .restart local v13       #prevSection:I
    .restart local v14       #section:I
    :cond_8
    add-int/lit8 v7, v12, -0x1

    .line 568
    if-gez v7, :cond_5

    .line 569
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 579
    .end local v3           #exactSection:I
    .end local v4           #fNext:F
    .end local v5           #fPrev:F
    .end local v7           #index:I
    .end local v8           #nSections:I
    .end local v9           #nextIndex:I
    .end local v10           #nextNextSection:I
    .end local v11           #nextSection:I
    .end local v12           #prevIndex:I
    .end local v13           #prevSection:I
    .end local v14           #section:I
    .end local v15           #sectionIndex:I
    :cond_9
    int-to-float v0, v2

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v7, v0

    .line 580
    .restart local v7       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v7

    invoke-virtual/range {v19 .. v20}, Lcom/htc/opensense/widget/HtcGridView2;->setSelection(I)V

    .line 581
    const/4 v15, -0x1

    .restart local v15       #sectionIndex:I
    goto/16 :goto_2

    .line 597
    .restart local v17       #text:Ljava/lang/String;
    .restart local v18       #time:Ljava/lang/Long;
    :cond_a
    aget-object v19, v16, v15

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .end local v17           #text:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    .restart local v17       #text:Ljava/lang/String;
    goto :goto_3

    .line 600
    :cond_b
    const-string v17, ""

    .end local v17           #text:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    .restart local v17       #text:Ljava/lang/String;
    goto :goto_3

    .line 605
    :cond_c
    const/16 v19, 0x0

    goto :goto_4

    .line 627
    .end local v17           #text:Ljava/lang/String;
    .end local v18           #time:Ljava/lang/Long;
    :cond_d
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/HtcFastScroller;->mDrawOverlay:Z

    goto :goto_5
.end method

.method private useOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayW:I

    .line 176
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    .line 177
    iget v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 180
    const/16 v0, 0x2e

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayTextSize:I

    .line 181
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayTextMargin:I

    .line 187
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mChangedBounds:Z

    .line 188
    return-void

    .line 183
    :cond_0
    iget v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayTextSize:I

    .line 184
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayTextMargin:I

    goto :goto_0
.end method

.method private useThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 168
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    .line 169
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mChangedBounds:Z

    .line 171
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 350
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->draw2_flag:Z

    if-eqz v12, :cond_1

    .line 351
    invoke-virtual/range {p0 .. p1}, Lcom/htc/opensense/widget/HtcFastScroller;->draw2(Landroid/graphics/Canvas;)V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-eqz v12, :cond_0

    .line 359
    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    .line 360
    .local v11, y:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v12}, Lcom/htc/opensense/widget/HtcGridView2;->getWidth()I

    move-result v9

    .line 361
    .local v9, viewWidth:I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    .line 363
    .local v7, scrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;
    const/4 v1, -0x1

    .line 364
    .local v1, alpha:I
    const/4 v8, 0x0

    .line 365
    .local v8, thumbLeft:I
    const/4 v5, 0x0

    .line 366
    .local v5, overlayLeft:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_3

    .line 367
    invoke-virtual {v7}, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->getAlpha()I

    move-result v1

    .line 368
    const/16 v12, 0x68

    if-ge v1, v12, :cond_2

    .line 369
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v13, v1, 0x2

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v13, v1, 0x2

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 374
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    mul-int/2addr v12, v1

    div-int/lit16 v12, v12, 0xd0

    sub-int v8, v9, v12

    .line 375
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    invoke-virtual {v12, v8, v13, v9, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 378
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayW:I

    mul-int/2addr v12, v1

    div-int/lit16 v12, v12, 0xd0

    sub-int v5, v9, v12

    .line 380
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v12, v13, v14, v9, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 382
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mChangedBounds:Z

    .line 385
    :cond_3
    const/4 v12, 0x0

    int-to-float v13, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 386
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayFading:Z

    if-nez v12, :cond_4

    .line 387
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 389
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mDrawOverlay:Z

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayFading:Z

    if-nez v12, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mDrawOverlay:Z

    if-nez v12, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayFading:Z

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mDrawOverlay:Z

    if-eqz v12, :cond_9

    .line 392
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    .line 394
    .local v6, paint:Landroid/graphics/Paint;
    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v3

    .line 397
    .local v3, descent:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 398
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->lastIndex:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v13}, Lcom/htc/opensense/widget/HtcGridView2;->getFirstVisiblePosition()I

    move-result v13

    if-eq v12, v13, :cond_8

    .line 399
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v12}, Lcom/htc/opensense/widget/HtcGridView2;->getFirstVisiblePosition()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->lastIndex:I

    .line 400
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/HtcFastScroller;->lastIndex:I

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v13

    aget-object v2, v12, v13

    .line 401
    .local v2, current:Ljava/lang/Object;
    instance-of v12, v2, Ljava/lang/Long;

    if-eqz v12, :cond_b

    .line 407
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v12

    new-instance v13, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    .line 413
    .end local v2           #current:Ljava/lang/Object;
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    add-int/lit8 v13, v5, 0xf

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    int-to-float v14, v14

    const/high16 v15, 0x40a0

    add-float/2addr v15, v3

    sub-float/2addr v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 416
    .end local v3           #descent:F
    .end local v6           #paint:Landroid/graphics/Paint;
    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_a

    .line 417
    if-nez v1, :cond_c

    .line 418
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/opensense/widget/HtcFastScroller;->setState(I)V

    .line 425
    :cond_a
    :goto_2
    const/4 v12, 0x0

    neg-int v13, v11

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    .line 410
    .restart local v2       #current:Ljava/lang/Object;
    .restart local v3       #descent:F
    .restart local v6       #paint:Landroid/graphics/Paint;
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    goto :goto_1

    .line 420
    .end local v2           #current:Ljava/lang/Object;
    .end local v3           #descent:F
    .end local v6           #paint:Landroid/graphics/Paint;
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayW:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    if-le v12, v13, :cond_d

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayW:I

    .line 421
    .local v10, w:I
    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    if-le v12, v13, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    .line 422
    .local v4, h:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    sub-int v13, v9, v10

    add-int v14, v11, v4

    invoke-virtual {v12, v13, v11, v9, v14}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate(IIII)V

    goto :goto_2

    .line 420
    .end local v4           #h:I
    .end local v10           #w:I
    :cond_d
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    goto :goto_3

    .line 421
    .restart local v10       #w:I
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    goto :goto_4
.end method

.method public draw2(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 278
    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-nez v9, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget v7, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    .line 283
    .local v7, y:I
    const/16 v8, 0x14

    .line 284
    .local v8, y2:I
    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v9}, Lcom/htc/opensense/widget/HtcGridView2;->getWidth()I

    move-result v5

    .line 285
    .local v5, viewWidth:I
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    .line 286
    .local v3, scrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;
    const/4 v0, -0x1

    .line 287
    .local v0, alpha:I
    const/4 v4, 0x0

    .line 288
    .local v4, thumbLeft:I
    const/4 v2, 0x0

    .line 289
    .local v2, overlayLeft:I
    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    .line 290
    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->getAlpha()I

    move-result v0

    .line 291
    const/16 v9, 0x68

    if-ge v0, v9, :cond_2

    .line 292
    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v10, v0, 0x2

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 294
    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v10, v0, 0x2

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 297
    :cond_2
    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    mul-int/2addr v9, v0

    div-int/lit16 v9, v9, 0xd0

    sub-int v4, v5, v9

    .line 298
    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    invoke-virtual {v9, v4, v10, v5, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 300
    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayW:I

    mul-int/2addr v9, v0

    div-int/lit16 v9, v9, 0xd0

    sub-int v2, v5, v9

    .line 301
    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v9, v2, v10, v5, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mChangedBounds:Z

    .line 306
    :cond_3
    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 307
    :cond_4
    const/4 v9, 0x0

    int-to-float v10, v7

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 308
    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 309
    const/4 v9, 0x0

    neg-int v10, v7

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 311
    :cond_5
    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    iget-boolean v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mDrawOverlay:Z

    if-nez v9, :cond_7

    :cond_6
    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    iget-boolean v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayFading:Z

    if-eqz v9, :cond_8

    iget-boolean v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mDrawOverlay:Z

    if-eqz v9, :cond_8

    .line 327
    :cond_7
    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p0, p1, v9, v10, v11}, Lcom/htc/opensense/widget/HtcFastScroller;->draw_center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 331
    :cond_8
    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    .line 332
    if-nez v0, :cond_9

    .line 333
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/htc/opensense/widget/HtcFastScroller;->setState(I)V

    goto/16 :goto_0

    .line 335
    :cond_9
    const/4 v9, 0x0

    int-to-float v10, v7

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 336
    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayW:I

    iget v10, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    if-le v9, v10, :cond_a

    iget v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayW:I

    .line 337
    .local v6, w:I
    :goto_1
    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    iget v10, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    if-le v9, v10, :cond_b

    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    .line 338
    .local v1, h:I
    :goto_2
    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    sub-int v10, v5, v6

    add-int v11, v7, v1

    invoke-virtual {v9, v10, v7, v5, v11}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate(IIII)V

    .line 339
    const/4 v9, 0x0

    neg-int v10, v7

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 340
    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    const/4 v10, 0x0

    const/16 v11, 0xa

    iget v12, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    add-int/lit8 v12, v12, 0xa

    invoke-virtual {v9, v10, v11, v5, v12}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate(IIII)V

    goto/16 :goto_0

    .line 336
    .end local v1           #h:I
    .end local v6           #w:I
    :cond_a
    iget v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    goto :goto_1

    .line 337
    .restart local v6       #w:I
    :cond_b
    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    goto :goto_2
.end method

.method draw_center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "canvas"
    .parameter "paint"
    .parameter "text"
    .parameter "bounds"

    .prologue
    const/4 v9, 0x0

    .line 253
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2;->getWidth()I

    move-result v5

    .line 254
    .local v5, viewWidth:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 255
    .local v4, textbounds:Landroid/graphics/Rect;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, p3, v9, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 256
    if-nez p4, :cond_1

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v1, v6, -0xa

    .line 258
    .local v1, px_left:I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v2, v6, 0x14

    .line 259
    .local v2, px_right:I
    sub-int v6, v2, v1

    iget v7, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    if-ge v6, v7, :cond_0

    .line 260
    iget v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    sub-int v6, v5, v6

    div-int/lit8 v1, v6, 0x2

    .line 261
    iget v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    add-int/2addr v6, v5

    div-int/lit8 v2, v6, 0x2

    .line 264
    :cond_0
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0xa

    iget v8, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    add-int/lit8 v8, v8, 0xa

    invoke-virtual {v6, v1, v7, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 265
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 266
    new-instance p4, Landroid/graphics/Rect;

    .end local p4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {p4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 268
    .end local v1           #px_left:I
    .end local v2           #px_right:I
    .restart local p4
    :cond_1
    iget v6, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int v0, v6, v7

    .line 269
    .local v0, px:I
    iget v6, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int v3, v6, v7

    .line 271
    .local v3, py:I
    add-int/lit8 v6, v0, -0x1

    int-to-float v6, v6

    add-int/lit8 v7, v3, 0xa

    iget v8, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayTextMargin:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 272
    int-to-float v6, v0

    add-int/lit8 v7, v3, 0xa

    iget v8, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayTextMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, p3, v6, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 273
    return-void
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    return v0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 640
    iget v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x23

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    add-int/lit8 v1, v1, -0x32

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    iget v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x32

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 645
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFastScroller;->setState(I)V

    .line 646
    const/4 v0, 0x1

    .line 649
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(Lcom/htc/opensense/widget/HtcGridView2;III)V
    .locals 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v2, 0x3

    .line 463
    sub-int v0, p4, p3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-eq v0, v2, :cond_0

    .line 464
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    sub-int v1, p4, p3

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    .line 466
    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mChangedBounds:Z

    if-eqz v0, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFastScroller;->resetThumbPos()V

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mChangedBounds:Z

    .line 471
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollCompleted:Z

    .line 472
    iget v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mVisibleItem:I

    if-ne p2, v0, :cond_2

    .line 481
    :cond_1
    :goto_0
    return-void

    .line 475
    :cond_2
    iput p2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mVisibleItem:I

    .line 477
    iget v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-eq v0, v2, :cond_1

    .line 478
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFastScroller;->setState(I)V

    .line 479
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->POST_BLADE:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x1f4

    :goto_1
    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const/16 v0, 0x5dc

    goto :goto_1
.end method

.method public onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 445
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v0, v3, v3, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 459
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "me"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 653
    iget v5, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-nez v5, :cond_1

    .line 708
    :cond_0
    :goto_0
    return v3

    .line 656
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    .line 658
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x23

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    iget v7, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 662
    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/HtcFastScroller;->setState(I)V

    .line 663
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    if-eqz v3, :cond_2

    .line 664
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFastScroller;->getSections()V

    .line 667
    :cond_2
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v3, :cond_3

    .line 668
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v3}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    .line 671
    :cond_3
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFastScroller;->cancelFling()V

    move v3, v4

    .line 672
    goto :goto_0

    .line 674
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_5

    .line 675
    iget v5, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-ne v5, v8, :cond_0

    .line 676
    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayFading:Z

    .line 677
    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/HtcFastScroller;->setState(I)V

    .line 678
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    .line 679
    .local v0, handler:Landroid/os/Handler;
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 680
    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcFastScroller;->POST_BLADE:Z

    .line 681
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v3, v4

    .line 682
    goto :goto_0

    .line 684
    .end local v0           #handler:Landroid/os/Handler;
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 686
    iget v5, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-ne v5, v8, :cond_0

    .line 687
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcGridView2;->getHeight()I

    move-result v2

    .line 689
    .local v2, viewHeight:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    sub-int/2addr v3, v5

    add-int/lit8 v1, v3, 0xa

    .line 690
    .local v1, newThumbY:I
    if-gez v1, :cond_7

    .line 691
    const/4 v1, 0x0

    .line 695
    :cond_6
    :goto_1
    iget v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v6, :cond_8

    move v3, v4

    .line 696
    goto/16 :goto_0

    .line 692
    :cond_7
    iget v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    add-int/2addr v3, v1

    if-le v3, v2, :cond_6

    .line 693
    iget v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    sub-int v1, v2, v3

    goto :goto_1

    .line 699
    :cond_8
    iput v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    .line 700
    iput v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayY:I

    .line 702
    iget-boolean v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollCompleted:Z

    if-eqz v3, :cond_9

    .line 703
    iget v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    int-to-float v3, v3

    iget v5, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    sub-int v5, v2, v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-direct {p0, v3}, Lcom/htc/opensense/widget/HtcFastScroller;->scrollTo(F)V

    :cond_9
    move v3, v4

    .line 705
    goto/16 :goto_0
.end method

.method public setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 116
    packed-switch p1, :pswitch_data_0

    .line 144
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    .line 145
    return-void

    .line 118
    :pswitch_1
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    .line 120
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayFading:Z

    goto :goto_0

    .line 123
    :pswitch_2
    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFastScroller;->resetThumbPos()V

    .line 128
    :cond_0
    :pswitch_3
    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFastScroller;->resetOverlayPos()V

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 134
    :pswitch_4
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->getWidth()I

    move-result v0

    .line 140
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    iget v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    iget v4, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    iget v5, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate(IIII)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method stop()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFastScroller;->setState(I)V

    .line 233
    return-void
.end method
