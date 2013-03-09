.class public Lcom/htc/widget/HtcFastScroller3;
.super Ljava/lang/Object;
.source "HtcFastScroller3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcFastScroller3$ScrollFade;
    }
.end annotation


# static fields
.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcFastScroller"

.field static sSymbol:Ljava/lang/String;


# instance fields
.field draw2_flag:Z

.field private mBladePadding:I

.field private mBorderHeight:I

.field private mChangedBounds:Z

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field private mList:Lcom/htc/widget/HtcAbsListView2;

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

.field private mPadding:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintShadow:Landroid/graphics/Paint;

.field protected mResOverlay:I

.field protected mResThumb:I

.field private mScrollCompleted:Z

.field private mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mSectionsDirty:Z

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
    .line 97
    const-string v0, "#"

    sput-object v0, Lcom/htc/widget/HtcFastScroller3;->sSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView2;)V
    .locals 2
    .parameter "context"
    .parameter "listView"

    .prologue
    const/16 v1, 0xa

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/16 v0, 0x68

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlaySize:I

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mHandler:Landroid/os/Handler;

    .line 94
    const v0, 0x20804f8

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mResThumb:I

    .line 95
    const v0, 0x20804f7

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mResOverlay:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mPadding:F

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionsDirty:Z

    .line 102
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mBladePadding:I

    .line 103
    iput v1, p0, Lcom/htc/widget/HtcFastScroller3;->mBorderHeight:I

    .line 106
    iput v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayPadding:I

    .line 107
    iput v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayMarginTop:I

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->draw2_flag:Z

    .line 110
    iput-object p2, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    .line 111
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcFastScroller3;->init(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcFastScroller3;)Lcom/htc/widget/HtcAbsListView2;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    return-object v0
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 649
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 650
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView2;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 651
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 652
    return-void
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 492
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 493
    .local v0, adapter:Landroid/widget/Adapter;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 494
    instance-of v1, v0, Lcom/htc/widget/HtcHeaderViewListAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 495
    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcFastScroller3;->mListOffset:I

    .line 496
    check-cast v0, Lcom/htc/widget/HtcHeaderViewListAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 507
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_0
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 508
    check-cast v1, Landroid/widget/BaseAdapter;

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 509
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 510
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mSections:[Ljava/lang/Object;

    .line 516
    :goto_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionsDirty:Z

    .line 517
    return-void

    .line 512
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_1
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 513
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, " "

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 199
    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    .line 200
    .local v1, res:Landroid/content/res/Resources;
    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mResThumb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcFastScroller3;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mResOverlay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/htc/widget/HtcFastScroller3;->useOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)V

    .line 202
    const v2, 0x20500f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPadding:F

    .line 203
    const v2, 0x20d0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFastScroller3;->mBorderHeight:I

    .line 205
    const v2, 0x20d0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFastScroller3;->mBladePadding:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    iput-boolean v5, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollCompleted:Z

    .line 213
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->getSectionsFromIndexer()V

    .line 215
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayPos:Landroid/graphics/RectF;

    .line 216
    new-instance v2, Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcFastScroller3$ScrollFade;-><init>(Lcom/htc/widget/HtcFastScroller3;)V

    iput-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    .line 217
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    .line 218
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 219
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 220
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 226
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaintShadow:Landroid/graphics/Paint;

    .line 231
    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaintShadow:Landroid/graphics/Paint;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    iput v4, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    .line 234
    iput-boolean v4, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayFading:Z

    .line 235
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcFastScroller"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetOverlayPos()V
    .locals 6

    .prologue
    .line 158
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v0

    .line 162
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v2, v0, 0x2

    iget v3, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 165
    return-void
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    .line 151
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v0

    .line 153
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 155
    return-void
.end method

.method private scrollTo(F)V
    .locals 21
    .parameter "position"

    .prologue
    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcAbsListView2;->getCount()I

    move-result v2

    .line 521
    .local v2, count:I
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller3;->mScrollCompleted:Z

    .line 522
    const/high16 v18, 0x3f80

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x4100

    div-float v6, v18, v19

    .line 523
    .local v6, fThreshold:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 525
    .local v16, sections:[Ljava/lang/Object;
    if-eqz v16, :cond_c

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 526
    move-object/from16 v0, v16

    array-length v8, v0

    .line 527
    .local v8, nSections:I
    int-to-float v0, v8

    move/from16 v18, v0

    mul-float v18, v18, p1

    move/from16 v0, v18

    float-to-int v14, v0

    .line 528
    .local v14, section:I
    if-lt v14, v8, :cond_0

    .line 529
    add-int/lit8 v14, v8, -0x1

    .line 531
    :cond_0
    move v3, v14

    .line 532
    .local v3, exactSection:I
    move v15, v14

    .line 533
    .local v15, sectionIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 540
    .local v7, index:I
    move v9, v2

    .line 541
    .local v9, nextIndex:I
    move v12, v7

    .line 542
    .local v12, prevIndex:I
    move v13, v14

    .line 543
    .local v13, prevSection:I
    add-int/lit8 v11, v14, 0x1

    .line 545
    .local v11, nextSection:I
    add-int/lit8 v18, v8, -0x1

    move/from16 v0, v18

    if-ge v14, v0, :cond_1

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 550
    :cond_1
    if-ne v9, v7, :cond_3

    .line 552
    :cond_2
    if-lez v14, :cond_3

    .line 553
    add-int/lit8 v14, v14, -0x1

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    .line 555
    if-eq v12, v7, :cond_2

    .line 556
    move v13, v14

    .line 557
    move v15, v14

    .line 567
    :cond_3
    add-int/lit8 v10, v11, 0x1

    .line 569
    .local v10, nextNextSection:I
    :goto_0
    if-ge v10, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v9, :cond_4

    .line 570
    add-int/lit8 v10, v10, 0x1

    .line 571
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 576
    :cond_4
    int-to-float v0, v13

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v5, v18, v19

    .line 577
    .local v5, fPrev:F
    int-to-float v0, v11

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v4, v18, v19

    .line 578
    .local v4, fNext:F
    if-ne v13, v3, :cond_a

    sub-float v18, p1, v5

    cmpg-float v18, v18, v6

    if-gez v18, :cond_a

    .line 579
    move v7, v12

    .line 589
    :cond_5
    :goto_1
    add-int/lit8 v18, v2, -0x1

    move/from16 v0, v18

    if-le v7, v0, :cond_6

    add-int/lit8 v7, v2, -0x1

    .line 597
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/htc/widget/HtcListViewCore2;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/widget/HtcListViewCore2;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mBorderHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/htc/widget/HtcListViewCore2;->setSelectionFromTop(II)V

    .line 619
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
    if-ltz v15, :cond_10

    .line 620
    aget-object v18, v16, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

    .line 621
    .local v17, text:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    :cond_7
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_e

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller3;->mDrawOverlay:Z

    .line 623
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 627
    if-nez v15, :cond_8

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    if-nez v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    if-nez v18, :cond_f

    .line 633
    const/16 v18, 0x1

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .end local v17           #text:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

    .line 639
    .restart local v17       #text:Ljava/lang/String;
    :cond_8
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller3;->mDrawOverlay:Z

    .line 645
    .end local v17           #text:Ljava/lang/String;
    :cond_9
    :goto_5
    return-void

    .line 582
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
    :cond_a
    add-int/lit8 v7, v12, -0x1

    .line 583
    if-gez v7, :cond_5

    .line 584
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 600
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAbsListView2;->setSelection(I)V

    goto/16 :goto_2

    .line 603
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
    :cond_c
    int-to-float v0, v2

    move/from16 v18, v0

    mul-float v18, v18, p1

    move/from16 v0, v18

    float-to-int v7, v0

    .line 611
    .restart local v7       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/htc/widget/HtcListViewCore2;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    check-cast v18, Lcom/htc/widget/HtcListViewCore2;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mBorderHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/htc/widget/HtcListViewCore2;->setSelectionFromTop(II)V

    .line 616
    :goto_6
    const/4 v15, -0x1

    .restart local v15       #sectionIndex:I
    goto/16 :goto_2

    .line 614
    .end local v15           #sectionIndex:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller3;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAbsListView2;->setSelection(I)V

    goto :goto_6

    .line 621
    .restart local v15       #sectionIndex:I
    .restart local v17       #text:Ljava/lang/String;
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 636
    :cond_f
    sget-object v17, Lcom/htc/widget/HtcFastScroller3;->sSymbol:Ljava/lang/String;

    .end local v17           #text:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

    .restart local v17       #text:Ljava/lang/String;
    goto :goto_4

    .line 643
    .end local v17           #text:Ljava/lang/String;
    :cond_10
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller3;->mDrawOverlay:Z

    goto :goto_5
.end method

.method private useOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)V
    .locals 2
    .parameter "drawable"
    .parameter "res"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 176
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    .line 177
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    .line 182
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 185
    const/16 v0, 0x2e

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextSize:I

    .line 186
    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextMargin:I

    .line 192
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mChangedBounds:Z

    .line 193
    return-void

    .line 188
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextSize:I

    .line 189
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextMargin:I

    goto :goto_0
.end method

.method private useThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    .line 170
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mChangedBounds:Z

    .line 172
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 355
    iget-boolean v10, p0, Lcom/htc/widget/HtcFastScroller3;->draw2_flag:Z

    if-eqz v10, :cond_1

    .line 356
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcFastScroller3;->draw2(Landroid/graphics/Canvas;)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-eqz v10, :cond_0

    .line 365
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    .line 366
    .local v9, y:I
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v10}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v7

    .line 367
    .local v7, viewWidth:I
    iget-object v5, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    .line 369
    .local v5, scrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;
    const/4 v0, -0x1

    .line 370
    .local v0, alpha:I
    const/4 v6, 0x0

    .line 371
    .local v6, thumbLeft:I
    const/4 v3, 0x0

    .line 372
    .local v3, overlayLeft:I
    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    .line 373
    invoke-virtual {v5}, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->getAlpha()I

    move-result v0

    .line 374
    const/16 v10, 0x68

    if-ge v0, v10, :cond_2

    .line 375
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v11, v0, 0x2

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 377
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v11, v0, 0x2

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 380
    :cond_2
    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    mul-int/2addr v10, v0

    div-int/lit16 v10, v10, 0xd0

    sub-int v6, v7, v10

    .line 381
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    iget v12, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    invoke-virtual {v10, v6, v11, v7, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 384
    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    mul-int/2addr v10, v0

    div-int/lit16 v10, v10, 0xd0

    sub-int v3, v7, v10

    .line 385
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    iget v12, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    invoke-virtual {v10, v3, v11, v7, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 387
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/widget/HtcFastScroller3;->mChangedBounds:Z

    .line 390
    :cond_3
    const/4 v10, 0x0

    int-to-float v11, v9

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 391
    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 392
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 394
    :cond_4
    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    iget-boolean v10, p0, Lcom/htc/widget/HtcFastScroller3;->mDrawOverlay:Z

    if-nez v10, :cond_6

    :cond_5
    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_7

    iget-boolean v10, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayFading:Z

    if-eqz v10, :cond_7

    iget-boolean v10, p0, Lcom/htc/widget/HtcFastScroller3;->mDrawOverlay:Z

    if-eqz v10, :cond_7

    .line 396
    :cond_6
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 397
    iget-object v4, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    .line 398
    .local v4, paint:Landroid/graphics/Paint;
    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v10

    const/high16 v11, 0x4000

    add-float v1, v10, v11

    .line 399
    .local v1, descent:F
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

    const-string v11, "J"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 400
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

    add-int/lit8 v11, v3, 0x1e

    int-to-float v11, v11

    iget v12, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    int-to-float v12, v12

    sub-float/2addr v12, v1

    invoke-virtual {p1, v10, v11, v12, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 405
    .end local v1           #descent:F
    .end local v4           #paint:Landroid/graphics/Paint;
    :cond_7
    :goto_1
    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_8

    .line 406
    if-nez v0, :cond_a

    .line 407
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    .line 414
    :cond_8
    :goto_2
    const/4 v10, 0x0

    neg-int v11, v9

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    .line 402
    .restart local v1       #descent:F
    .restart local v4       #paint:Landroid/graphics/Paint;
    :cond_9
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

    add-int/lit8 v11, v3, 0x1e

    int-to-float v11, v11

    iget v12, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    int-to-float v12, v12

    sub-float/2addr v12, v1

    iget v13, p0, Lcom/htc/widget/HtcFastScroller3;->mPadding:F

    sub-float/2addr v12, v13

    invoke-virtual {p1, v10, v11, v12, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 409
    .end local v1           #descent:F
    .end local v4           #paint:Landroid/graphics/Paint;
    :cond_a
    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    iget v11, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    if-le v10, v11, :cond_b

    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    .line 410
    .local v8, w:I
    :goto_3
    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    iget v11, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    if-le v10, v11, :cond_c

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    .line 411
    .local v2, h:I
    :goto_4
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    sub-int v11, v7, v8

    add-int v12, v9, v2

    invoke-virtual {v10, v11, v9, v7, v12}, Lcom/htc/widget/HtcAbsListView2;->invalidate(IIII)V

    goto :goto_2

    .line 409
    .end local v2           #h:I
    .end local v8           #w:I
    :cond_b
    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    goto :goto_3

    .line 410
    .restart local v8       #w:I
    :cond_c
    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    goto :goto_4
.end method

.method public draw2(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 284
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-nez v9, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget v7, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    .line 289
    .local v7, y:I
    const/16 v8, 0x14

    .line 290
    .local v8, y2:I
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v5

    .line 291
    .local v5, viewWidth:I
    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    .line 292
    .local v3, scrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;
    const/4 v0, -0x1

    .line 293
    .local v0, alpha:I
    const/4 v4, 0x0

    .line 294
    .local v4, thumbLeft:I
    const/4 v2, 0x0

    .line 295
    .local v2, overlayLeft:I
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    .line 296
    invoke-virtual {v3}, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->getAlpha()I

    move-result v0

    .line 297
    const/16 v9, 0x68

    if-ge v0, v9, :cond_2

    .line 298
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v10, v0, 0x2

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 300
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v10, v0, 0x2

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 303
    :cond_2
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    mul-int/2addr v9, v0

    div-int/lit16 v9, v9, 0xd0

    sub-int v4, v5, v9

    .line 304
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    invoke-virtual {v9, v4, v10, v5, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 306
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    mul-int/2addr v9, v0

    div-int/lit16 v9, v9, 0xd0

    sub-int v2, v5, v9

    .line 307
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    invoke-virtual {v9, v2, v10, v5, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 308
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcFastScroller3;->mChangedBounds:Z

    .line 312
    :cond_3
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 313
    :cond_4
    const/4 v9, 0x0

    int-to-float v10, v7

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 314
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 315
    const/4 v9, 0x0

    neg-int v10, v7

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 317
    :cond_5
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    iget-boolean v9, p0, Lcom/htc/widget/HtcFastScroller3;->mDrawOverlay:Z

    if-nez v9, :cond_7

    :cond_6
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_8

    iget-boolean v9, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayFading:Z

    if-eqz v9, :cond_8

    iget-boolean v9, p0, Lcom/htc/widget/HtcFastScroller3;->mDrawOverlay:Z

    if-eqz v9, :cond_8

    .line 333
    :cond_7
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p0, p1, v9, v10, v11}, Lcom/htc/widget/HtcFastScroller3;->draw_center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 337
    :cond_8
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    .line 338
    if-nez v0, :cond_9

    .line 339
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    goto/16 :goto_0

    .line 341
    :cond_9
    const/4 v9, 0x0

    int-to-float v10, v7

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 342
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    if-le v9, v10, :cond_a

    iget v6, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    .line 343
    .local v6, w:I
    :goto_1
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    if-le v9, v10, :cond_b

    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    .line 344
    .local v1, h:I
    :goto_2
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    sub-int v10, v5, v6

    add-int v11, v7, v1

    invoke-virtual {v9, v10, v7, v5, v11}, Lcom/htc/widget/HtcAbsListView2;->invalidate(IIII)V

    .line 345
    const/4 v9, 0x0

    neg-int v10, v7

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 346
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    const/4 v10, 0x0

    const/16 v11, 0xa

    iget v12, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    add-int/lit8 v12, v12, 0xa

    invoke-virtual {v9, v10, v11, v5, v12}, Lcom/htc/widget/HtcAbsListView2;->invalidate(IIII)V

    goto/16 :goto_0

    .line 342
    .end local v1           #h:I
    .end local v6           #w:I
    :cond_a
    iget v6, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    goto :goto_1

    .line 343
    .restart local v6       #w:I
    :cond_b
    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

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

    .line 259
    iget-object v6, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v5

    .line 260
    .local v5, viewWidth:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 261
    .local v4, textbounds:Landroid/graphics/Rect;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, p3, v9, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 262
    if-nez p4, :cond_1

    .line 263
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v1, v6, -0xa

    .line 264
    .local v1, px_left:I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v2, v6, 0x14

    .line 265
    .local v2, px_right:I
    sub-int v6, v2, v1

    iget v7, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    if-ge v6, v7, :cond_0

    .line 266
    iget v6, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    sub-int v6, v5, v6

    div-int/lit8 v1, v6, 0x2

    .line 267
    iget v6, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    add-int/2addr v6, v5

    div-int/lit8 v2, v6, 0x2

    .line 270
    :cond_0
    iget-object v6, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0xa

    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    add-int/lit8 v8, v8, 0xa

    invoke-virtual {v6, v1, v7, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 271
    iget-object v6, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 272
    new-instance p4, Landroid/graphics/Rect;

    .end local p4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {p4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 274
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

    .line 275
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

    .line 277
    .local v3, py:I
    add-int/lit8 v6, v0, -0x1

    int-to-float v6, v6

    add-int/lit8 v7, v3, 0xa

    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextMargin:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 278
    int-to-float v6, v0

    add-int/lit8 v7, v3, 0xa

    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, p3, v6, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 279
    return-void
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    if-eqz v0, :cond_0

    .line 486
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->getSectionsFromIndexer()V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    return v0
.end method

.method isPointInside(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x19

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x19

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 655
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcFastScroller3;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    .line 659
    const/4 v0, 0x1

    .line 662
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onScroll(Lcom/htc/widget/HtcAbsListView2;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v2, 0x3

    .line 457
    sub-int v0, p4, p3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-eq v0, v2, :cond_0

    .line 458
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    sub-int v1, p4, p3

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    .line 460
    iget-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mChangedBounds:Z

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->resetThumbPos()V

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mChangedBounds:Z

    .line 465
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollCompleted:Z

    .line 466
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mVisibleItem:I

    if-ne p2, v0, :cond_2

    .line 474
    :cond_1
    :goto_0
    return-void

    .line 469
    :cond_2
    iput p2, p0, Lcom/htc/widget/HtcFastScroller3;->mVisibleItem:I

    .line 470
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-eq v0, v2, :cond_1

    .line 471
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    .line 472
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 434
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 444
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mBladePadding:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    .line 447
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 452
    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "me"

    .prologue
    const/high16 v13, 0x4000

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 667
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 668
    .local v2, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ne v9, v11, :cond_3

    move v4, v7

    .line 675
    .local v4, is2Point:Z
    :goto_0
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-nez v9, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v4, :cond_4

    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-ne v9, v11, :cond_4

    :cond_1
    move v7, v8

    .line 724
    :cond_2
    :goto_1
    return v7

    .end local v4           #is2Point:Z
    :cond_3
    move v4, v8

    .line 668
    goto :goto_0

    .line 680
    .restart local v4       #is2Point:Z
    :cond_4
    if-eqz v4, :cond_a

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    div-float/2addr v10, v13

    add-float v0, v9, v10

    .line 681
    .local v0, X:F
    :goto_2
    if-eqz v4, :cond_b

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    div-float/2addr v10, v13

    add-float v1, v9, v10

    .line 683
    .local v1, Y:F
    :goto_3
    if-eqz v2, :cond_5

    const/16 v9, 0x105

    if-ne v2, v9, :cond_c

    .line 684
    :cond_5
    if-nez v4, :cond_6

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcFastScroller3;->isPointInside(FF)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 685
    :cond_6
    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    .line 686
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    if-nez v8, :cond_8

    :cond_7
    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionsDirty:Z

    if-eqz v8, :cond_9

    .line 687
    :cond_8
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->getSectionsFromIndexer()V

    .line 690
    :cond_9
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->cancelFling()V

    goto :goto_1

    .line 680
    .end local v0           #X:F
    .end local v1           #Y:F
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_2

    .line 681
    .restart local v0       #X:F
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_3

    .line 693
    .restart local v1       #Y:F
    :cond_c
    if-ne v2, v7, :cond_d

    .line 694
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-ne v9, v12, :cond_10

    .line 695
    iput-boolean v7, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayFading:Z

    .line 696
    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    .line 697
    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller3;->mHandler:Landroid/os/Handler;

    .line 698
    .local v3, handler:Landroid/os/Handler;
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 699
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 702
    .end local v3           #handler:Landroid/os/Handler;
    :cond_d
    if-ne v2, v11, :cond_10

    .line 703
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-ne v9, v12, :cond_10

    .line 704
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v6

    .line 706
    .local v6, viewHeight:I
    float-to-int v8, v1

    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    sub-int/2addr v8, v9

    add-int/lit8 v5, v8, 0xa

    .line 707
    .local v5, newThumbY:I
    if-gez v5, :cond_f

    .line 708
    const/4 v5, 0x0

    .line 712
    :cond_e
    :goto_4
    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    sub-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-lt v8, v11, :cond_2

    .line 715
    iput v5, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    .line 716
    iput v5, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayY:I

    .line 718
    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollCompleted:Z

    if-eqz v8, :cond_2

    .line 719
    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    int-to-float v8, v8

    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    sub-int v9, v6, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcFastScroller3;->scrollTo(F)V

    goto/16 :goto_1

    .line 709
    :cond_f
    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    add-int/2addr v8, v5

    if-le v8, v6, :cond_e

    .line 710
    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    sub-int v5, v6, v8

    goto :goto_4

    .end local v5           #newThumbY:I
    .end local v6           #viewHeight:I
    :cond_10
    move v7, v8

    .line 724
    goto/16 :goto_1
.end method

.method public setSectionsDirty()V
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionsDirty:Z

    .line 478
    return-void
.end method

.method public setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_0

    .line 143
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    .line 144
    return-void

    .line 117
    :pswitch_1
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayFading:Z

    goto :goto_0

    .line 122
    :pswitch_2
    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->resetThumbPos()V

    .line 127
    :cond_0
    :pswitch_3
    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->resetOverlayPos()V

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 133
    :pswitch_4
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v0

    .line 139
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    iget v4, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    iget v5, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/htc/widget/HtcAbsListView2;->invalidate(IIII)V

    goto :goto_0

    .line 115
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
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    .line 239
    return-void
.end method
