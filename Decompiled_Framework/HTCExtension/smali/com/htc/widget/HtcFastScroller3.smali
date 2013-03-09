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

    const-string v0, "#"

    sput-object v0, Lcom/htc/widget/HtcFastScroller3;->sSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView2;)V
    .locals 2

    const/16 v1, 0xa

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x68

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlaySize:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mHandler:Landroid/os/Handler;

    const v0, 0x20804f8

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mResThumb:I

    const v0, 0x20804f7

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mResOverlay:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mPadding:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionsDirty:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mBladePadding:I

    iput v1, p0, Lcom/htc/widget/HtcFastScroller3;->mBorderHeight:I

    iput v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayPadding:I

    iput v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayMarginTop:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->draw2_flag:Z

    iput-object p2, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcFastScroller3;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcFastScroller3;)Lcom/htc/widget/HtcAbsListView2;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

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

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView2;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    instance-of v1, v0, Lcom/htc/widget/HtcHeaderViewListAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcFastScroller3;->mListOffset:I

    check-cast v0, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/widget/BaseAdapter;

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mListAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mSections:[Ljava/lang/Object;

    :goto_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionsDirty:Z

    return-void

    :cond_1
    check-cast v0, Landroid/widget/BaseAdapter;

    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mListAdapter:Landroid/widget/BaseAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, " "

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mResThumb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcFastScroller3;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mResOverlay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/htc/widget/HtcFastScroller3;->useOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)V

    const v2, 0x20500f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPadding:F

    const v2, 0x20d0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFastScroller3;->mBorderHeight:I

    const v2, 0x20d0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFastScroller3;->mBladePadding:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v5, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollCompleted:Z

    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->getSectionsFromIndexer()V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayPos:Landroid/graphics/RectF;

    new-instance v2, Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcFastScroller3$ScrollFade;-><init>(Lcom/htc/widget/HtcFastScroller3;)V

    iput-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaintShadow:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mPaintShadow:Landroid/graphics/Paint;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iput v4, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    iput-boolean v4, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayFading:Z

    return-void

    :catch_0
    move-exception v0

    const-string v2, "HtcFastScroller"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetOverlayPos()V
    .locals 6

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v0

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

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private resetThumbPos()V
    .locals 5

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private scrollTo(F)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcAbsListView2;->getCount()I

    move-result v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller3;->mScrollCompleted:Z

    const/high16 v18, 0x3f80

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x4100

    div-float v6, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    move-object/from16 v0, v16

    array-length v8, v0

    int-to-float v0, v8

    move/from16 v18, v0

    mul-float v18, v18, p1

    move/from16 v0, v18

    float-to-int v14, v0

    if-lt v14, v8, :cond_0

    add-int/lit8 v14, v8, -0x1

    :cond_0
    move v3, v14

    move v15, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    move v9, v2

    move v12, v7

    move v13, v14

    add-int/lit8 v11, v14, 0x1

    add-int/lit8 v18, v8, -0x1

    move/from16 v0, v18

    if-ge v14, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    add-int/lit8 v19, v14, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    :cond_1
    if-ne v9, v7, :cond_3

    :cond_2
    if-lez v14, :cond_3

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

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

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    move/from16 v0, v18

    if-ne v0, v9, :cond_4

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    int-to-float v0, v13

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v5, v18, v19

    int-to-float v0, v11

    move/from16 v18, v0

    int-to-float v0, v8

    move/from16 v19, v0

    div-float v4, v18, v19

    if-ne v13, v3, :cond_a

    sub-float v18, p1, v5

    cmpg-float v18, v18, v6

    if-gez v18, :cond_a

    move v7, v12

    :cond_5
    :goto_1
    add-int/lit8 v18, v2, -0x1

    move/from16 v0, v18

    if-le v7, v0, :cond_6

    add-int/lit8 v7, v2, -0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/htc/widget/HtcListViewCore2;

    move/from16 v18, v0

    if-eqz v18, :cond_b

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

    :goto_2
    if-ltz v15, :cond_10

    aget-object v18, v16, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

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

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    if-nez v15, :cond_8

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

    const/16 v18, 0x1

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

    :cond_8
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller3;->mDrawOverlay:Z

    :cond_9
    :goto_5
    return-void

    :cond_a
    add-int/lit8 v7, v12, -0x1

    if-gez v7, :cond_5

    const/4 v7, 0x0

    goto/16 :goto_1

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

    :cond_c
    int-to-float v0, v2

    move/from16 v18, v0

    mul-float v18, v18, p1

    move/from16 v0, v18

    float-to-int v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/htc/widget/HtcListViewCore2;

    move/from16 v18, v0

    if-eqz v18, :cond_d

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

    :goto_6
    const/4 v15, -0x1

    goto/16 :goto_2

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

    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_3

    :cond_f
    sget-object v17, Lcom/htc/widget/HtcFastScroller3;->sSymbol:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

    goto :goto_4

    :cond_10
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller3;->mDrawOverlay:Z

    goto :goto_5
.end method

.method private useOverlayDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/16 v0, 0x2e

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextSize:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextMargin:I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mChangedBounds:Z

    return-void

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextSize:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextMargin:I

    goto :goto_0
.end method

.method private useThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mChangedBounds:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-boolean v10, p0, Lcom/htc/widget/HtcFastScroller3;->draw2_flag:Z

    if-eqz v10, :cond_1

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcFastScroller3;->draw2(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-eqz v10, :cond_0

    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v10}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v7

    iget-object v5, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    const/4 v0, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    invoke-virtual {v5}, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->getAlpha()I

    move-result v0

    const/16 v10, 0x68

    if-ge v0, v10, :cond_2

    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v11, v0, 0x2

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v11, v0, 0x2

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    mul-int/2addr v10, v0

    div-int/lit16 v10, v10, 0xd0

    sub-int v6, v7, v10

    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    iget v12, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    invoke-virtual {v10, v6, v11, v7, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    mul-int/2addr v10, v0

    div-int/lit16 v10, v10, 0xd0

    sub-int v3, v7, v10

    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    iget v12, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    invoke-virtual {v10, v3, v11, v7, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/widget/HtcFastScroller3;->mChangedBounds:Z

    :cond_3
    const/4 v10, 0x0

    int-to-float v11, v9

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

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

    :cond_6
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v10

    const/high16 v11, 0x4000

    add-float v1, v10, v11

    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

    const-string v11, "J"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

    add-int/lit8 v11, v3, 0x1e

    int-to-float v11, v11

    iget v12, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    int-to-float v12, v12

    sub-float/2addr v12, v1

    invoke-virtual {p1, v10, v11, v12, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_1
    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_8

    if-nez v0, :cond_a

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    :cond_8
    :goto_2
    const/4 v10, 0x0

    neg-int v11, v9

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

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

    :cond_a
    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    iget v11, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    if-le v10, v11, :cond_b

    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    :goto_3
    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    iget v11, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    if-le v10, v11, :cond_c

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    :goto_4
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    sub-int v11, v7, v8

    add-int v12, v9, v2

    invoke-virtual {v10, v11, v9, v7, v12}, Lcom/htc/widget/HtcAbsListView2;->invalidate(IIII)V

    goto :goto_2

    :cond_b
    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    goto :goto_3

    :cond_c
    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    goto :goto_4
.end method

.method public draw2(Landroid/graphics/Canvas;)V
    .locals 13

    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v7, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    const/16 v8, 0x14

    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v5

    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    invoke-virtual {v3}, Lcom/htc/widget/HtcFastScroller3$ScrollFade;->getAlpha()I

    move-result v0

    const/16 v9, 0x68

    if-ge v0, v9, :cond_2

    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v10, v0, 0x2

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v10, v0, 0x2

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    mul-int/2addr v9, v0

    div-int/lit16 v9, v9, 0xd0

    sub-int v4, v5, v9

    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    invoke-virtual {v9, v4, v10, v5, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    mul-int/2addr v9, v0

    div-int/lit16 v9, v9, 0xd0

    sub-int v2, v5, v9

    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    iget v11, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    invoke-virtual {v9, v2, v10, v5, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/widget/HtcFastScroller3;->mChangedBounds:Z

    :cond_3
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    :cond_4
    const/4 v9, 0x0

    int-to-float v10, v7

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v9, 0x0

    neg-int v10, v7

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

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

    :cond_7
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionText:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p0, p1, v9, v10, v11}, Lcom/htc/widget/HtcFastScroller3;->draw_center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V

    :cond_8
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    if-nez v0, :cond_9

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x0

    int-to-float v10, v7

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    if-le v9, v10, :cond_a

    iget v6, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    :goto_1
    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    iget v10, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    if-le v9, v10, :cond_b

    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    :goto_2
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    sub-int v10, v5, v6

    add-int v11, v7, v1

    invoke-virtual {v9, v10, v7, v5, v11}, Lcom/htc/widget/HtcAbsListView2;->invalidate(IIII)V

    const/4 v9, 0x0

    neg-int v10, v7

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    const/4 v10, 0x0

    const/16 v11, 0xa

    iget v12, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    add-int/lit8 v12, v12, 0xa

    invoke-virtual {v9, v10, v11, v5, v12}, Lcom/htc/widget/HtcAbsListView2;->invalidate(IIII)V

    goto/16 :goto_0

    :cond_a
    iget v6, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    goto :goto_1

    :cond_b
    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    goto :goto_2
.end method

.method draw_center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v6}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

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

    iget v7, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    if-ge v6, v7, :cond_0

    iget v6, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    sub-int v6, v5, v6

    div-int/lit8 v1, v6, 0x2

    iget v6, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    add-int/2addr v6, v5

    div-int/lit8 v2, v6, 0x2

    :cond_0
    iget-object v6, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v7, 0xa

    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    add-int/lit8 v8, v8, 0xa

    invoke-virtual {v6, v1, v7, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

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

    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextMargin:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    int-to-float v6, v0

    add-int/lit8 v7, v3, 0xa

    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayTextMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, p3, v6, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->getSectionsFromIndexer()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    return v0
.end method

.method isPointInside(FF)Z
    .locals 2

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

    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcFastScroller3;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onScroll(Lcom/htc/widget/HtcAbsListView2;III)V
    .locals 4

    const/4 v2, 0x3

    sub-int v0, p4, p3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    sub-int v1, p4, p3

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    iget-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mChangedBounds:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->resetThumbPos()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mChangedBounds:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollCompleted:Z

    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mVisibleItem:I

    if-ne p2, v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p2, p0, Lcom/htc/widget/HtcFastScroller3;->mVisibleItem:I

    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-eq v0, v2, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method onSizeChanged(IIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcFastScroller3;->mBladePadding:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayW:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayH:I

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/high16 v13, 0x4000

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ne v9, v11, :cond_3

    move v4, v7

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

    :cond_2
    :goto_1
    return v7

    :cond_3
    move v4, v8

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_a

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    div-float/2addr v10, v13

    add-float v0, v9, v10

    :goto_2
    if-eqz v4, :cond_b

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    div-float/2addr v10, v13

    add-float v1, v9, v10

    :goto_3
    if-eqz v2, :cond_5

    const/16 v9, 0x105

    if-ne v2, v9, :cond_c

    :cond_5
    if-nez v4, :cond_6

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcFastScroller3;->isPointInside(FF)Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_6
    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    if-nez v8, :cond_8

    :cond_7
    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionsDirty:Z

    if-eqz v8, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->getSectionsFromIndexer()V

    :cond_9
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->cancelFling()V

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_3

    :cond_c
    if-ne v2, v7, :cond_d

    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-ne v9, v12, :cond_10

    iput-boolean v7, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayFading:Z

    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller3;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_d
    if-ne v2, v11, :cond_10

    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    if-ne v9, v12, :cond_10

    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView2;->getHeight()I

    move-result v6

    float-to-int v8, v1

    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    sub-int/2addr v8, v9

    add-int/lit8 v5, v8, 0xa

    if-gez v5, :cond_f

    const/4 v5, 0x0

    :cond_e
    :goto_4
    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    sub-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-lt v8, v11, :cond_2

    iput v5, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    iput v5, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayY:I

    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollCompleted:Z

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    int-to-float v8, v8

    iget v9, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    sub-int v9, v6, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcFastScroller3;->scrollTo(F)V

    goto/16 :goto_1

    :cond_f
    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    add-int/2addr v8, v5

    if-le v8, v6, :cond_e

    iget v8, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    sub-int v5, v6, v8

    goto :goto_4

    :cond_10
    move v7, v8

    goto/16 :goto_1
.end method

.method public setSectionsDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller3;->mSectionsDirty:Z

    return-void
.end method

.method public setState(I)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2;->invalidate()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcFastScroller3;->mOverlayFading:Z

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->resetThumbPos()V

    :cond_0
    :pswitch_3
    iget v1, p0, Lcom/htc/widget/HtcFastScroller3;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller3;->resetOverlayPos()V

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller3;->mScrollFade:Lcom/htc/widget/HtcFastScroller3$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView2;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller3;->mList:Lcom/htc/widget/HtcAbsListView2;

    iget v2, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    iget v4, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbY:I

    iget v5, p0, Lcom/htc/widget/HtcFastScroller3;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/htc/widget/HtcAbsListView2;->invalidate(IIII)V

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

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFastScroller3;->setState(I)V

    return-void
.end method
