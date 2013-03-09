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

    const-string v0, "#"

    sput-object v0, Lcom/htc/opensense/widget/HtcFastScroller;->sSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/opensense/widget/HtcGridView2;)V
    .locals 2

    const/16 v1, 0xa

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x68

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlaySize:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    const v0, 0x20804f8

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mResThumb:I

    const v0, 0x20804f7

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mResOverlay:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayPadding:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayMarginTop:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->draw2_flag:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->lastIndex:I

    iput-object p2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/HtcFastScroller;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/htc/opensense/widget/HtcFastScroller;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->POST_BLADE:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/opensense/widget/HtcFastScroller;)Lcom/htc/opensense/widget/HtcGridView2;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    return-object v0
.end method

.method private cancelFling()V
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v0, v8}, Lcom/htc/opensense/widget/HtcGridView2;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private getSections()V
    .locals 4

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    iput v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mListOffset:I

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/BaseAdapter;

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    :cond_1
    :goto_0
    return-void

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

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mResThumb:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/HtcFastScroller;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mResOverlay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/opensense/widget/HtcFastScroller;->useOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollCompleted:Z

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFastScroller;->getSections()V

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    new-instance v1, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    invoke-direct {v1, p0}, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;-><init>(Lcom/htc/opensense/widget/HtcFastScroller;)V

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iput v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    iput-boolean v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayFading:Z

    return-void
.end method

.method private resetOverlayPos()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private resetThumbPos()V
    .locals 5

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private scrollTo(F)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/opensense/widget/HtcGridView2;->getCount()I

    move-result v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollCompleted:Z

    const/high16 v19, 0x3f80

    int-to-float v0, v2

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x4100

    div-float v6, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    move-object/from16 v0, v16

    array-length v8, v0

    int-to-float v0, v8

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v14, v0

    if-lt v14, v8, :cond_0

    add-int/lit8 v14, v8, -0x1

    :cond_0
    move v3, v14

    move v15, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    move v9, v2

    move v12, v7

    move v13, v14

    add-int/lit8 v11, v14, 0x1

    add-int/lit8 v19, v8, -0x1

    move/from16 v0, v19

    if-ge v14, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    add-int/lit8 v20, v14, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    :cond_1
    if-ne v9, v7, :cond_3

    :cond_2
    if-lez v14, :cond_3

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v12

    if-eq v12, v7, :cond_2

    move v13, v14

    move v15, v14

    :cond_3
    add-int/lit8 v10, v11, 0x1

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

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    int-to-float v0, v13

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    div-float v5, v19, v20

    int-to-float v0, v11

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    div-float v4, v19, v20

    if-ne v13, v3, :cond_8

    sub-float v19, p1, v5

    cmpg-float v19, v19, v6

    if-gez v19, :cond_8

    move v7, v12

    :cond_5
    :goto_1
    add-int/lit8 v19, v2, -0x1

    move/from16 v0, v19

    if-le v7, v0, :cond_6

    add-int/lit8 v7, v2, -0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v7

    invoke-virtual/range {v19 .. v20}, Lcom/htc/opensense/widget/HtcGridView2;->setSelection(I)V

    :goto_2
    if-ltz v15, :cond_d

    const/16 v18, 0x0

    const/16 v17, 0x0

    aget-object v19, v16, v15

    if-eqz v19, :cond_b

    aget-object v19, v16, v15

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    aget-object v18, v16, v15

    check-cast v18, Ljava/lang/Long;

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

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

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

    :goto_5
    return-void

    :cond_8
    add-int/lit8 v7, v12, -0x1

    if-gez v7, :cond_5

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_9
    int-to-float v0, v2

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v7

    invoke-virtual/range {v19 .. v20}, Lcom/htc/opensense/widget/HtcGridView2;->setSelection(I)V

    const/4 v15, -0x1

    goto/16 :goto_2

    :cond_a
    aget-object v19, v16, v15

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    goto :goto_3

    :cond_b
    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    goto :goto_3

    :cond_c
    const/16 v19, 0x0

    goto :goto_4

    :cond_d
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/HtcFastScroller;->mDrawOverlay:Z

    goto :goto_5
.end method

.method private useOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayW:I

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    iget v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/16 v0, 0x2e

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayTextSize:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayTextMargin:I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mChangedBounds:Z

    return-void

    :cond_0
    iget v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayTextSize:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayTextMargin:I

    goto :goto_0
.end method

.method private useThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mChangedBounds:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->draw2_flag:Z

    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/htc/opensense/widget/HtcFastScroller;->draw2(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v12}, Lcom/htc/opensense/widget/HtcGridView2;->getWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    const/4 v1, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_3

    invoke-virtual {v7}, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->getAlpha()I

    move-result v1

    const/16 v12, 0x68

    if-ge v1, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v13, v1, 0x2

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v13, v1, 0x2

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    mul-int/2addr v12, v1

    div-int/lit16 v12, v12, 0xd0

    sub-int v8, v9, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    invoke-virtual {v12, v8, v13, v9, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayW:I

    mul-int/2addr v12, v1

    div-int/lit16 v12, v12, 0xd0

    sub-int v5, v9, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v12, v13, v14, v9, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mChangedBounds:Z

    :cond_3
    const/4 v12, 0x0

    int-to-float v13, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayFading:Z

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

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

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->lastIndex:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v13}, Lcom/htc/opensense/widget/HtcGridView2;->getFirstVisiblePosition()I

    move-result v13

    if-eq v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v12}, Lcom/htc/opensense/widget/HtcGridView2;->getFirstVisiblePosition()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->lastIndex:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/opensense/widget/HtcFastScroller;->lastIndex:I

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v13

    aget-object v2, v12, v13

    instance-of v12, v2, Ljava/lang/Long;

    if-eqz v12, :cond_b

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

    :cond_9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_a

    if-nez v1, :cond_c

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/opensense/widget/HtcFastScroller;->setState(I)V

    :cond_a
    :goto_2
    const/4 v12, 0x0

    neg-int v13, v11

    int-to-float v13, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    goto :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayW:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    if-le v12, v13, :cond_d

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayW:I

    :goto_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    if-le v12, v13, :cond_e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    sub-int v13, v9, v10

    add-int v14, v11, v4

    invoke-virtual {v12, v13, v11, v9, v14}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate(IIII)V

    goto :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    goto :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    goto :goto_4
.end method

.method public draw2(Landroid/graphics/Canvas;)V
    .locals 13

    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v7, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    const/16 v8, 0x14

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v9}, Lcom/htc/opensense/widget/HtcGridView2;->getWidth()I

    move-result v5

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;->getAlpha()I

    move-result v0

    const/16 v9, 0x68

    if-ge v0, v9, :cond_2

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v10, v0, 0x2

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v10, v0, 0x2

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    mul-int/2addr v9, v0

    div-int/lit16 v9, v9, 0xd0

    sub-int v4, v5, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    invoke-virtual {v9, v4, v10, v5, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayW:I

    mul-int/2addr v9, v0

    div-int/lit16 v9, v9, 0xd0

    sub-int v2, v5, v9

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v9, v2, v10, v5, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mChangedBounds:Z

    :cond_3
    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    :cond_4
    const/4 v9, 0x0

    int-to-float v10, v7

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v9, 0x0

    neg-int v10, v7

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

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

    :cond_7
    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p0, p1, v9, v10, v11}, Lcom/htc/opensense/widget/HtcFastScroller;->draw_center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V

    :cond_8
    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    if-nez v0, :cond_9

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/htc/opensense/widget/HtcFastScroller;->setState(I)V

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x0

    int-to-float v10, v7

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayW:I

    iget v10, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    if-le v9, v10, :cond_a

    iget v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayW:I

    :goto_1
    iget v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    iget v10, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    if-le v9, v10, :cond_b

    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    :goto_2
    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    sub-int v10, v5, v6

    add-int v11, v7, v1

    invoke-virtual {v9, v10, v7, v5, v11}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate(IIII)V

    const/4 v9, 0x0

    neg-int v10, v7

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v9, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    const/4 v10, 0x0

    const/16 v11, 0xa

    iget v12, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    add-int/lit8 v12, v12, 0xa

    invoke-virtual {v9, v10, v11, v5, v12}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate(IIII)V

    goto/16 :goto_0

    :cond_a
    iget v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    goto :goto_1

    :cond_b
    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    goto :goto_2
.end method

.method draw_center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v6}, Lcom/htc/opensense/widget/HtcGridView2;->getWidth()I

    move-result v5

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, p3, v9, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    if-nez p4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v1, v6, -0xa

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v2, v6, 0x14

    sub-int v6, v2, v1

    iget v7, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    if-ge v6, v7, :cond_0

    iget v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    sub-int v6, v5, v6

    div-int/lit8 v1, v6, 0x2

    iget v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    add-int/2addr v6, v5

    div-int/lit8 v2, v6, 0x2

    :cond_0
    iget-object v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0xa

    iget v8, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    add-int/lit8 v8, v8, 0xa

    invoke-virtual {v6, v1, v7, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {p4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

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

    add-int/lit8 v6, v0, -0x1

    int-to-float v6, v6

    add-int/lit8 v7, v3, 0xa

    iget v8, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayTextMargin:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    iget-object v8, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    int-to-float v6, v0

    add-int/lit8 v7, v3, 0xa

    iget v8, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayTextMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, p3, v6, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    return v0
.end method

.method isVisible()Z
    .locals 1

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

    iget v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

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

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFastScroller;->setState(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(Lcom/htc/opensense/widget/HtcGridView2;III)V
    .locals 5

    const/4 v2, 0x3

    sub-int v0, p4, p3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/HtcGridView2;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    sub-int v1, p4, p3

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    iget-boolean v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mChangedBounds:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFastScroller;->resetThumbPos()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mChangedBounds:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollCompleted:Z

    iget v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mVisibleItem:I

    if-ne p2, v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mVisibleItem:I

    iget v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-eq v0, v2, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFastScroller;->setState(I)V

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

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v0, v3, v3, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    iget v5, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

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

    invoke-virtual {p0, v8}, Lcom/htc/opensense/widget/HtcFastScroller;->setState(I)V

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFastScroller;->getSections()V

    :cond_2
    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v3}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    :cond_3
    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFastScroller;->cancelFling()V

    move v3, v4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_5

    iget v5, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-ne v5, v8, :cond_0

    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayFading:Z

    invoke-virtual {p0, v6}, Lcom/htc/opensense/widget/HtcFastScroller;->setState(I)V

    iget-object v0, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v4, p0, Lcom/htc/opensense/widget/HtcFastScroller;->POST_BLADE:Z

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v3, v4

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    if-ne v5, v8, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/HtcGridView2;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v5, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    sub-int/2addr v3, v5

    add-int/lit8 v1, v3, 0xa

    if-gez v1, :cond_7

    const/4 v1, 0x0

    :cond_6
    :goto_1
    iget v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v6, :cond_8

    move v3, v4

    goto/16 :goto_0

    :cond_7
    iget v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    add-int/2addr v3, v1

    if-le v3, v2, :cond_6

    iget v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    sub-int v1, v2, v3

    goto :goto_1

    :cond_8
    iput v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    iput v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayY:I

    iget-boolean v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollCompleted:Z

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    int-to-float v3, v3

    iget v5, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    sub-int v5, v2, v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-direct {p0, v3}, Lcom/htc/opensense/widget/HtcFastScroller;->scrollTo(F)V

    :cond_9
    move v3, v4

    goto/16 :goto_0
.end method

.method public setState(I)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mOverlayFading:Z

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFastScroller;->resetThumbPos()V

    :cond_0
    :pswitch_3
    iget v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Lcom/htc/opensense/widget/HtcFastScroller;->resetOverlayPos()V

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mScrollFade:Lcom/htc/opensense/widget/HtcFastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/HtcGridView2;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mList:Lcom/htc/opensense/widget/HtcGridView2;

    iget v2, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    iget v4, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbY:I

    iget v5, p0, Lcom/htc/opensense/widget/HtcFastScroller;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/htc/opensense/widget/HtcGridView2;->invalidate(IIII)V

    goto :goto_0

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

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/opensense/widget/HtcFastScroller;->setState(I)V

    return-void
.end method
