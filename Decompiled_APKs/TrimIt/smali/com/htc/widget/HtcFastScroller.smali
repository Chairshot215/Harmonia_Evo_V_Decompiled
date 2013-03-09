.class public Lcom/htc/widget/HtcFastScroller;
.super Ljava/lang/Object;
.source "HtcFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcFastScroller$ScrollFade;
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

.field protected final mContext:Landroid/content/Context;

.field private mDownCancel:Z

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field private mList:Lcom/htc/widget/HtcAbsListView;

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

.field mRes:Landroid/content/res/Resources;

.field protected mResOverlay:I

.field protected mResOverlay_big:I

.field protected mResThumb:I

.field private mScrollCompleted:Z

.field private mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

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
    .line 108
    const-string v0, "#"

    sput-object v0, Lcom/htc/widget/HtcFastScroller;->sSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/HtcAbsListView;)V
    .locals 3
    .parameter "context"
    .parameter "listView"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v0, 0x68

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mOverlaySize:I

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    .line 96
    iput-boolean v2, p0, Lcom/htc/widget/HtcFastScroller;->mDownCancel:Z

    .line 98
    const v0, 0x20804f8

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mResThumb:I

    .line 99
    const v0, 0x20804f7

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mResOverlay:I

    .line 103
    const v0, 0x2080792

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mResOverlay_big:I

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mPadding:F

    .line 110
    iput-boolean v2, p0, Lcom/htc/widget/HtcFastScroller;->mSectionsDirty:Z

    .line 113
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mBladePadding:I

    .line 114
    iput v1, p0, Lcom/htc/widget/HtcFastScroller;->mBorderHeight:I

    .line 117
    iput v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayPadding:I

    .line 118
    iput v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayMarginTop:I

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->draw2_flag:Z

    .line 122
    iput-object p2, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    .line 123
    iput-object p1, p0, Lcom/htc/widget/HtcFastScroller;->mContext:Landroid/content/Context;

    .line 124
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcFastScroller;->init(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcFastScroller;)Lcom/htc/widget/HtcAbsListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    return-object v0
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 762
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HtcFastScroller;->mDownCancel:Z

    .line 763
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 764
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 765
    iput-boolean v7, p0, Lcom/htc/widget/HtcFastScroller;->mDownCancel:Z

    .line 766
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 767
    return-void
.end method

.method private decideOverlayDrawable(Z)V
    .locals 6
    .parameter "useBigDrawable"

    .prologue
    const/16 v1, 0x9b

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 783
    if-eqz p1, :cond_1

    .line 784
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_0

    .line 785
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mRes:Landroid/content/res/Resources;

    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mResOverlay_big:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/htc/widget/HtcFastScroller;->useOverlayDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 799
    :goto_0
    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mRes:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mContext:Landroid/content/Context;

    const-string v2, "common_scroller_base_big"

    const v3, 0x2080792

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/htc/widget/HtcFastScroller;->useOverlayDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 792
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_2

    .line 793
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mRes:Landroid/content/res/Resources;

    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mResOverlay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/widget/HtcFastScroller;->useOverlayDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 795
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mRes:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mContext:Landroid/content/Context;

    const-string v2, "common_scroller_base"

    const v3, 0x20804f7

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/htc/widget/HtcFastScroller;->useOverlayDrawable(Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 601
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 602
    .local v0, adapter:Landroid/widget/Adapter;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 603
    instance-of v1, v0, Lcom/htc/widget/HtcHeaderViewListAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 604
    check-cast v1, Lcom/htc/widget/HtcHeaderViewListAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcFastScroller;->mListOffset:I

    .line 605
    check-cast v0, Lcom/htc/widget/HtcHeaderViewListAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v0}, Lcom/htc/widget/HtcHeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 617
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_0
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 618
    check-cast v1, Landroid/widget/BaseAdapter;

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 619
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 620
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    .line 626
    :goto_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcFastScroller;->mSectionsDirty:Z

    .line 627
    return-void

    .line 622
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_1
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 623
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, " "

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 235
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 236
    .local v1, res:Landroid/content/res/Resources;
    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mRes:Landroid/content/res/Resources;

    .line 239
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9b

    if-ne v2, v3, :cond_0

    .line 240
    iget v2, p0, Lcom/htc/widget/HtcFastScroller;->mResThumb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcFastScroller;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    :goto_0
    const v2, 0x20500f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFastScroller;->mPadding:F

    .line 261
    const v2, 0x20d0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFastScroller;->mBorderHeight:I

    .line 263
    const v2, 0x20d0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/widget/HtcFastScroller;->mBladePadding:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HtcFastScroller;->mScrollCompleted:Z

    .line 271
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller;->getSectionsFromIndexer()V

    .line 273
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 274
    new-instance v2, Lcom/htc/widget/HtcFastScroller$ScrollFade;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcFastScroller$ScrollFade;-><init>(Lcom/htc/widget/HtcFastScroller;)V

    iput-object v2, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    .line 297
    iput v4, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    .line 298
    iput-boolean v4, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayFading:Z

    .line 299
    return-void

    .line 251
    .restart local v1       #res:Landroid/content/res/Resources;
    :cond_0
    :try_start_1
    const-string v2, "common_scroller_grip"

    const v3, 0x20804f8

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/widget/HtcFastScroller;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 265
    .end local v1           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcFastScroller"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private resetOverlayPos()V
    .locals 6

    .prologue
    .line 173
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v0

    .line 181
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v2, v0, 0x3

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    div-int/lit8 v4, v0, 0x3

    iget v5, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 185
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 186
    return-void
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    .line 165
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v0

    .line 168
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 170
    return-void
.end method

.method private scrollTo(F)V
    .locals 22
    .parameter "position"

    .prologue
    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/widget/HtcAbsListView;->getCount()I

    move-result v2

    .line 635
    .local v2, count:I
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller;->mScrollCompleted:Z

    .line 636
    const/high16 v19, 0x3f80

    int-to-float v0, v2

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x4100

    div-float v7, v19, v20

    .line 637
    .local v7, fThreshold:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 639
    .local v17, sections:[Ljava/lang/Object;
    if-eqz v17, :cond_d

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_d

    .line 640
    move-object/from16 v0, v17

    array-length v9, v0

    .line 641
    .local v9, nSections:I
    int-to-float v0, v9

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v15, v0

    .line 642
    .local v15, section:I
    if-lt v15, v9, :cond_0

    .line 643
    add-int/lit8 v15, v9, -0x1

    .line 645
    :cond_0
    move v3, v15

    .line 646
    .local v3, exactSection:I
    move/from16 v16, v15

    .line 647
    .local v16, sectionIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 654
    .local v8, index:I
    move v10, v2

    .line 655
    .local v10, nextIndex:I
    move v13, v8

    .line 656
    .local v13, prevIndex:I
    move v14, v15

    .line 657
    .local v14, prevSection:I
    add-int/lit8 v12, v15, 0x1

    .line 659
    .local v12, nextSection:I
    add-int/lit8 v19, v9, -0x1

    move/from16 v0, v19

    if-ge v15, v0, :cond_1

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    add-int/lit8 v20, v15, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    .line 664
    :cond_1
    if-ne v10, v8, :cond_3

    .line 666
    :cond_2
    if-lez v15, :cond_3

    .line 667
    add-int/lit8 v15, v15, -0x1

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    .line 669
    if-eq v13, v8, :cond_2

    .line 670
    move v14, v15

    .line 671
    move/from16 v16, v15

    .line 681
    :cond_3
    add-int/lit8 v11, v12, 0x1

    .line 682
    .local v11, nextNextSection:I
    :goto_0
    if-ge v11, v9, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v10, :cond_4

    .line 683
    add-int/lit8 v11, v11, 0x1

    .line 684
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 689
    :cond_4
    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    div-float v6, v19, v20

    .line 690
    .local v6, fPrev:F
    int-to-float v0, v12

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    div-float v5, v19, v20

    .line 691
    .local v5, fNext:F
    if-ne v14, v3, :cond_a

    sub-float v19, p1, v6

    cmpg-float v19, v19, v7

    if-gez v19, :cond_a

    .line 692
    move v8, v13

    .line 705
    :cond_5
    :goto_1
    add-int/lit8 v19, v2, -0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_6

    .line 706
    add-int/lit8 v8, v2, -0x1

    .line 707
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/widget/HtcExpandableListView;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    check-cast v4, Lcom/htc/widget/HtcExpandableListView;

    .line 711
    .local v4, expList:Lcom/htc/widget/HtcExpandableListView;
    invoke-static {v8}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Lcom/htc/widget/HtcExpandableListView;->getFlatListPosition(J)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mBorderHeight:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setSelectionFromTop(II)V

    .line 732
    .end local v3           #exactSection:I
    .end local v4           #expList:Lcom/htc/widget/HtcExpandableListView;
    .end local v5           #fNext:F
    .end local v6           #fPrev:F
    .end local v9           #nSections:I
    .end local v10           #nextIndex:I
    .end local v11           #nextNextSection:I
    .end local v12           #nextSection:I
    .end local v13           #prevIndex:I
    .end local v14           #prevSection:I
    .end local v15           #section:I
    :goto_2
    if-ltz v16, :cond_12

    .line 733
    aget-object v19, v17, v16

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    .line 734
    .local v18, text:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_10

    :cond_7
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller;->mDrawOverlay:Z

    .line 735
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 739
    if-nez v16, :cond_8

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v19

    if-nez v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    add-int/lit8 v20, v16, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v19

    if-nez v19, :cond_11

    .line 745
    const/16 v19, 0x1

    aget-object v19, v17, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .end local v18           #text:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    .line 751
    .restart local v18       #text:Ljava/lang/String;
    :cond_8
    :goto_4
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller;->mDrawOverlay:Z

    .line 758
    .end local v18           #text:Ljava/lang/String;
    :cond_9
    :goto_5
    return-void

    .line 695
    .restart local v3       #exactSection:I
    .restart local v5       #fNext:F
    .restart local v6       #fPrev:F
    .restart local v9       #nSections:I
    .restart local v10       #nextIndex:I
    .restart local v11       #nextNextSection:I
    .restart local v12       #nextSection:I
    .restart local v13       #prevIndex:I
    .restart local v14       #prevSection:I
    .restart local v15       #section:I
    :cond_a
    move v8, v13

    .line 697
    if-gez v8, :cond_5

    .line 698
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 713
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/widget/HtcListViewCore;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/widget/HtcListViewCore;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mBorderHeight:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/htc/widget/HtcListViewCore;->setSelectionFromTop(II)V

    goto/16 :goto_2

    .line 716
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcAbsListView;->setSelection(I)V

    goto/16 :goto_2

    .line 719
    .end local v3           #exactSection:I
    .end local v5           #fNext:F
    .end local v6           #fPrev:F
    .end local v8           #index:I
    .end local v9           #nSections:I
    .end local v10           #nextIndex:I
    .end local v11           #nextNextSection:I
    .end local v12           #nextSection:I
    .end local v13           #prevIndex:I
    .end local v14           #prevSection:I
    .end local v15           #section:I
    .end local v16           #sectionIndex:I
    :cond_d
    int-to-float v0, v2

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v8, v0

    .line 720
    .restart local v8       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/widget/HtcExpandableListView;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    check-cast v4, Lcom/htc/widget/HtcExpandableListView;

    .line 722
    .restart local v4       #expList:Lcom/htc/widget/HtcExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v8

    invoke-static/range {v19 .. v19}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Lcom/htc/widget/HtcExpandableListView;->getFlatListPosition(J)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mBorderHeight:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Lcom/htc/widget/HtcExpandableListView;->setSelectionFromTop(II)V

    .line 729
    .end local v4           #expList:Lcom/htc/widget/HtcExpandableListView;
    :goto_6
    const/16 v16, -0x1

    .restart local v16       #sectionIndex:I
    goto/16 :goto_2

    .line 724
    .end local v16           #sectionIndex:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/htc/widget/HtcListViewCore;

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    check-cast v19, Lcom/htc/widget/HtcListViewCore;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mBorderHeight:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/htc/widget/HtcListViewCore;->setSelectionFromTop(II)V

    goto :goto_6

    .line 727
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcFastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Lcom/htc/widget/HtcAbsListView;->setSelection(I)V

    goto :goto_6

    .line 734
    .restart local v16       #sectionIndex:I
    .restart local v18       #text:Ljava/lang/String;
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 748
    :cond_11
    sget-object v18, Lcom/htc/widget/HtcFastScroller;->sSymbol:Ljava/lang/String;

    .end local v18           #text:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    .restart local v18       #text:Ljava/lang/String;
    goto/16 :goto_4

    .line 756
    .end local v18           #text:Ljava/lang/String;
    :cond_12
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/widget/HtcFastScroller;->mDrawOverlay:Z

    goto/16 :goto_5
.end method

.method private useOverlayDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 4
    .parameter "drawable"
    .parameter "isDrawableBig"

    .prologue
    const/4 v3, 0x1

    .line 196
    iput-object p1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    .line 198
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    .line 202
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 205
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_0

    .line 206
    const v1, 0x20d00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    .line 207
    const v1, 0x20d00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    .line 209
    const v1, 0x20d00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextMargin:I

    .line 210
    const v1, 0x20d00a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextSize:I

    .line 218
    :goto_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    .line 219
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 221
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 222
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    .line 224
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iput-boolean v3, p0, Lcom/htc/widget/HtcFastScroller;->mChangedBounds:Z

    .line 228
    return-void

    .line 212
    :cond_0
    const v1, 0x20d00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    .line 213
    const v1, 0x20d00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    .line 215
    const v1, 0x20d00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextMargin:I

    .line 216
    const v1, 0x20d00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextSize:I

    goto :goto_0
.end method

.method private useThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    .line 191
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mChangedBounds:Z

    .line 193
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 458
    iget-boolean v10, p0, Lcom/htc/widget/HtcFastScroller;->draw2_flag:Z

    if-eqz v10, :cond_1

    .line 459
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcFastScroller;->draw2(Landroid/graphics/Canvas;)V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget v10, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-eqz v10, :cond_0

    .line 468
    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    .line 469
    .local v9, y:I
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v10}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v7

    .line 470
    .local v7, viewWidth:I
    iget-object v5, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    .line 472
    .local v5, scrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;
    const/4 v0, -0x1

    .line 473
    .local v0, alpha:I
    const/4 v6, 0x0

    .line 474
    .local v6, thumbLeft:I
    const/4 v3, 0x0

    .line 475
    .local v3, overlayLeft:I
    iget v10, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    .line 476
    invoke-virtual {v5}, Lcom/htc/widget/HtcFastScroller$ScrollFade;->getAlpha()I

    move-result v0

    .line 477
    const/16 v10, 0x68

    if-ge v0, v10, :cond_2

    .line 478
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v11, v0, 0x2

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 480
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v11, v0, 0x2

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 483
    :cond_2
    iget v10, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    mul-int/2addr v10, v0

    div-int/lit16 v10, v10, 0xd0

    sub-int v6, v7, v10

    .line 484
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    iget v12, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    invoke-virtual {v10, v6, v11, v7, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 487
    iget v10, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    mul-int/2addr v10, v0

    div-int/lit16 v10, v10, 0xd0

    sub-int v3, v7, v10

    .line 488
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    iget v12, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v10, v3, v11, v7, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 490
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/widget/HtcFastScroller;->mChangedBounds:Z

    .line 493
    :cond_3
    const/4 v10, 0x0

    int-to-float v11, v9

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 494
    iget v10, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 495
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 497
    :cond_4
    iget v10, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    iget-boolean v10, p0, Lcom/htc/widget/HtcFastScroller;->mDrawOverlay:Z

    if-nez v10, :cond_6

    :cond_5
    iget v10, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_7

    iget-boolean v10, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayFading:Z

    if-eqz v10, :cond_7

    iget-boolean v10, p0, Lcom/htc/widget/HtcFastScroller;->mDrawOverlay:Z

    if-eqz v10, :cond_7

    .line 498
    :cond_6
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 499
    iget-object v4, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    .line 500
    .local v4, paint:Landroid/graphics/Paint;
    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v10

    const/high16 v11, 0x4000

    add-float v1, v10, v11

    .line 503
    .local v1, descent:F
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    const-string v11, "J"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 506
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    add-int/lit8 v11, v3, 0x1e

    int-to-float v11, v11

    iget v12, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    int-to-float v12, v12

    sub-float/2addr v12, v1

    invoke-virtual {p1, v10, v11, v12, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 511
    .end local v1           #descent:F
    .end local v4           #paint:Landroid/graphics/Paint;
    :cond_7
    :goto_1
    iget v10, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_8

    .line 512
    if-nez v0, :cond_a

    .line 513
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    .line 520
    :cond_8
    :goto_2
    const/4 v10, 0x0

    neg-int v11, v9

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    .line 508
    .restart local v1       #descent:F
    .restart local v4       #paint:Landroid/graphics/Paint;
    :cond_9
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    add-int/lit8 v11, v3, 0x1e

    int-to-float v11, v11

    iget v12, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    int-to-float v12, v12

    sub-float/2addr v12, v1

    iget v13, p0, Lcom/htc/widget/HtcFastScroller;->mPadding:F

    sub-float/2addr v12, v13

    invoke-virtual {p1, v10, v11, v12, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 515
    .end local v1           #descent:F
    .end local v4           #paint:Landroid/graphics/Paint;
    :cond_a
    iget v10, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    iget v11, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    if-le v10, v11, :cond_b

    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    .line 516
    .local v8, w:I
    :goto_3
    iget v10, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    iget v11, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    if-le v10, v11, :cond_c

    iget v2, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    .line 517
    .local v2, h:I
    :goto_4
    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    sub-int v11, v7, v8

    add-int v12, v9, v2

    invoke-virtual {v10, v11, v9, v7, v12}, Lcom/htc/widget/HtcAbsListView;->invalidate(IIII)V

    goto :goto_2

    .line 515
    .end local v2           #h:I
    .end local v8           #w:I
    :cond_b
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    goto :goto_3

    .line 516
    .restart local v8       #w:I
    :cond_c
    iget v2, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    goto :goto_4
.end method

.method public draw2(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 366
    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-nez v9, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget v7, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    .line 371
    .local v7, y:I
    const/16 v8, 0x14

    .line 372
    .local v8, y2:I
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v9}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v5

    .line 373
    .local v5, viewWidth:I
    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    .line 374
    .local v3, scrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;
    const/4 v0, -0x1

    .line 375
    .local v0, alpha:I
    const/4 v4, 0x0

    .line 376
    .local v4, thumbLeft:I
    const/4 v2, 0x0

    .line 377
    .local v2, overlayLeft:I
    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 378
    invoke-virtual {v3}, Lcom/htc/widget/HtcFastScroller$ScrollFade;->getAlpha()I

    move-result v0

    .line 379
    const/16 v9, 0x68

    if-ge v0, v9, :cond_2

    .line 380
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v10, v0, 0x2

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 381
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_2

    .line 382
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v10, v0, 0x2

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 395
    :cond_2
    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    .line 397
    :cond_3
    const/4 v9, 0x0

    int-to-float v10, v7

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 398
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 399
    const/4 v9, 0x0

    neg-int v10, v7

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 401
    :cond_4
    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    iget-boolean v9, p0, Lcom/htc/widget/HtcFastScroller;->mDrawOverlay:Z

    if-nez v9, :cond_6

    :cond_5
    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_7

    iget-boolean v9, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayFading:Z

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/htc/widget/HtcFastScroller;->mDrawOverlay:Z

    if-eqz v9, :cond_7

    .line 420
    :cond_6
    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_7

    .line 424
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 425
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/htc/widget/HtcFastScroller;->decideOverlayDrawable(Z)V

    .line 430
    :goto_1
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/htc/widget/HtcFastScroller;->mSectionText:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p0, p1, v9, v10, v11}, Lcom/htc/widget/HtcFastScroller;->draw_center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 436
    :cond_7
    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    .line 437
    if-nez v0, :cond_9

    .line 438
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    goto/16 :goto_0

    .line 427
    :cond_8
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/htc/widget/HtcFastScroller;->decideOverlayDrawable(Z)V

    goto :goto_1

    .line 440
    :cond_9
    const/4 v9, 0x0

    int-to-float v10, v7

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 441
    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    iget v10, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    if-le v9, v10, :cond_a

    iget v6, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    .line 442
    .local v6, w:I
    :goto_2
    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    iget v10, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    if-le v9, v10, :cond_b

    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    .line 443
    .local v1, h:I
    :goto_3
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    sub-int v10, v5, v6

    add-int v11, v7, v1

    invoke-virtual {v9, v10, v7, v5, v11}, Lcom/htc/widget/HtcAbsListView;->invalidate(IIII)V

    .line 444
    const/4 v9, 0x0

    neg-int v10, v7

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 446
    iget-object v9, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    const/4 v10, 0x0

    const/16 v11, 0xa

    iget v12, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    add-int/lit8 v12, v12, 0xa

    invoke-virtual {v9, v10, v11, v5, v12}, Lcom/htc/widget/HtcAbsListView;->invalidate(IIII)V

    goto/16 :goto_0

    .line 441
    .end local v1           #h:I
    .end local v6           #w:I
    :cond_a
    iget v6, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    goto :goto_2

    .line 442
    .restart local v6       #w:I
    :cond_b
    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    goto :goto_3
.end method

.method draw_center(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 16
    .parameter "canvas"
    .parameter "paint"
    .parameter "text"
    .parameter "bounds"

    .prologue
    .line 320
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v12}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v11

    .line 321
    .local v11, viewWidth:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v12}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v10

    .line 324
    .local v10, viewHeight:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 325
    .local v9, textbounds:Landroid/graphics/Rect;
    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12, v13, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 326
    if-nez p4, :cond_2

    .line 327
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int v12, v11, v12

    div-int/lit8 v6, v12, 0x2

    .line 328
    .local v6, px_left:I
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    add-int v7, v6, v12

    .line 330
    .local v7, px_right:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    sub-int v12, v11, v12

    div-int/lit8 v3, v12, 0x2

    .line 331
    .local v3, d_left:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    add-int v4, v3, v12

    .line 333
    .local v4, d_right:I
    sub-int v12, v7, v6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    if-ge v12, v13, :cond_0

    .line 334
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    sub-int v12, v11, v12

    div-int/lit8 v6, v12, 0x2

    .line 335
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    add-int/2addr v12, v11

    div-int/lit8 v7, v12, 0x2

    .line 342
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v13, v10, 0x3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    div-int/lit8 v14, v10, 0x3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    invoke-virtual {v12, v3, v13, v4, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 346
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 348
    :cond_1
    new-instance p4, Landroid/graphics/Rect;

    .end local p4
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v14

    move-object/from16 v0, p4

    invoke-direct {v0, v12, v13, v11, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 350
    .end local v3           #d_left:I
    .end local v4           #d_right:I
    .end local v6           #px_left:I
    .end local v7           #px_right:I
    .restart local p4
    :cond_2
    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    iget v13, v9, Landroid/graphics/Rect;->left:I

    sub-int v5, v12, v13

    .line 351
    .local v5, px:I
    move-object/from16 v0, p4

    iget v12, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    iget v13, v9, Landroid/graphics/Rect;->top:I

    sub-int v8, v12, v13

    .line 355
    .local v8, py:I
    add-int/lit8 v12, v5, -0x1

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextMargin:I

    add-int/2addr v13, v8

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v14, v10, 0x3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 356
    int-to-float v12, v5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayTextMargin:I

    add-int/2addr v13, v8

    div-int/lit8 v14, v10, 0x3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v12, v13, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 359
    return-void
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    if-eqz v0, :cond_0

    .line 595
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller;->getSectionsFromIndexer()V

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    return v0
.end method

.method isPointInside(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x19

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

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
    .line 306
    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

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
    .line 770
    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 773
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    .line 775
    const/4 v0, 0x1

    .line 778
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v2, 0x3

    .line 567
    sub-int v0, p4, p3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-eq v0, v2, :cond_0

    .line 568
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    sub-int v1, p4, p3

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    .line 569
    iget-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mChangedBounds:Z

    if-eqz v0, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller;->resetThumbPos()V

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mChangedBounds:Z

    .line 574
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mScrollCompleted:Z

    .line 575
    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mVisibleItem:I

    if-ne p2, v0, :cond_2

    .line 583
    :cond_1
    :goto_0
    return-void

    .line 578
    :cond_2
    iput p2, p0, Lcom/htc/widget/HtcFastScroller;->mVisibleItem:I

    .line 579
    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-eq v0, v2, :cond_1

    .line 580
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    .line 581
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 631
    return-void
.end method

.method onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, 0x0

    .line 541
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    invoke-virtual {v0, v1, v4, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 551
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcFastScroller;->mBladePadding:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    .line 554
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v1, p1, 0x2

    iget v2, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v2, p1, 0x2

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayW:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 563
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

    .line 805
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 806
    .local v2, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ne v9, v11, :cond_1

    move v4, v7

    .line 813
    .local v4, is2Point:Z
    :goto_0
    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-nez v9, :cond_2

    if-nez v4, :cond_2

    move v7, v8

    .line 867
    :cond_0
    :goto_1
    return v7

    .end local v4           #is2Point:Z
    :cond_1
    move v4, v8

    .line 806
    goto :goto_0

    .line 819
    .restart local v4       #is2Point:Z
    :cond_2
    if-eqz v4, :cond_9

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v9, v10

    div-float v0, v9, v13

    .line 820
    .local v0, X:F
    :goto_2
    if-eqz v4, :cond_a

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v9, v10

    div-float v1, v9, v13

    .line 822
    .local v1, Y:F
    :goto_3
    if-eqz v2, :cond_3

    const/16 v9, 0x105

    if-ne v2, v9, :cond_b

    .line 823
    :cond_3
    if-nez v4, :cond_4

    invoke-virtual {p0, v0, v1}, Lcom/htc/widget/HtcFastScroller;->isPointInside(FF)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 824
    :cond_4
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-nez v8, :cond_5

    .line 825
    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    .line 827
    :cond_5
    invoke-virtual {p0, v12}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    .line 828
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    if-nez v8, :cond_7

    :cond_6
    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller;->mSectionsDirty:Z

    if-eqz v8, :cond_8

    .line 829
    :cond_7
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller;->getSectionsFromIndexer()V

    .line 832
    :cond_8
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller;->cancelFling()V

    goto :goto_1

    .line 819
    .end local v0           #X:F
    .end local v1           #Y:F
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_2

    .line 820
    .restart local v0       #X:F
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_3

    .line 835
    .restart local v1       #Y:F
    :cond_b
    if-eq v2, v7, :cond_c

    if-ne v2, v12, :cond_d

    iget-boolean v9, p0, Lcom/htc/widget/HtcFastScroller;->mDownCancel:Z

    if-nez v9, :cond_d

    .line 837
    :cond_c
    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-ne v9, v12, :cond_10

    .line 838
    iput-boolean v7, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayFading:Z

    .line 839
    invoke-virtual {p0, v11}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    .line 840
    iget-object v3, p0, Lcom/htc/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    .line 841
    .local v3, handler:Landroid/os/Handler;
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 842
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    const-wide/16 v9, 0x320

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 845
    .end local v3           #handler:Landroid/os/Handler;
    :cond_d
    if-ne v2, v11, :cond_10

    .line 846
    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    if-ne v9, v12, :cond_10

    .line 847
    iget-object v8, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAbsListView;->getHeight()I

    move-result v6

    .line 849
    .local v6, viewHeight:I
    float-to-int v8, v1

    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    sub-int/2addr v8, v9

    add-int/lit8 v5, v8, 0xa

    .line 850
    .local v5, newThumbY:I
    if-gez v5, :cond_f

    .line 851
    const/4 v5, 0x0

    .line 855
    :cond_e
    :goto_4
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    sub-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-lt v8, v11, :cond_0

    .line 858
    iput v5, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    .line 861
    iget-boolean v8, p0, Lcom/htc/widget/HtcFastScroller;->mScrollCompleted:Z

    if-eqz v8, :cond_0

    .line 862
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    int-to-float v8, v8

    iget v9, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    sub-int v9, v6, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcFastScroller;->scrollTo(F)V

    goto/16 :goto_1

    .line 852
    :cond_f
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    add-int/2addr v8, v5

    if-le v8, v6, :cond_e

    .line 853
    iget v8, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    sub-int v5, v6, v8

    goto :goto_4

    .end local v5           #newThumbY:I
    .end local v6           #viewHeight:I
    :cond_10
    move v7, v8

    .line 867
    goto/16 :goto_1
.end method

.method public setSectionsDirty()V
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcFastScroller;->mSectionsDirty:Z

    .line 587
    return-void
.end method

.method public setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 157
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    .line 158
    return-void

    .line 130
    :pswitch_1
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView;->invalidate()V

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayFading:Z

    goto :goto_0

    .line 135
    :pswitch_2
    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller;->resetThumbPos()V

    .line 140
    :cond_0
    :pswitch_3
    iget v1, p0, Lcom/htc/widget/HtcFastScroller;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 141
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/htc/widget/HtcFastScroller;->resetOverlayPos()V

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/widget/HtcFastScroller;->mScrollFade:Lcom/htc/widget/HtcFastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 147
    :pswitch_4
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAbsListView;->getWidth()I

    move-result v0

    .line 153
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/htc/widget/HtcFastScroller;->mList:Lcom/htc/widget/HtcAbsListView;

    iget v2, p0, Lcom/htc/widget/HtcFastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    iget v4, p0, Lcom/htc/widget/HtcFastScroller;->mThumbY:I

    iget v5, p0, Lcom/htc/widget/HtcFastScroller;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/htc/widget/HtcAbsListView;->invalidate(IIII)V

    goto :goto_0

    .line 128
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
    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcFastScroller;->setState(I)V

    .line 303
    return-void
.end method
