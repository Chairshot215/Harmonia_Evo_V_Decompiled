.class public Lcom/htc/sunny2/widget/gridview/HtcFastScroller;
.super Ljava/lang/Object;
.source "HtcFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;
    }
.end annotation


# static fields
.field public static final STATE_DRAGGING:I = 0x3

.field public static final STATE_ENTER:I = 0x1

.field public static final STATE_EXIT:I = 0x4

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_VISIBLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcFastScroller"

.field static sSymbol:Ljava/lang/String;


# instance fields
.field private mBladePadding:I

.field private mBorderHeight:I

.field private mChangedBounds:Z

.field private mDrawOverlay:Z

.field private mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

.field private mHandler:Lcom/htc/sunny2/RenderThreadHandler;

.field private mListOffset:I

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayFading:Z

.field private mOverlayH:I

.field private final mOverlayMarginTop:I

.field private final mOverlayPadding:I

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlaySize:I

.field mOverlaySprite:Lcom/htc/sunny2/Sprite;

.field private mOverlayTextMargin:I

.field private mOverlayTextSize:I

.field mOverlayTexture:Lcom/htc/sunny2/Texture;

.field private mOverlayW:I

.field private mOverlayY:I

.field private mPadding:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintShadow:Landroid/graphics/Paint;

.field mParentSceneNode:Lcom/htc/sunny2/SceneNode;

.field protected mResOverlay:I

.field protected mResThumb:I

.field private mScrollCompleted:Z

.field private mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mSectionsDirty:Z

.field mSizeChangeProcessed:Z

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbH:I

.field mThumbSprite:Lcom/htc/sunny2/Sprite;

.field mThumbTexture:Lcom/htc/sunny2/Texture;

.field private mThumbW:I

.field private mThumbY:I

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#"

    sput-object v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->sSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/widget/gridview/GridView;Lcom/htc/sunny2/RenderThread;Lcom/htc/sunny2/SceneNode;)V
    .locals 2

    const/16 v1, 0xa

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x68

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySize:I

    const v0, 0x20804f8

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResThumb:I

    const v0, 0x20804f7

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResOverlay:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPadding:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionsDirty:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mBladePadding:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mBorderHeight:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayPadding:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayMarginTop:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-direct {p0, p1, p3, p4}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->init(Landroid/content/Context;Lcom/htc/sunny2/RenderThread;Lcom/htc/sunny2/SceneNode;)V

    return-void
.end method

.method private cancelFling()V
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0, v8, v7}, Lcom/htc/sunny2/widget/gridview/GridView;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private getSectionsFromIndexer()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSections:[Ljava/lang/Object;

    :goto_0
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionsDirty:Z

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, " "

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Lcom/htc/sunny2/RenderThread;Lcom/htc/sunny2/SceneNode;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x9b

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResThumb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mResOverlay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->useOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const v2, 0x20500f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPadding:F

    const v2, 0x20d0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mBorderHeight:I

    const v2, 0x20d0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mBladePadding:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-boolean v5, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollCompleted:Z

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->getSectionsFromIndexer()V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    new-instance v2, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    invoke-direct {v2, p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;-><init>(Lcom/htc/sunny2/widget/gridview/HtcFastScroller;)V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    iput-boolean v4, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayFading:Z

    iput-object p3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mParentSceneNode:Lcom/htc/sunny2/SceneNode;

    new-instance v2, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$1;

    const-string v3, "HtcFastScroller"

    invoke-direct {v2, p0, p1, v3, p2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$1;-><init>(Lcom/htc/sunny2/widget/gridview/HtcFastScroller;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    return-void

    :cond_0
    :try_start_1
    const-string v2, "common_scroller_grip"

    const v3, 0x20804f8

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v2, "common_scroller_base"

    const v3, 0x20804f7

    invoke-static {p1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->useOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HtcFastScroller"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private resetOverlayPos()V
    .locals 6

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v2, v0, 0x2

    iget v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private resetThumbPos()V
    .locals 5

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int v2, v0, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private scrollTo(F)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/sunny2/widget/gridview/GridView;->getCount()I

    move-result v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollCompleted:Z

    const/high16 v18, 0x3f80

    int-to-float v0, v2

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x4100

    div-float v6, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_b

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

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

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

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

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

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

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

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

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

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(I)V

    :goto_2
    if-ltz v15, :cond_e

    aget-object v18, v16, v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

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

    if-eq v0, v1, :cond_c

    :cond_7
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_c

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mDrawOverlay:Z

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v18

    if-nez v18, :cond_d

    const/16 v18, 0x1

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    :cond_8
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mDrawOverlay:Z

    :cond_9
    :goto_5
    return-void

    :cond_a
    add-int/lit8 v7, v12, -0x1

    if-gez v7, :cond_5

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_b
    int-to-float v0, v2

    move/from16 v18, v0

    mul-float v18, v18, p1

    move/from16 v0, v18

    float-to-int v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/htc/sunny2/widget/gridview/GridView;->setSelection(I)V

    const/4 v15, -0x1

    goto/16 :goto_2

    :cond_c
    const/16 v18, 0x0

    goto :goto_3

    :cond_d
    sget-object v17, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->sSymbol:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    goto :goto_4

    :cond_e
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mDrawOverlay:Z

    goto :goto_5
.end method

.method private useOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    const/16 v0, 0x2e

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mChangedBounds:Z

    return-void

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextSize:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    goto :goto_0
.end method

.method private useThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mChangedBounds:Z

    return-void
.end method


# virtual methods
.method destroy(Lcom/htc/sunny2/SceneNode;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThreadHandler;->release()V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/SceneNode;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunny2/Texture;

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/SceneNode;->removeSprite(Lcom/htc/sunny2/Sprite;)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    :cond_4
    return-void
.end method

.method public drawIRT(ILcom/htc/sunny2/SceneNode;)V
    .locals 22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->getAdjHostHight()I

    move-result v19

    div-int/lit8 v2, v19, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v3, v3, 0x2

    sub-int v21, v2, v3

    const/4 v2, 0x1

    move/from16 v0, v20

    if-lt v0, v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, v19

    if-lt v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunny2/Texture;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    if-nez v2, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunny2/Texture;

    if-nez v2, :cond_10

    invoke-static {v8}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunny2/Texture;

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    if-nez v2, :cond_3

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/SceneNode;->addSprite(Lcom/htc/sunny2/Sprite;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    if-nez v2, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    if-nez v2, :cond_11

    invoke-static {v8}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    if-nez v2, :cond_6

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/SceneNode;->addSprite(Lcom/htc/sunny2/Sprite;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v1

    move/from16 v0, v20

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    div-int/lit8 v3, v20, 0x2

    int-to-float v3, v3

    move/from16 v0, v21

    neg-int v4, v0

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    if-nez v2, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    move-object/from16 v16, v0

    const/4 v7, -0x1

    const/16 v18, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;->getAlpha()I

    move-result v7

    const/16 v2, 0x68

    if-ge v7, v2, :cond_9

    mul-int/lit8 v2, v7, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x4350

    div-float/2addr v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/SceneNode;->setAlpha(F)V

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    :cond_a
    const/high16 v2, 0x3f80

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/SceneNode;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int v3, v20, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbY:I

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mDrawOverlay:Z

    if-nez v2, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayFading:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mDrawOverlay:Z

    if-eqz v2, :cond_f

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    const/4 v9, 0x0

    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    if-nez v9, :cond_f

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v20, v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v13, v2, -0xa

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v13

    add-int/lit8 v14, v2, 0x14

    sub-int v2, v14, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    if-ge v2, v3, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    sub-int v2, v20, v2

    div-int/lit8 v13, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    add-int v2, v2, v20

    div-int/lit8 v14, v2, 0x2

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sub-int v5, v14, v13

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int v2, v14, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v9, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sub-int v4, v14, v13

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v9, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v2, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v12, v2, v3

    iget v2, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v15, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    add-int/lit8 v3, v12, -0x1

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    add-int/2addr v4, v15

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionText:Ljava/lang/String;

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTextMargin:I

    add-int/2addr v4, v15

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v8}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlaySprite:Lcom/htc/sunny2/Sprite;

    sub-int v3, v14, v13

    int-to-float v3, v3

    move/from16 v0, v20

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    if-nez v7, :cond_12

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v8}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v8}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const v3, -0xffffff

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/RenderThreadHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const v3, -0xffffff

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessageDelayed(II)V

    goto/16 :goto_0
.end method

.method getAdjHostHight()I
    .locals 3

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingBottom()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->getSectionsFromIndexer()V

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    return v0
.end method

.method isPointInside(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/GridView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbY:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x19

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbY:I

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

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

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

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

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onScroll(Lcom/htc/sunny2/widget/gridview/GridView;III)V
    .locals 4

    const/4 v2, 0x3

    sub-int v0, p4, p3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->getAdjHostHight()I

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    sub-int/2addr v0, v1

    mul-int/2addr v0, p2

    sub-int v1, p4, p3

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbY:I

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mChangedBounds:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->resetThumbPos()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mChangedBounds:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollCompleted:Z

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mVisibleItem:I

    if-ne p2, v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mVisibleItem:I

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    if-eq v0, v2, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/RenderThreadHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method onSizeChanged(IIII)V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSizeChangeProcessed:Z

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbW:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mBladePadding:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayW:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayH:I

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    const/4 v4, 0x1

    :goto_0
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    if-nez v8, :cond_1

    if-nez v4, :cond_1

    const/4 v8, 0x0

    :goto_1
    return v8

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_7

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float v0, v8, v9

    :goto_2
    if-eqz v4, :cond_8

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float v1, v8, v9

    :goto_3
    if-eqz v2, :cond_2

    const/16 v8, 0x105

    if-ne v2, v8, :cond_9

    :cond_2
    if-nez v4, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->isPointInside(FF)Z

    move-result v8

    if-eqz v8, :cond_f

    :cond_3
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    if-nez v8, :cond_4

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    :cond_4
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionsDirty:Z

    if-eqz v8, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->getSectionsFromIndexer()V

    :cond_6
    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->cancelFling()V

    const/4 v8, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    goto :goto_3

    :cond_9
    const/4 v8, 0x1

    if-ne v2, v8, :cond_a

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_f

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayFading:Z

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    invoke-virtual {v3, v8}, Lcom/htc/sunny2/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    const-wide/16 v9, 0x320

    invoke-virtual {v3, v8, v9, v10}, Lcom/htc/sunny2/RenderThreadHandler;->postDelayed(Ljava/lang/Runnable;J)V

    const/4 v8, 0x1

    goto :goto_1

    :cond_a
    const/4 v8, 0x2

    if-ne v2, v8, :cond_f

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_f

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->getAdjHostHight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mGridView:Lcom/htc/sunny2/widget/gridview/GridView;

    invoke-virtual {v8}, Lcom/htc/sunny2/widget/gridview/GridView;->getPaddingTop()I

    move-result v6

    float-to-int v8, v1

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    sub-int/2addr v8, v9

    add-int/lit8 v5, v8, 0xa

    add-int/lit8 v8, v6, 0x0

    if-ge v5, v8, :cond_c

    add-int/lit8 v5, v6, 0x0

    :cond_b
    :goto_4
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbY:I

    sub-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_d

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_c
    iget v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    add-int/2addr v8, v5

    add-int v9, v7, v6

    if-le v8, v9, :cond_b

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    sub-int v8, v7, v8

    add-int v5, v8, v6

    goto :goto_4

    :cond_d
    iput v5, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbY:I

    iget-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollCompleted:Z

    if-eqz v8, :cond_e

    iget v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbY:I

    sub-int/2addr v8, v6

    int-to-float v8, v8

    iget v9, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mThumbH:I

    sub-int v9, v7, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-direct {p0, v8}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->scrollTo(F)V

    :cond_e
    iget-object v8, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const v9, -0xffffff

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(I)V

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method public setSectionsDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mSectionsDirty:Z

    return-void
.end method

.method public setState(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    const v1, -0xffffff

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->sendEmptyMessage(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mOverlayFading:Z

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->resetThumbPos()V

    :cond_0
    :pswitch_3
    iget v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->resetOverlayPos()V

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mHandler:Lcom/htc/sunny2/RenderThreadHandler;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->mScrollFade:Lcom/htc/sunny2/widget/gridview/HtcFastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/gridview/HtcFastScroller;->setState(I)V

    return-void
.end method
